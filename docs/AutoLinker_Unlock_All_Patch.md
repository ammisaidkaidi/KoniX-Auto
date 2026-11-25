# AutoLinker — UNLOCK-ALL Patch Set

Scope: every hidden/condition-gated feature found in the audit, no exceptions.
Three layers: **(A)** Phenotype flag flips (mechanical, in smali), **(B)** code patches for
non-flag gates, **(C)** system install (priv-app) for permission gates that code cannot grant.

Class names are given as `RenamedName (original)` — patch in your apktool smali tree using the
original names. Line numbers refer to the jadx Java in `java/sources` (original) /
`java_renamed/sources` (renamed).

---

## PART A — Phenotype flag flips

In each `AaReceiverFlags*Impl` class the flags are defined in the static initializer as
`CombinedFlagsFactory.b("<id>", <default>)`. In smali this is a `const-string` with the flag ID
followed by `const/4 vX, 0x0` passed to the factory call.

**Rule: for each ID listed below, change only the boolean that belongs to that ID from `0x0` to
`0x1`. Match by the preceding const-string ID — do not blanket-replace every `0x0` in the file.**

### A.1 Flags to flip FALSE → TRUE (23 flips)

> Count verified 2026-11-24 against the decompiled source (`java_renamed/sources/defpackage/AaReceiverFlags*Impl.java`): exactly 23 flags are defined with default `false` and all 23 are listed in the table below — no flag is missing. The earlier "24" was a miscount (24 is the count of flags already `true`, listed in §A.2).

| Impl class (defpackage) | Flag IDs to flip | What it unlocks |
|---|---|---|
| AaReceiverFlags45350014Impl | `45350014`, `45357968`, `45357969` | AP pre-start + AP restart-skip; AP teardown BSSID logic; **5 GHz-only-AP enforcement check** |
| AaReceiverFlags45350358Impl | `45350297` | Extended nav label/maneuver extraction |
| AaReceiverFlags45350698Impl | `45350698` | Alternate SensorFeed provider (Dagger A/B) |
| AaReceiverFlags45353773Impl | `45353773`, `45353776`, `45355571`, `45353771`, `45353774`, `45353775`, `45353772` | All Primes metric categories: crash, jank, memory ×2, network, storage, timer |
| AaReceiverFlags45355406Impl | `45355405` | BT adapter-startup failure handling + startup latency tracking |
| AaReceiverFlags45356776Impl | `45356776` | dumpsys includes the full Phenotype flag dump |
| AaReceiverFlags45356796Impl | `"9"`, `45356796`, `45360588`, `45354780` | **Wireless auto-reconnect eligibility + `launch_mode` setting visible; wireless auto-restart after PING_TIMEOUT;** new version-response auto-launch path; alternate USB-detach restart strategy |
| AaReceiverFlags45360511Impl | `45360511` | Projection UI mode from RRO overlay |
| AaReceiverFlagsDivImpl | `"4"` | **Cluster display availability** (still needs real cluster hardware, Part B.6) |
| AaReceiverFlagsDjqImpl | `"15"`, `"5"` | **Cancel-connection buttons** in WaitingForConnectionActivity + headunit activity. (`"5"` is a second flag in the same Impl with no identified call site — flipped for completeness) |
| AaReceiverFlagsDkoImpl | `"19"` | **Latency telemetry master switch** (whole TelemetryTracker becomes live) |

### A.2 Already TRUE — no change needed
`45359456`, `45350358`, `45350495`, `45351725`, `45351678`, `45351030`, `45351251`, `45351428`,
`45351549`, `45351729`, `45351774`, `45353198`, `45353302`, `45353265`, `45356938`, `45357540`,
`45359453`, `45359390`, `45359454`, `45359517`, `45359988`, `45360454`, `"14"` (rear-view),
`"7"` (dead flag — defined, never called; flipping is meaningless).

### A.3 Cannot be flipped (and why)
- **Long flag `45355406` = 20** (`AaReceiverFlags45355406Impl`, defined via `.a("45355406", 20L)`):
  a numeric BT-manager parameter, not an on/off gate. Leave it.
- **Proto flag `"16"`** (`AaReceiverFlagsDisImpl`): a repeated-field proto whose entries would be
  prepended to the cert-override directory list (ahead of `/system/etc/aar`). There is no boolean
  to flip. If you want an extra override directory, hardcode it in
  `AppProvidersSwitchFactory` (renamed) where the list is built:
  `j.h(<proto list>); j.g("/system/etc/aar");` → add `j.g("/your/path");` after it.
