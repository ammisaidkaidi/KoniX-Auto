# AutoLinker-v8-Tweaks-v6-GoogleCert — Decompiled

APK SHA-256: `18b6d3aba3b10d4ddb112bc71cbbfe84d57d0f09af6f51aa755394e1244603e3`

## What this APK actually is
- Package: `com.google.android.embedded.projection`
- Version: `1.0.413336740-release` (versionCode 300063473), minSdk 28, targetSdk 31
- This is Google's **Android Auto embedded projection receiver** app, repackaged with custom tweaks.
- The custom tweak code is small and separate — see `com.achour.tweaks` below.

## Contents of this package
| Folder | What it is |
|---|---|
| `java/sources/` | Full jadx decompilation of all 3 dex files — 3,377 `.java` files |
| `java/resources/` | Decoded `AndroidManifest.xml`, `res/`, `assets/` (incl. `assets/credentials/client.pem`, `ca.pem`, `private.key`) |
| `extracted/` | Raw APK contents (dex, `.so`, binary manifest) |
| `native/ghidra_c/` | Ghidra C decompilation of `libgalreceiver_jni.so`: **45,641 functions decompiled, only 1 failed**, grouped in 92 `decompiled_NNNN.c` chunks (500 functions per file) + `INDEX.txt` (function name → address list) |
| `native/disassembly_arm64.asm` | Full AArch64 disassembly of `.text` + `.plt` (~830k instructions), annotated with symbol names |
| `native/analysis/` | `readelf.txt`, `strings.txt` (103k strings), `all_symbols.txt` / `all_symbols_demangled.txt` (99k symbols — the `.so` is **not stripped**), `dynamic_symbols.txt`, `jni_exports.txt` (135 JNI exports) |

## Java structure
- `classes.dex` + `classes2.dex` — Google's app: `com.google.android.embedded.projection`, `com.google.android.projection.*`, `com.google.android.apps.auto.*`, plus Google common libraries.
- `classes3.dex` — **the tweaks**, only 4 files (1,279 lines total):
  - `com/achour/tweaks/NativeLib.java` — extracts/loads `libgalreceiver_jni.so` from the APK itself or system paths so the receiver works when sideloaded
  - `com/achour/tweaks/P.java`, `Bt.java`, `Bubble.java` — the rest of the tweak logic

## Native library
- Only one: `lib/arm64-v8a/libgalreceiver_jni.so` — 15.2 MB, ELF AArch64, **not stripped**, BuildID `673d1aea73bbe648e08f9c8b81df5e0f`
- 39,487 defined functions. Most are bundled third-party code whose original source is public:
  BoringSSL/OpenSSL (C, ~13.8k symbols), protobuf (~4.6k), Abseil (~4k+), ICU (~2k), libunwind, tcmalloc.
- The app's own native code is the GAL projection protocol: 135 JNI exports
  (`Java_com_google_android_projection_protocol_*` — GalReceiver, AudioSink/Source, VideoSink,
  InputSource, SensorSource, RadioEndpoint, BluetoothEndpoint, etc.), the `gal::` namespace,
  and Wi-Fi projection/discovery code. In the Ghidra output, search `INDEX.txt` for these names first.
- Tools used: jadx 1.5.1 (Java), Ghidra 11.3.2 (C), Capstone 5 (disassembly). Decompiled C is
  machine-generated pseudo-C — it will not recompile as-is.
