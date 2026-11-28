# Hardening / Obfuscation — experimental branch `hardening-obfuscation`

Base: `main` @ `b286752` (= `KoniX-Auto_final_icon.apk` state). Main is **not** modified by this branch.
Build on this branch: `builds/KoniX-Auto_obfuscated_test.apk` (same package, same signer as main — installs as an update; to revert, reinstall the main build).

Two protections were added to Achour's tweak layer (`com/achour/tweaks`, classes3 dex):

1. **Signing-certificate self-check** — if the APK is re-signed with a different key, the tweak layer silently never activates. The stock receiver keeps running.
2. **Obfuscation** — every tweak class renamed to a meaningless name in a new package `x/`, and identifier strings encrypted at rest (decrypted at runtime).

---

## 1. Rename map (complete)

Package: `Lcom/achour/tweaks/` → `Lx/`. Inner classes keep their `$` suffix. `.source` attributes rewritten to match. Method/field names were **not** renamed (interface contracts like `View.OnClickListener.onClick` and synthetic accessors make method renaming high-risk for zero extra protection of the check itself).

| Old | New | Old | New |
|---|---|---|---|
| `P` | `x/a` | `V5` | `x/g` |
| `P$1` | `x/a$1` | `V5$1` | `x/g$1` |
| `Bubble` | `x/b` | `V5$Run` | `x/g$Run` |
| `Bubble$1`…`Bubble$15` | `x/b$1`…`x/b$15` | `V5Click` | `x/h` |
| `Bubble$14$1` | `x/b$14$1` | `V6` | `x/i` |
| `Bt` | `x/c` | `V6$1`…`V6$5` | `x/i$1`…`x/i$5` |
| `Bt$1`, `Bt$2` | `x/c$1`, `x/c$2` | `V6Click` | `x/j` |
| `Gal` | `x/d` | `V6PhoneClick` | `x/k` |
| `Gal$Onb` | `x/d$Onb` | `V7` | `x/l` |
| `NativeLib` | `x/e` | `V7$1`…`V7$3` | `x/l$1`…`x/l$3` |
| `Splash` | `x/f` | `V7Click` | `x/m` |
| `Splash$1` | `x/f$1` | *(new) self-check* | `x/n` |

All references were updated tree-wide: the 44 tweak files themselves plus 12 host files that call into the tweak layer (`CarCompat`, `CarCompat$9$1`, `CarCompat$10`, `PersistentService`, `GalReceiver`, `AndroidAutoHeadunitActivity`, `WaitingForConnectionActivity`, `ErrorMessageActivity`, `MissingPermissionsActivity`, `SslCertificateIssueActivity`, `azy`, `bhc`). There are **no** tweak components in `AndroidManifest.xml` (the layer is hooked in from host code), so the manifest is unchanged. No class-name strings existed anywhere (`Class.forName` is only used for the framework class `android.app.ActivityThread`), so renaming is purely descriptor-level. Verified: zero occurrences of `com/achour/tweaks`, `com.achour.tweaks`, or `Lcom/achour/tweaks/` remain in the tree.

## 2. Signature self-check — `Lx/n;->ok()Z`

Design:

- **Context**: obtained reflectively via `ActivityThread.currentApplication()` (the same pattern the existing tweak code uses), so `ok()` needs no caller-supplied context and can gate no-arg entry points.
- **Digest**: `PackageManager.getPackageInfo(ownPackage, GET_SIGNING_CERTIFICATES)` on API 28+, `GET_SIGNATURES` fallback below; SHA-256 over `signers[0].toByteArray()`; compared with `MessageDigest.isEqual`-equivalent (`Arrays.equals`).
- **Expected value**: Achour's signer cert SHA-256 (`C3:0D:A3:BF:…:16:B9`) is **not** stored as a hex string or raw bytes. It is stored XOR-encoded with a repeating 8-byte key in a `fill-array-data` table and decoded at runtime by `Lx/n;->e()`. A string/byte search of the dex does not reveal it.
- **Caching**: verdict cached in a static (`1` = match, `2` = mismatch); computed once per process.
- **Failure semantics**: any exception during verification → cached mismatch (fail-closed). The single exception: if no `Application` context exists yet, `ok()` returns `true` *without caching* (fail-open for that call only) so an impossibly-early call can never wedge the host; every real entry point runs after the Application exists, so the verdict is computed and cached there.
- **On mismatch**: no crash, no dialog, no log spam. Gated methods return their neutral value (below) and the tweak layer simply never appears. The receiver's own code is untouched and runs normally.