- **Phenotype sync caveat:** these are *defaults*. If GMS Phenotype ever syncs a server config for
  `com.google.android.apps.auto.aareceiver` to this device, synced values override defaults.
  For the six user-facing flags (`"15"`, `"9"`, `45356796`, `"4"`, `"19"`, `45356776`) you can
  harden the patch by also editing the **Facade**: make its accessor return a constant —
  e.g. in `AaReceiverFlagsDjqFacade.smali`, replace the body of `c()` with
  `const/4 v0, 0x1` / `return v0`. Do this only if you observe a sync overwriting you.

---

## PART B — Code patches for non-flag gates

### B.1 Developer settings on `user` builds — EmbeddedPreferenceFragment (orig `bcb`)
`java/sources/defpackage/bcb.java:28-39`: static field `af` is set from
`!"eng".equals(Build.TYPE) && !"userdebug".equals(Build.TYPE)`.
**Patch:** force `af = true` in the static initializer (smali `<clinit>`: after the Build.TYPE
comparisons, overwrite the field with `const/4 … 0x1` before `sput-boolean`).
Effect: the Version-tap counter and the whole developer block get wired on production builds.
**Optional accelerator:** in `SettingsPreferenceCallback` the unlock threshold is `i == 10` taps —
change to `i == 1` if you don't want to tap 10 times. (Equivalent no-code alternative: write
`developer_mode_enable=true` directly into the app's device-protected shared_prefs.)

### B.2 Video-latency-checker + OEM debug gates — OemSettingsPrefsImpl (orig `bcm`)
`bcm.java:88`: `return dlb.c() && b() && pref && ("eng".equals(Build.TYPE) || "userdebug".equals(Build.TYPE));`
(`dlb` = AaReceiverFlags45351428Facade — already TRUE, Part A keeps it.)
**Patch:** delete the Build.TYPE term so the method returns `dlb.c() && b() && pref`.
`bcm.java:89-91` (`d()`, OEM/debug feature): same treatment — remove its Build.TYPE term.

### B.3 OEM kill switch — OemSettingsImpl (settings/OemSettingsImpl.java)
It parses secure setting `com.android.car.projection.DISABLED` into the sets consumed by
`UsbDeviceAllowlistChecker.a()` (USB) / `.b()` (wireless).
**Patch (code):** make the parse result always empty — in `parseSettings`, return an empty
result regardless of the setting's content (smali: at method head, build/return the empty object).
**Patch (no-code alternative):** `adb shell settings delete secure com.android.car.projection.DISABLED`
— do both if you don't control the car's settings provider.

### B.4 USB VID/PID whitelist — UsbUtils (orig `beh`)
`UsbUtils.d()`: `getVendorId() == 6353 && PIDs.contains(getProductId())` with
PIDs = {11520, 11521, 11524, 11525}.
**Patch:** make `d()` return `true` unconditionally (smali: `const/4 v0, 0x1; return v0`).
⚠️ Reality check: this only widens the *check*. The phone must still speak AOAP + the GAL
protocol; a non-AOAP device will pass the gate and then fail the handshake.

### B.5 MediaBrowser system-app-only check — media/MediaBrowserService.java:69-80
`onGetRoot` rejects clients where `(ApplicationInfo.flags & 1) == 0`.
**Patch:** remove the flags test so any client package is accepted (keep the null/unknown-package
guard). Note Part C also satisfies this check legitimately.

### B.6 Cluster display — no extra code patch
`ClusterDisplayAvailability.a()` = `flag "4" && cluster.isPresent()`. Part A flips the flag;
the rest is hardware (Part C + a real cluster display + phone codec-setup request). Do **not**
fake `isPresent()` — the session would try to open a non-existent display.

### B.7 Permission gate for session init — AndroidAutoHeadunitActivity.q() (OPTIONAL, risky)
`q()` refuses session init unless all of RequiredPermissionsList (+ BT perms on SDK ≥ 31) are granted.
**Patch (only if you truly want it):** bypass the early-return so init proceeds.
⚠️ Android still enforces permissions at the API level: mic/location/car-property calls will
throw or return empty. This patch converts a clean refusal into partial, degraded sessions.
The correct unlock is Part C (grant the permissions), not this patch.

### B.8 Covered by Part A alone (no code patch)
Cancel buttons (`"15"`), wireless auto-reconnect (`"9"`), ping-timeout auto-restart (`45356796`),
rear-view monitor (`"14"`, already on), rich in-call selection (`45359517`, already on — but see
Part C for its permission), flag dump in dumpsys (`45356776`), Qualcomm low-latency decoder
(`45351030`, already on), media-key swallowing (`45353198`, already on).

