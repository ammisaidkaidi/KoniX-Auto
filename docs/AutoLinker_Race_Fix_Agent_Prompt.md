# Prompt for the fixing agent — copy everything below the line

---

You are working on **AutoLinker**, a repackaged Google Android Auto embedded projection receiver
(package `com.google.android.embedded.projection`, version `1.0.413336740-release`).
The project is a decompiled APK (jadx Java + smali). Google's code is obfuscated: the jadx names
below are the real class names in this build, with the original class name in parentheses.
Custom tweak code lives in `classes3.dex` under `com/achour/tweaks/` (`NativeLib`, `P`, `Bt`, `Bubble`)
plus heavy patches inside `com/google/android/apps/auto/aareceiver/compat/CarCompat.java`.

## The bug

When a phone is connected by **USB and wireless at the same time**, the two connection paths race
and the projection session never establishes. Each transport alone works fine.

## Root causes (already diagnosed from the code — verify, don't re-derive)

1. **Session creation has no lock and no existence check.**
   Both triggers converge on `AndroidAutoHeadunitActivity.t()` → `q()` →
   `defpackage.azy.d(Context, awp, awo, int, int, boolean)`
   (`AndroidAutoHeadunitProjectionHandler.init`). That method unconditionally executes
   `new bbl(...)` (`session/ProjectionSession`) — a new session **and** a new `GalReceiver` —
   every time it is called. It never checks whether a session already exists or is starting.
   `DeviceTracker` (`defpackage.bah`, field `h` = current session) is overwritten unconditionally
   in the `onProjectionStarted` callback registered inside `azy.d()`
   (`bahVar2.h = bblVar2;`), while `onProjectionFinished` *does* identity-check. Asymmetric and racy.

2. **A wireless session actively destroys a concurrent USB session.**
   In the transport-opening code inside `azy.d()` (`ProjectionSession.openTransport`):
   ```java
   UsbDevice a6 = beh.a(bblVar.f, bblVar.h);            // UsbUtils: same phone on USB?
   if (bblVar.g == awp.WIRELESS && a6 != null) {
       beh.e(bblVar.f, a6);                            // UsbUtils.resetUsbDevice():
   }                                                   // releaseInterface + resetDevice + close
   ```
   If a USB session is mid-handshake at that moment, its transport is reset under it and dies.
   The reset also fires `UsbDetachedReceiver` (`defpackage.bec`, `maybeRestartProjection`),
   which can auto-launch a wireless session again → USB↔wireless ping-pong.

3. **Shared singleton resources are fought over by both sessions.**
   `WirelessSocketProvider` (`defpackage.bdu`) owns a single `ServerSocket` (ephemeral port).
   The wireless transport factory (`defpackage.cme`) spawns one accept thread (`defpackage.cmc`,
   "TCP server") **per session** on that same socket, so the phone's single incoming TCP
   connection can be accepted by the wrong (stale/cancelled) session's thread.
   `openTransport` also arms a 25-second `postDelayed` that cancels the session's
   `transportFuture` ("Cancelling transportFuture"), and a losing session's teardown
   (`defpackage.clq`) shuts down the shared transport factories and unregisters the shared
   USB broadcast receiver — disturbing the winning session.

4. **Existing tweak guards cover the wrong layer.**
   `CarCompat` already has `isWirelessStartRecentlyActive()` (18 s window),
   `sAutoLaunchPending` / `sWaitLoopRunning` CAS flags, and `com.achour.tweaks.P.allowAutoLaunch()`
   suppression — but all of these only guard the tweak's own auto-launch/nudge paths.
   Google's session-init path (`azy.d`) never consults them. The 18 s window is also shorter
   than the 25 s transport timeout.

## Your task — implement the fix

**Fix 1 — Single-session gate at the only creation point (mandatory).**
In `azy.d(...)` (smali: `defpackage/azy`), before `new bbl(...)`:
- Add a static `AtomicBoolean` (e.g. `sSessionStarting`) and gate entry with
  `compareAndSet(false, true)`. If the CAS fails, log and **return without creating anything**.