### Where it gates (31 call sites)

Choke points inside `x/a` (P) — every pref-backed getter funnels through these:

- `gb(String, boolean)` → returns the getter's own default on mismatch
- `gi(String, int)` → returns the getter's own default on mismatch
- `gl(String)` → returns `0` (its built-in default) on mismatch
- `allowAutoLaunch()` → `false`
- `ssid()` / `psk()` → `""` (their own empty default)
- `onRfcommUp()`, `onRfcommDown()`, `onWirelessAttempt()`, `rememberRunner()` → no-op

Head gates on every host-called tweak entry point (neutral value = what the stock/fresh-install flow does):

| Entry (new name) | Called from | On mismatch |
|---|---|---|
| `x/b;->start` (Bubble) | `PersistentService` | return (no bubble, no panel) |
| `x/f;->show` (Splash) | head-unit + waiting activities | return |
| `x/d;->rotateActivityRoot / rotateViewById / maybeOnboard / applyBgToView` (Gal) | instruction/waiting activities | return (no gallery, no onboarding) |
| `x/l;->addWaitingBar` (V7) | `WaitingForConnectionActivity` | return |
| `x/l;->screenW / screenH` (V7) | `bhc` | return the input dimension unchanged |
| `x/g;->onStatus` (V5) | `CarCompat` | return |
| `x/g;->logGateBlock` (V5) | `azy` | return |
| `x/g;->shouldSkipWirelessNudge` (V5) | `CarCompat`, `CarCompat$10` | `false` (never skip) |
| `x/i;->onStatusSafe` (V6), `x/l;->onStatusSafe` (V7) | `CarCompat` | return |
| `x/i;->onProcessStart / selfHealDeferred / aclAttempt / biasReset` (V6) | `CarCompat`, `CarCompat$10` | return |
| `x/i;->biasSkip` (V6) | `CarCompat` | `false` |
| `x/i;->biasFallback` (V6) | `CarCompat` | `null` (no stashed device — the stash is never populated when gated) |
| `x/i;->btAttemptGated` (V6) | `CarCompat` | delegates to `CarCompat.v5HasBt(ctx, true)` — the exact neutral path the method itself uses outside its cold-start window |

Internal-only code (settings panel actions, `Bt` repair, click handlers `x/h`, `x/j`, `x/k`, `x/m`) is reachable only through the gated entries above, so it is covered transitively.

### Deliberately NOT gated

- **`NativeLib.load()` (`x/e`)** — it extracts/loads `libgalreceiver_jni.so`, without which the *stock receiver itself* cannot run when sideloaded. Gating it would break the host app, which the design forbids. It is renamed, just not gated.
- **`P.channels()` and the body of `P.adv5()`** — ⛔ AP channel logic; bodies are byte-identical to main (verified). Note `adv5()` reads through `gb`, so on mismatch it yields its own factory default (`true`) — exactly what a fresh install produces; `channels()` itself is untouched and unconditioned.
- **Setters** (`pb`/`pl`, `setUsb`, …) — unreachable when the settings UI never starts; read-gating is sufficient.
- The five ⛔ method bodies (`CarCompat.buildPersistentApWifiConfig`, `getAvailableWifiChannels`, `startProjectionAccessPoint`, `P.channels`, `P.adv5`) were verified **byte-identical to main** after normalizing only the renamed class tokens (and `.line` directives).

## 3. Encrypted strings

Scheme: each character XOR `0x37`, stored as `\uXXXX` escapes in the `const-string`, decrypted at the former literal site by `Lx/n;->d(String)`. This is obfuscation, not cryptography — it defeats string searches and casual reading, nothing more.

Encrypted (50 decrypt call sites in the final build):