---

## PART C — Priv-app install (the only way to "unlock" permission gates)

Code cannot grant signature/privileged permissions. Install as a system priv-app:

1. Push the APK to `/system/priv-app/AutoLinker/AutoLinker.apk` (or your build's priv-app path).
2. Install the whitelist below as `/system/etc/permissions/privapp-permissions-com.google.android.embedded.projection.xml`.
3. Reboot. Verify with `adb shell dumpsys package com.google.android.embedded.projection | grep -A2 granted`.

```xml
<?xml version="1.0" encoding="utf-8"?>
<permissions>
    <privapp-permissions package="com.google.android.embedded.projection">
        <permission name="android.permission.BLUETOOTH_PRIVILEGED"/>
        <permission name="android.permission.BLUETOOTH_CONNECT"/>
        <permission name="android.permission.BLUETOOTH_SCAN"/>
        <permission name="android.permission.MANAGE_USB"/>
        <permission name="android.permission.OVERRIDE_WIFI_CONFIG"/>
        <permission name="android.permission.LOCAL_MAC_ADDRESS"/>
        <permission name="android.permission.CONTROL_INCALL_EXPERIENCE"/>
        <permission name="android.permission.WRITE_SETTINGS"/>
        <permission name="android.permission.SYSTEM_ALERT_WINDOW"/>
        <permission name="android.car.permission.CAR_PROJECTION"/>
        <permission name="android.car.permission.CAR_INFO"/>
        <permission name="android.car.permission.CAR_SPEED"/>
        <permission name="android.car.permission.CAR_ENERGY"/>
        <permission name="android.car.permission.CAR_ENGINE_DETAILED"/>
        <permission name="android.car.permission.CAR_MILEAGE"/>
        <permission name="android.car.permission.CAR_EXTERIOR_ENVIRONMENT"/>
        <permission name="android.car.permission.CAR_POWERTRAIN"/>
        <permission name="android.car.permission.CAR_HANDLE_USB_AOAP_DEVICE"/>
        <permission name="android.car.permission.CAR_DISPLAY_IN_CLUSTER"/>
        <permission name="android.car.permission.CAR_NAVIGATION_MANAGER"/>
        <permission name="android.car.permission.RECEIVE_CAR_AUDIO_DUCKING_EVENTS"/>
        <permission name="com.google.android.gms.permission.CAR_VENDOR_EXTENSION"/>
    </privapp-permissions>
</permissions>
```

This single step unlocks: rich in-call experience (with flag 45359517 on), all car sensors
(property presence still depends on the car's VHAL), MediaBrowser for the car UI, AOAP handling,
cluster permission, and removes the master permission-gate refusal (B.7 becomes unnecessary).

---

## Apply order

1. Part A flips → rebuild → smoke test (app starts, session connects).
2. Part B.1–B.5 → rebuild → test each item below.
3. Part C when you next flash the system image.
4. **Race warning:** A.1 turns ON `"9"` + `45356796` (auto-reconnect + auto-restart). Combined
   with your tweak watchdog this adds more restart paths to the USB/wireless race. Apply the
   single-session gate fix (azy.d) **before or together with** this patch set, and re-run the
   race pass/fail logcat checks afterwards.
5. Telemetry cost: `"19"` + all Primes categories = continuous metrics collection on the head
   unit (CPU/storage, and uploads when GMS is present). It's unlocked because you asked for
   everything — expect a small perf cost.

## Verification checklist

- [ ] Settings → tap Version: counter toasts appear on a `user` build; after unlock, Developer
      category visible **including** Launch mode row (flag `"9"` proof).
- [ ] Start a wireless connection and look at WaitingForConnectionActivity: **Cancel button
      visible** (flag `"15"` proof); tapping it cancels cleanly.
- [ ] Kill Wi-Fi mid-session (ping timeout): session auto-restarts with
      `ProjectionStartReason.AUTOMATIC_RESTART` in logcat (flag `45356796` proof).
- [ ] `dumpsys activity service` on PersistentService prints the `PhenotypeExperiments:` section
      (flag `45356776` proof) and shows your flipped values.
- [ ] With `com.android.car.projection.DISABLED` set to `*|*|*` by hand: USB and wireless still
      start (B.3 proof).
- [ ] After Part C: `dumpsys package` shows the privileged permissions granted; phone call during
      projection uses the InCall path (logcat `CallAvailabilityMonitor` binds InCallServiceImpl).
