# AutoLinker USB vs wireless race fix — test checklist (for the fixed build)

Use once the separate agent returns a patched build (Fix 1 = single-session
gate in `azy.d`, per `AutoLinker_Race_Fix_Agent_Prompt.md`). Nothing here needs
doing until that build exists.

## Logcat capture (run before each scenario)
```
adb logcat -c
adb logcat -s AATweaks AHU.TRANSPORT_FACTORY AHU.TCP_CONNECTION AHU.GAL_RECEIVER AndroidAutoHeadunitProjectionHandler
```
In a second shell, grep the saved log for the verdict lines:
```
adb logcat -d | grep -E "session gate|resetUsbDevice|Cancelling transportFuture|maybeRestartProjection|sessionsCreated"
```

## Scenarios (in order)
1. **USB only** — plug cable, no wireless trigger. Expect: connects (regression check).
2. **Wireless only** — no cable. Expect: connects (regression check).
3. **Wireless connected, then plug USB.** Expect: exactly one session survives,
   `sessionsCreated` increments exactly once, gate log line appears for the
   losing trigger, no reconnect loop.
4. **USB connected, then wireless triggers** (BT auto-connect). Expect: USB
   session survives untouched, no `resetUsbDevice` during the active/starting
   USB session, no `Cancelling transportFuture` for the winning session.

## Pass criteria (all four)
- `sessionsCreated` increments **exactly once** per scenario 3–4.
- Gate log line (`session gate: blocked duplicate init`) appears for the loser.
- **No** `resetUsbDevice` during an active/starting USB session.
- **No** `Cancelling transportFuture` for the winning session, no repeated
  `maybeRestartProjection` loop in `UsbDetachedReceiver`.

## If it still fails
- Note which scenario, which log lines appeared, and whether the gate line
  fired at all — that separates "gate missing" from "gate fired but session
  still died" (points at the shared `WirelessSocketProvider` accept thread or
  the `clq` teardown unregistering the shared USB receiver).
- Immediate workaround until fixed: disable one transport from the Bubble
  panel (`P.usb()` / `P.wifi()`), whichever you are not using.