- `"AATweaks"` log tag — 36 `const-string` sites + 2 `static final` field initializers (`NativeLib.LOG`, `V6.TAG`, converted to `<clinit>` decrypt assignments)
- Suffixed log tags: `"AATweaks-Bt"`, `"AATweaks-Watch"`, `"AATweaks-Backup"`, `"AATweaks-Restore"`, `"AATweaks-Diag"` — 1 site each
- `"\n== logcat (AATweaks, CarCompat) ==\n"` diagnostics header — 1 site
- `"autolinker_settings_backup.txt"` (settings backup file name) — 2 sites
- `"AndroidAuto_CAR9"` (default AP SSID identifier) — 2 sites
- Plus 2 `"AATweaks"` sites in `smali/azy.smali` — Achour's race-fix logging lives in that host class, outside the tweak package; same treatment, documented here so the one non-tweak-file content change is explicit.

Left in plaintext, deliberately:

- **All SharedPreferences keys and the pref file name `"achour_tweaks"`** — data contracts; changing them resets user state. (Includes `aa_v8_ap_ssid` / `aa_v8_ap_psk`, which are pref *keys* in the default prefs — the credential *values* live in prefs, their literal defaults are empty strings, so there is no credential material in the dex to encrypt.)
- `"libgalreceiver_jni.so"` / `"galreceiver_jni"` — the file is plainly visible in the APK's `lib/`; encrypting its name adds nothing.
- `"android.app.ActivityThread"`, `"currentApplication"` — generic Android framework reflection names, also used by stock code.
- All user-visible UI text (labels, Arabic strings) and log *message* bodies — content, not identifiers; encrypting them would add dozens of fragile call sites for no anti-clone value.

## 4. Verification performed (on a fresh decode of the shipped APK)

- Signature: verifies **[v3]**, signer cert SHA-256 = `C3:0D:A3:BF:A7:0D:3E:63:B3:61:91:2C:0A:8F:59:CE:87:C4:A9:9A:56:76:2F:E0:05:BF:55:FD:EA:D3:16:B9` (the aausb key).
- Badging: package `com.google.android.embedded.projection`, label `KoniX-Auto` (`@string/app_name`).
- USB gate: `handleAttachedUsbDevice` contains exactly 2× `if-eq p2, v0, :cond_2` (the corrected gate), as on main.
- ⛔ AP exclusion: all five protected bodies identical to main after token normalization (see §2).
- Whole-tree: after normalizing renamed tokens and stripping `.line` directives, **every non-tweak smali file is byte-identical to main**; changes are confined to the renamed tweak files, their call sites in the 12 host files, the 2 encrypted-string sites in `azy.smali`, and signature bookkeeping.
- Self-check: `Lx/n;` present in the decoded output; 31 `ok()Z` call sites and 50 `d(...)` call sites found; gate prologues read back and traced (e.g. `PersistentService → x/b;->start` → `ok()` is the first call; on mismatch the method returns before any UI work; `gb` gate sits ahead of every pref read it serves).
- Leftovers: zero `achour/tweaks` references and zero plaintext `AATweaks` anywhere in the decoded tree.

## 5. Known limits (read before trusting this)

- Obfuscation **raises the cost** of analysis; it does not prevent it. The class structure, control flow, and all Google-side code remain fully readable with jadx/apktool.
- The self-check stops **casual re-sign-and-redistribute cloning** (the clone boots as a plain receiver with no tweak layer). A determined reverser can find and patch out `ok()` — it is a speed bump with a tripwire, not a vault.
- The expected-digest XOR encoding and the string XOR are trivially reversible once located; their job is to keep the values out of string searches and screenshots.
- Runtime behavior on the head unit is **not** device-verified yet: the legit-signed build must be confirmed to show the bubble/gallery exactly as before (check passes), which is the real test of the gating code.

## 6. Build note

`source/assets/credentials/` is gitignored and absent from the repo (as on main). Before building this branch, restore the 3 files (`ca.pem`, `client.pem`, `private.key`) from a signed build (e.g. `KoniX-Auto_final_icon.apk`) into `source/assets/credentials/` — md5-verified copies were used for this build; they are **not** committed.

## 7. Undo

- Abandon the experiment: `git branch -D hardening-obfuscation` (and delete the remote branch); main was never touched.
- On the device: the test APK is an in-place update of the main build (same package + signer). Reinstall `KoniX-Auto_final_icon.apk` to go back; settings are preserved either way.
