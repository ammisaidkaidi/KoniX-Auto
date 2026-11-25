# AutoLinker restack — step-by-step USB test sheet

Baseline: v2 is the trusted USB build. Install the steps **in order**, test USB
after each one, and **stop at the first step where USB breaks** — report just
that step number. All five files were re-checked on 2026-11-24 ~19:20 UTC:
their SHA-256 hashes match the delivered values below, so the files in
`~/workspace/` are the ones to install.

## Files (all aausb-signed, in-place updates)

| Step | File | SHA-256 | Adds over previous |
|------|------|---------|--------------------|
| 1 | `AutoLinker_restack_step1.apk` | `d8be8082c1b43c993f44cc08943b10fe058e4a9f11f5b5449b139187367fe890` | v3 set: replug fixes + true 5 s splash |
| 2 | `AutoLinker_restack_step2.apk` | `f78007c7136e493ce6ea538edf55a692ff74cb669faedc216607fbb8b41f1e96` | v4 set: full-screen panel + transport-mode selector |
| 3 | `AutoLinker_restack_step3.apk` | `5d2eff343d4925c3cd077e45ec731c91121304fd1729b8d7cc3ed33e23f1d607` | v5 set: soft reset, connection log, status header, backup/restore |
| 4 | `AutoLinker_restack_step4.apk` | `9e0d78353a42d08e69e9149220f29a13e95b0dc7d6c304f6d326e5b32869b97f` | v6 set, **with the v8 hardening** (guarded init hooks, self-heal deferred to end of init) |
| 5 | `AutoLinker_restack_step5.apk` | `5f7957e0064b4425d2eb68fd8ac2d7a3a790bf206a89e7d01f8e4f451415b980` | v7 set: screen modes, wide panel grid, side status rail |

Step 4 is the historical prime suspect (USB worked in v5, broke in v6) — but it
already carries the hardened hook placement, so a step-4 failure would indict
the v6 feature logic itself, not the hook positions.

## The 3 tests per step (do all 3 before moving on)

- **A — normal USB plug:** plug the cable, expect Android Auto to connect.
- **B — cold start after power-off during a session** (the exact v6 trigger):
  connect by USB, switch the car off mid-session, switch on, plug the cable
  again. Expect USB to connect — this is the test that matters most at step 4.
- **C — unplug / replug:** during/after a USB session, unplug, wait ~10 s
  (the wireless fallback now waits 8 s and scans for a USB candidate first),
  plug again. Expect USB, not a wireless takeover.

## Logcat — capture only if a step fails

Before the failing test:
```
adb logcat -c
adb logcat -s AATweaks CarCompat AAReceiverCompat AHU.TRANSPORT_FACTORY AHU.GAL_RECEIVER AndroidAutoHeadunitProjectionHandler > restack_stepN.log
```
Then run the failing test, stop the capture, and check for:
- `session gate: blocked duplicate init` (gate fired — duplicate init blocked)
- `resetUsbDevice` while a USB session is starting/active (should not happen)
- `معافاة ذاتية` / self-heal lines around process start (step 4+)

Note: `CarCompat`'s real log tag is `AAReceiverCompat`, so include both tags
or the CarCompat filter catches little.

## Results record

| Step | A plug | B cold start | C replug | Notes / log file |
|------|--------|--------------|----------|------------------|
| 1 | ☐ pass ☐ fail | ☐ pass ☐ fail | ☐ pass ☐ fail | |
| 2 | ☐ pass ☐ fail | ☐ pass ☐ fail | ☐ pass ☐ fail | |
| 3 | ☐ pass ☐ fail | ☐ pass ☐ fail | ☐ pass ☐ fail | |
| 4 | ☐ pass ☐ fail | ☐ pass ☐ fail | ☐ pass ☐ fail | |
| 5 | ☐ pass ☐ fail | ☐ pass ☐ fail | ☐ pass ☐ fail | |

## What to report

Just: **the first failing step number, which test (A/B/C) failed, and the
`restack_stepN.log` file** (or the few log lines above it). The last passing
step is the known-good build to fall back to while the failing step is fixed.
