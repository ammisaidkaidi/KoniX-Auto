# Unlock Google's hidden Developer settings on a user build — patch brief

## Why this, why now
This morning's hidden-features audit (2026-11-24, 06:07–06:11) found Google's
Developer settings category hidden behind tapping Version 10× — but the tap
handler is only wired on `eng`/`userdebug` builds, so on a normal `user` build
the unlock is impossible from the UI. Re-checking the de-obfuscated tree shows
the lock is a **single static boolean**, not scattered checks — so a one-line
smali patch unlocks the whole category the way Google designed it.

## Verified root cause (renamed tree)
- Class: `com.google.android.apps.auto.aareceiver.settings.EmbeddedPreferenceFragment`
  (obfuscated `defpackage.bcb`), file
  `decompile_AutoLinker/java_renamed/sources/com/google/android/apps/auto/aareceiver/settings/EmbeddedPreferenceFragment.java`
- Static gate:
  ```java
  private static final boolean af;
  static {
      boolean z = true;
      if (!"eng".equals(Build.TYPE) && !"userdebug".equals(Build.TYPE)) {
          z = false;
      }
      af = z;
  }
  ```
- Everything developer-related is inside `if (af)` blocks: the Version tap
  listener (`al()`), the `SharedPreferences` change listener (`K()`/`L()`),
  the category `setVisible(as())`, the launch-mode row removal, and the
  video-latency-checker enable path.
- Tap counter: `defpackage.bca` (`SettingsPreferenceCallback`) — counts taps,
  toasts "X steps away" from tap 7, and at tap 10 writes pref
  `developer_mode_enable` = true. `as()` reads that pref; the change listener
  then shows the category.
- Layout: `java/resources/res/xml/pref_general.xml` — the Developer category
  starts `app:isPreferenceVisible="false"`; the pref key is the string
  `developer_mode_enable` (`enable_developer_mode_key`).

## The key point: setting the pref alone will NOT work
On a `user` build the listener that watches `developer_mode_enable` is never
registered and `setVisible(as())` is never called — both live inside the
`af`-gated block. Writing the pref directly (adb / tweak code) leaves the
category hidden. The gate itself must be forced true.

## The patch (one line, smali)
In `defpackage/bcb` (`EmbeddedPreferenceFragment`), `<clinit>`: force the
static field true — e.g. `const/4 v0, 0x1` + `sput-boolean v0, ...->af:Z`
(in jadx terms: `af = true;`). No other class needs changing for the unlock.
Do not touch: `GalReceiver` static block / `NativeLib.load()`, the XOR
credential decoding, or the `/system/etc/aar` `c1`/`p1` cert override.

## What it unlocks, and what stays locked
| Option | After patch |
|---|---|
| Developer category + Version 10× tap | Works as designed (toasts from tap 7) |
| Enable wireless (`car_wifi_enabled`) | Visible; already force-seeded `true` by CarCompat at startup, so no behaviour change expected |
| Launch mode (`launch_mode`) | Row appears only if Phenotype flag "9" is ON; otherwise still removed by the `af`-block code |
| Projection UI mode + variation | Works; applies next session |
| Video latency checker | Switch still hard-disabled unless Phenotype flag 45351428 is ON |
| Primes debug activity | Row still needs its Phenotype flag ON **and** a Primes debug activity installed |

## Verify after rebuild / sign / install
1. Open Settings via the system Settings app (`SettingsActivity` is not
   exported — no launcher icon).
2. Tap Version 10× — toasts from tap 7, "enabled" at tap 10.
3. Developer category appears with the rows above.
4. Toggle Projection UI mode, start a session, confirm it applies.

## No-patch diagnostic worth running today (2 minutes)
Check the OEM kill switch found in the same audit — `OemSettingsImpl`
live-watches the secure setting `com.android.car.projection.DISABLED`:
```
adb shell settings get secure com.android.car.projection.DISABLED
```
Expect `null` (not set). Any value (`*`, `usb`, `wireless`, a serial/BT
address) means the OEM/car is silently disabling that transport — and no
race fix or settings unlock will help until that is cleared.
