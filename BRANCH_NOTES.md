# Branch: `package-konix-auto` — package rename test build

**Purpose:** try the receiver under the package name **`com.konix.auto`** instead of
`com.google.android.embedded.projection`, as a *separate, disposable* experiment.
`main` is untouched (still at the KoniX-Auto_final state). If the test fails, abandon
this branch — nothing on `main` changes.

**Test build:** `builds/KoniX-Auto_com.konix.auto_test.apk`
(8,808,678 bytes, SHA-256 `ce1f08ea7666348072ea93294103cb693b34ad9fcfe6f2a1737bd51893a96f6d`,
signed [v3] with the usual aausb key, cert SHA-256
`C3:0D:A3:BF:A7:0D:3E:63:B3:61:91:2C:0A:8F:59:CE:87:C4:A9:9A:56:76:2F:E0:05:BF:55:FD:EA:D3:16:B9`).
`aapt dump badging` on the built APK: `package: name='com.konix.auto'`.

---

## Inventory (before renaming)

Every occurrence of `com.google.android.embedded.projection` in `source/`:
**34 dotted-string occurrences in 16 files; 0 slash-path (`com/google/android/embedded/projection`) occurrences.**

| Category | Count | Where | Action |
|---|---|---|---|
| (a) Manifest `package` attribute | 1 | `AndroidManifest.xml:2` | **Renamed** → `com.konix.auto` |
| (b) Provider authorities | 2 | `CarUiInstaller`, `SearchResultsProvider` | **Renamed** → `com.konix.auto.*` (mandatory: a duplicate authority would block side-by-side install) |
| (b) Manifest intent action | 1 | `com.google.android.embedded.projection.PROJECT` | **Renamed** → `com.konix.auto.PROJECT` |
| (b) Permission name | 1 | `NAV_IMAGE_WRITE_PERMISSION` (writePermission of ClusterImageProvider) | **Renamed** → `com.konix.auto.NAV_IMAGE_WRITE_PERMISSION`. Note: no `<permission>` declaration for it exists in this manifest. |
| (c) R-class type references `Lcom/google/android/embedded/projection/R…` | **0** | — | Nothing to do: this tree contains no R class for the app package; code references resources by raw `0x7f…` IDs, and apktool regenerates resources under the new package. |
| (d) Smali const-strings used as data | 29 | 15 smali files | **Left unchanged** (see below) |
| (e) Protocol/library packages | — | `com.google.android.projection.*`, `com.google.android.gms.*`, etc. | **Not the app package — never renamed** |

The 29 category-(d) strings are: 7× the config key
`com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection`
(avy/bov/bpx/bqf/ceq/cet/cex) and 22 internal intent action/extra/key strings
(`PROJECT`, `DEVICE`, `START_REQUEST_REASON`, `USE_USB`, `GAIN_FOCUS`,
`action.FINISH_ERROR_ACTIVITY`, `extra.STOP_REASON`, `consent.device.bt/usb`,
`transport.usb.ACTION_USB_DEVICE_PERMISSION`,
`ui.WaitingForConnectionActivity.FINISH_ACTIVITY`, `KEY_LOCAL_DATA`).
They were left unchanged deliberately: sender and receiver of each string live inside
this same app (e.g. `hh.d()` builds the PROJECT intent with an explicit component and
`AndroidAutoHeadunitActivity.processIntent` compares against the same literal), so the
internal pairs stay consistent. Be aware the manifest intent-filter action *was*
renamed while the internal action literal was not — if the car framework launches the
projection activity by implicit action resolution, this mismatch can matter; it is one
of the things this test build exists to reveal.

`apktool.yml` does not pin the package (`renameManifestPackage: null`;
`forcedPackageId: 127` is the numeric resource package ID 0x7f, not a name) — unchanged.
`res/` and `assets/` contain 0 occurrences of the old package string.

**sharedUserId:** the manifest carries `android:sharedUserId=""` (present but *empty* —
effectively no shared user). It was **not** changed; flagged here as instructed.

## ⚠️ Credential XOR key — finding and patch

**Verdict: the XOR key was obtained at runtime — patch required and applied.**