- Also return early if `DeviceTracker.h` (`azy.i.h`, i.e. `bah.h`) is non-null (a session is
  already active) — unless the existing session is in a terminal/error state.
- Release the flag in BOTH callbacks already registered in `d()`: `onProjectionStarted`
  (session is now the tracked one) and `onDestroy`/`onProjectionFinished` (session ended),
  and on every early-return/exception path after the CAS succeeds. No path may leave the
  flag stuck at `true`, or no session will ever start again.
- Log with tag `AATweaks`, e.g. `"session gate: blocked duplicate init (transport=X)"`.

**Fix 2 — Deterministic priority: USB wins when the cable is present.**
- In the wireless start path (`AndroidAutoHeadunitActivity.t()` WIRELESS branch and/or
  `defpackage.awh.k(...)` — WirelessDiscoveryController), before starting a wireless session,
  if `CarCompat.hasConnectedUsbPhone(context)` is true, skip the wireless start and log it.
- In `openTransport`, guard the USB reset: only call `beh.e(...)` (resetUsbDevice) when no
  USB session is starting or active. Reuse the Fix 1 gate state / `DeviceTracker` to decide.
  If in doubt, skip the reset — a missed reset is recoverable, a mid-handshake reset is not.

**Fix 3 — One accept thread for the shared ServerSocket.**
In `defpackage.cme`: keep a reference to the running accept thread/handle; when a new
`b(...)` call comes in while a previous accept is still pending, interrupt/close the previous
one first (its `cmh.a()` must interrupt the `cmc` thread). Never allow two `cmc` threads
blocked in `accept()` on the same socket for two different sessions.

**Fix 4 — Align the guard windows.**
Change the "recently active" window in `CarCompat.isWirelessStartRecentlyActive()` from
18 s to **40 s** (must exceed the 25 s transport timeout + AP startup). Add the symmetric
check for USB: record a timestamp in the USB start path (`onUsbStartRequested`-style,
next to `CarCompat.onWirelessStartRequested()` at `sWirelessStartTimestampMs`) and consult
`isUsbStartRecentlyActive()` in the wireless start path from Fix 2.

## Constraints — do not break these

- Do **not** modify: the `GalReceiver` static block (`com.achour.tweaks.NativeLib.load()`),
  the XOR credential decoding (`defpackage.aww`/`awx`/`atz`), or the `/system/etc/aar`
  `c1`/`p1` certificate override. Authentication must keep working exactly as-is.
- Do **not** remove or weaken `P.allowAutoLaunch()` suppression, the quick-drop quiet period
  (`P.onRfcommDown`, 2 drops < 20 s → 5 min quiet), or the `P.usb()` / `P.wifi()` user toggles
  from the Bubble panel. The gate must respect them.
- Keep every existing public method signature. Work in smali where the class is Google code;
  mind register counts and `.locals` when inserting calls.
- Single-phone, single-session design: do not attempt to support two simultaneous sessions.
  The correct behavior is *first valid trigger wins, the other is cleanly ignored*.

## Verify your work

Rebuild, sign, install, and test all four scenarios on a real head unit + phone:
1. USB only → connects (regression check).
2. Wireless only → connects (regression check).
3. Wireless already connected, then plug USB → exactly one session survives, no reconnect loop.
4. USB connected, then wireless triggers (BT auto-connect) → USB session survives untouched.

Pass criteria in `logcat` (tags: `AATweaks`, `AHU.TRANSPORT_FACTORY`, `AHU.TCP_CONNECTION`,
`AHU.GAL_RECEIVER`, `AndroidAutoHeadunitProjectionHandler`):
- `sessionsCreated` (in `azy` dump / `azw` counters) increments **exactly once** per scenario 3–4.
- The gate log line appears for the losing trigger.
- **No** `resetUsbDevice` during an active/starting USB session.
- **No** `Cancelling transportFuture` for the winning session, no repeated
  `maybeRestartProjection` loop in `UsbDetachedReceiver`.

## Deliverable

Report: (a) each file/smali class you changed and why, (b) the gate's state machine in 5 lines
(idle → starting → active → released, and every release path), (c) logcat excerpts proving
scenarios 3 and 4 pass, (d) anything you found that contradicts the diagnosis above.
