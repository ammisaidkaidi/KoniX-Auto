# AutoLinker — De-obfuscated Java sources

Same 3,377 jadx files as `java/sources`, with every obfuscated `defpackage` class renamed
by semantics and logic, and all references rewritten across the whole tree.
The original tree is untouched.

## How names were assigned

- **Tier A — exact original names (72 classes).** Recovered from each class's own
  Flogger logger declaration (`csz.g("com/google/.../OriginalName")`) — these are the
  true Google names, and the files were moved back into their real packages, e.g.
  `defpackage/azy` → `com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler`,
  `defpackage/bbl` → `.../session/ProjectionSession`, `defpackage/beh` → `.../transport/usb/UsbUtils`.
- **Tier B — semantic names (2,844 classes).** Named from code evidence: superclass and
  interfaces, string literals and log tags (e.g. `AHU.TRANSPORT_FACTORY`), field/method
  types, enum constants, synthetic owner fields (lambdas/anonymous classes), protobuf
  field structure, and Dagger provided types. These stay in `defpackage` (their original
  packages are not recoverable) but carry descriptive PascalCase names, e.g.
  `clt` → `GalReaderThread`, `cmj` → `TransportFactoryRegistry`, `cqh` → `ImmutableList`.
  Rows whose evidence was thin are marked `[weak]` in the mapping — mostly library
  internals (Guava/Flogger/protobuf-lite/AndroidX) and field-less generated messages.

## Reference rewriting

Renames were applied only in class-reference positions (type declarations, casts,
generics, `new`/`extends`/`implements`, static-access chains, imports, and
`defpackage.X` / `defpackage/X` fully-qualified forms). A stoplist of word-like class
names (`com`, `car`, `dex`, `api`, `ctx`, `add`, …) was restricted to type positions so
package paths (`android.car.Car`, `com.google…`), method calls (`.add(`) and field
names were not corrupted.

Verified after rewriting: 3,377 files; every renamed class's declaration matches its
file name; zero remaining `defpackage.<old-name>` references; package-path corruption
probes all zero.

## Not renamed

- **Local variable names** — jadx derives them from the old types (`bblVar`, `bahVar2`),
  so they still hint at the old names. Renaming variables safely needs a real parser;
  the mapping below makes them easy to resolve manually.
- Classes that were never obfuscated (`com/google/android/projection/...`,
  `com/achour/tweaks/...`, framework trees) are unchanged.

## Mapping

`rename_map.csv` — `old_name, new_fully_qualified_name, tier, evidence` for all 2,916
renamed classes (1,332 Tier B rows are marked `[weak]`).
