# AutoLinker — Apply order: race gate FIRST, then unlock-all, then verify both

Why this order matters now: the unlock-all patch delivered 2026-11-24 turns ON
flag "9" + 45356796 (wireless auto-reconnect + auto-restart after ping timeout).
Those add restart paths to the USB/wireless race. Applying unlock-all without the
single-session gate first will make the race worse, not better.

## Order

1. **Race gate first (azy.d, Fix 1 — non-negotiable).**
   Single-session gate in `AndroidAutoHeadunitProjectionHandler.init` (azy.d):
   AtomicBoolean CAS + `bah.h != null` early return, released on
   onProjectionStarted / onProjectionFinished / onDestroy.
   Do not start step 2 until the separate agent returns this build, or apply
   both patch sets to the same build together.
2. **Unlock-all Part A + B** — 23 flag flips + code patches (bcb, bcm, OemSettingsImpl,
   UsbUtils, MediaBrowserService). Skip B.7 (permission-gate bypass in q()) —
   Part C is the correct unlock for it.
3. **Smoke test** — app starts, one session connects (USB only, then wireless only).
4. **Unlock-all Part C** — priv-app install + privapp-permissions XML (22 permissions),
   reboot, then `dumpsys package com.google.android.embedded.projection | grep -A2 granted`.
5. **Verify both together** (below) — do not treat unlock checks as passed until the
   race checks in scenarios 3–4 also pass.

## Race verification (logcat)

```
adb logcat -c
adb logcat -s AATweaks AHU.TRANSPORT_FACTORY AHU.TCP_CONNECTION AHU.GAL_RECEIVER AndroidAutoHeadunitProjectionHandler
adb logcat -d | grep -E "session gate|resetUsbDevice|Cancelling transportFuture|maybeRestartProjection|sessionsCreated"
```

Scenarios in order: (1) USB only, (2) wireless only, (3) wireless connected then
plug USB, (4) USB connected then wireless triggers. Pass = `sessionsCreated`
exactly once in 3–4, gate line for the loser, no `resetUsbDevice` during an
active/starting USB session, no `Cancelling transportFuture` for the winner,
no repeated `maybeRestartProjection` loop.
Full detail: `AutoLinker_Race_Fix_Test_Checklist.md`.

If it still fails: note whether the gate line fired at all — absent = gate missing;
fired but session died = shared WirelessSocketProvider accept thread or clq teardown.
Workaround until fixed: disable one transport from the Bubble panel (`P.usb()` / `P.wifi()`).

## Unlock verification

- [ ] Settings → tap Version: counter toasts appear on a `user` build; Developer
      category visible, including Launch mode row (flag "9" proof).
- [ ] Wireless connection: Cancel button visible in WaitingForConnectionActivity
      (flag "15" proof); tapping it cancels cleanly.
- [ ] Kill Wi-Fi mid-session: session auto-restarts with
      `ProjectionStartReason.AUTOMATIC_RESTART` (flag 45356796 proof).
- [ ] dumpsys PersistentService prints `PhenotypeExperiments:` with flipped values
      (flag 45356776 proof).
- [ ] With `com.android.car.projection.DISABLED` set to `*|*|*` by hand: USB and
      wireless still start (B.3 proof).
- [ ] After Part C: privileged permissions granted in dumpsys; phone call during
      projection uses the InCall path.

## Caveats to keep in mind

- Phenotype sync from GMS can overwrite flag defaults — if a flipped flag reverts,
  harden its Facade to return constant `true` (documented in the unlock patch, §A.3).
- Telemetry cost: flag "19" + all Primes categories = continuous metrics collection.
- Cluster ("4") and sensors still need real hardware / VHAL — flags alone do not
  create them. USB whitelist (B.4) does not make a non-AOAP phone speak AOAP.

Sources: `decompile_AutoLinker/AutoLinker_Unlock_All_Patch.md`,
`AutoLinker_Race_Fix_Test_Checklist.md`, `AutoLinker_Race_Fix_Agent_Prompt.md`.