Evidence (pre-patch `source/smali/awx.smali`, method `c(Ljava/io/InputStream;)`):
lines 39–45 fetched `Context.getApplicationInfo().packageName` and line 49–54 passed its
US-ASCII bytes as the key to `Laww.<init>(InputStream, [B)`. `Laww` is a repeating-key
XOR `FilterInputStream` (`xor-int/2addr` at `aww.smali:68` and `:113`). `Lawx.c` is the
*only* decode site (single `Laww` constructor call in the whole tree) and it serves every
credential read: `Lawx.a()` (bundled assets) and `Lawx.b()` (`/system/etc/aar` `c1`/`p1`
overrides), feeding `Lbbl.<init>` → `GalReceiver.nativeSetCreds`. Under the new package
name the runtime key would have become `com.konix.auto` and every credential would have
decoded to garbage → TLS auth failure.

**Patch (`source/smali/awx.smali`, method `c`):** the 4-instruction runtime fetch was
replaced by one instruction —
`const-string v3, "com.google.android.embedded.projection"` —
so the decode key stays byte-identical to the original build. Verified present in the
built APK (decoded `awx.smali:39`; `getApplicationInfo` no longer occurs in that file).

**Other runtime `getPackageName()` uses — reviewed, intentionally NOT patched:**
- `com/achour/tweaks/P.smali:270` and `CarCompat` (9 sites): build the
  `<own-package>_preferences` SharedPreferences name and explicit intents to the app's
  own components (PersistentService, NewDeviceActivity, …), permission-grant targets,
  tethering callback. All are self-referential and *must* follow the new package.
- `com/achour/tweaks/Bubble.smali:1070`: builds the `package:<own-package>` URI for the
  overlay-permission settings screen — must be the new package to grant the test app
  its own overlay permission.
- `com/achour/tweaks/NativeLib.smali`: no `getPackageName()` use; loads
  `libgalreceiver_jni.so` by name / app lib paths — package-name independent.

## Credential assets note (test-build only)

`source/` in this repo is deliberately scrubbed of `assets/credentials/` (gitignored,
never committed). For this test build only, the three files were restored into the
*working tree* from `builds/KoniX-Auto_final.apk` (md5-verified identical to the main
build tree's copies) so the test APK is functionally complete; they remain gitignored
and are **not** part of this branch's commits. A build made from a fresh clone of this
branch will lack them and cannot authenticate — restore them the same way first.

## ⛔ AP exclusion — untouched

Method-body hashes (`.line` stripped, same extraction on `main` and this branch) are
identical: `buildPersistentApWifiConfig` f4e6772e…, `getAvailableWifiChannels`
e75cf1a1…, `startProjectionAccessPoint` 9889328e…, `P.channels()` 5ac1fc97…,
`P.adv5()` 2995d1e5…. (Whole-file diff confirms only `AndroidManifest.xml` and
`smali/awx.smali` changed in `source/`.)

## Known risks of the renamed build

- It installs as a **separate app**, not an update: no settings, gallery state,
  SharedPreferences, or device-pairing data migrate from the original.
- The car framework / Android Auto on the phone may key the projection role,
  permissions (privileged/car permissions are granted per original package), or the
  `AARECEIVER` feature to `com.google.android.embedded.projection` — the renamed app
  may never be offered the projection role, and signature/privileged permissions will
  not be granted to it as a normal sideloaded app.
- Both apps installed at once can compete (USB device intents, BT/WiFi flows).
- Phenotype/config keys and internal strings still reference the old package
  (category (d) above) — by design for internal consistency, but server-side config
  for the old package will not apply.

## Undo

- On the head unit: uninstall the `com.konix.auto` test app. The original app is
  unaffected.
- In this repo: `git branch -D package-konix-auto` locally and
  `git push origin --delete package-konix-auto` remotely. `main` was never modified.

## Icon update (2026-11-26)

- New app icon applied: Achour's gold shield emblem (road + steering wheel on navy),
  cropped to the emblem with a navy margin. Replaced `ic_android_auto` rasters at all
  densities (drawable 192, mdpi 48, hdpi 72, xhdpi 96, xxhdpi 144, xxxhdpi 192);
  resource names and the manifest reference unchanged.
- The package rename and the `awx.smali` credential XOR-key pin are unchanged.
  Test APK rebuilt and re-signed (aausb, v3): SHA-256
  f438716065e82c76dc914760b5463b8d5370ebf5c004f4cea2339181d7bd5cd1.
