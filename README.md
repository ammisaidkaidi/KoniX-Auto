# KoniX-Auto

**KoniX-Auto** (formerly *AutoLinker*) — a tuned build of Google's Android Auto embedded
projection receiver (`com.google.android.embedded.projection`, v1.0.413336740-release)
for a 1920×720, 10.7″ head unit. Owner/developer: **Achour Brahim**.

It carries a custom tweak layer (`com/achour/tweaks/` + CarCompat patches) on top of the
stock receiver: a USB-vs-wireless race fix, an unlock of the condition-gated features,
a floating settings Bubble with transport modes, presets, diagnostics, glass instruction
screens, a first-run photo gallery with rotating backgrounds — and Achour's branding.

## What's in this repo

| Folder | Contents |
|---|---|
| `source/` | The **current build tree** (apktool project) that produced `KoniX-Auto_final.apk` — smali, resources, manifest. Edit here, rebuild with apktool, sign, install as an update. |
| `decompile/` | The full decompilation archives of the original APK: jadx Java sources + Ghidra native C (`AutoLinker_decompiled_full.zip`), and the Java tree with restored Google class names (`AutoLinker_java_renamed.zip`). |
| `docs/` | All project documentation: architecture map (Java→JNI→native, auth chain), JNI map, class rename map, hidden-features audit, unlock patch set, apply-order sheet, test sheets, instruction-screen inventory. |
| `builds/` | Every compiled build, in order (see lineage below). All signed with the same key, so each installs as an in-place update over the previous ones. |

## Build lineage

`patched` → `branded` → **v2 (trusted USB baseline)** → v3–v8 feature stacks →
restack steps 1–5 (features re-stacked onto v2, with hardening) → `step5_fixed`
(gate correction) → `glass` / `glass2` (glass instruction screens) → `gallery`
(first-run popup + rotating backgrounds) → `KoniX_final` (rename) → **`KoniX-Auto_final`
(current)**.

## Signing — read this first

- Builds are signed with the **aausb** keystore (cert SHA-256
  `C3:0D:A3:BF:A7:0D:3E:63:B3:61:91:2C:0A:8F:59:CE:87:C4:A9:9A:56:76:2F:E0:05:BF:55:FD:EA:D3:16:B9`).
- **The keystore is deliberately NOT in this repo** — and neither is its password, nor the
  app's bundled credential files (`assets/credentials/` was scrubbed from the archives).
  Signing material never belongs in a git repo. A build signed with any other key will
  refuse to install over an existing install.
- The package name never changes: `com.google.android.embedded.projection`.

## Hard rules for anyone patching this

1. ⛔ **Never touch the AP channel/band logic** — `CarCompat.buildPersistentApWifiConfig`
   (forced apChannel=6), `P.channels()`, `P.adv5()`, `startProjectionAccessPoint` band
   selection. Deliberate configuration ("the magic").
2. **Phone-side USB step first**: if USB won't connect on any build, check the phone —
   its USB mode must be switched from "charging" to "Android Auto" the first time (and
   after clearing Android Auto's data on the phone). Without it, no build can connect.
3. Verify branch **reachability** in hand-edited smali, not just that a line exists.
4. Never place unguarded hooks at the head of `initPersistentService`.

Full reasoning and history: see `docs/`.
