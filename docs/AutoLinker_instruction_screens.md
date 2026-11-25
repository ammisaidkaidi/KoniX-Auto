# AutoLinker — Instruction / Guidance Screens Inventory

Scope: screens whose content is **text only, or text + button(s)** (± one icon), whose purpose is to
give the user instructions/guidance, typically on a **black background**.
Source tree: `~/workspace/build/restack_src` (final build decode), cross-checked against jadx sources
in `~/workspace/decompile_AutoLinker`.

**Background evidence (applies to all matched screens):** every matched layout sets its root
`android:background="?android:colorBackground"`. The application theme `AppTheme`
(`res/values/styles.xml`) maps `android:colorBackground` to `@color/colorBackground`, and
`res/values/colors.xml` defines `colorBackground = #ff000000` — **pure black**. All matched screens
also share the `Widget.FullscreenMessage.*` style family (centered icon + centered text + pill button).

## Matched screens (4)

| # | Layout file | Host activity | Background | Exact text(s) | Button(s) | Purpose |
|---|---|---|---|---|---|---|
| 1 | `res/layout/error_screen_layout.xml` | `com.google.android.apps.auto.aareceiver.ui.ErrorMessageActivity` (setContentView verified in smali + jadx) | `?android:colorBackground` → `#ff000000` (black) | Set **at runtime** from intent extra `extra_message`. Fallback/standard value: **"To use Android Auto, park and follow the instructions on your phone"** (`@string/instruct_user_to_check_phone`, also the layout's built-in default). Otherwise the text is an error string **supplied by the phone itself** over the wireless protocol (WifiConnectStatus message, via WirelessDiscoveryController). Icon: `@drawable/ic_phone_instructions` | **"Cancel"** (`@android:string/cancel`, id `error_btn_cancel` → finishes the activity) | Generic full-screen error/guidance screen shown when a (wireless) connection attempt fails and the user must act on the phone |
| 2 | `res/layout/frx_layout.xml` | Embedded overlay inside `com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity` — pulled in via `<include layout="@layout/frx_layout">` in `android_auto_headunit_activity.xml`, initially `visibility=gone` | `?android:colorBackground` → `#ff000000` (black) | **"To use Android Auto, park and follow the instructions on your phone"** (`@string/instruct_user_to_check_phone`). Icon: `@drawable/ic_phone_instructions` | **"Cancel"** (`@android:string/cancel`, id `btn_cancel`; `gone` in the layout — the activity makes it visible only when a flag enables cancelling the starting session; tapping it ends the session and finishes) | First-run / pre-first-frame guidance overlay shown over the projection surface while the first session starts: complete the setup on the phone |
| 3 | `res/layout/missing_permissions.xml` | `com.google.android.apps.auto.aareceiver.ui.MissingPermissionsActivity` (setContentView verified in smali + jadx) | `?android:colorBackground` → `#ff000000` (black) | **"To use Android Auto, you must grant required permissions in Settings"** (`@string/missing_permissions`). Icon: `@drawable/ic_warning` | **"Settings"** (`@string/settings` → opens this app's system App-info/Settings page; hidden by code if no Settings activity resolves) and **"Exit"** (`@string/exit` → finishes) | Hard-stop guidance when the app lacks required (privileged) permissions |
| 4 | `res/layout/ssl_error_message.xml` | `com.google.android.apps.auto.aareceiver.ui.SslCertificateIssueActivity` (setContentView verified in smali + jadx) | `?android:colorBackground` → `#ff000000` (black) | **"Can't connect to Android Auto. Try updating date, time, or system software."** (`@string/ssl_error_help`). Icon: `@drawable/ic_warning` | **"Settings"** (`@string/settings` → opens system Settings) and **"Exit"** (`@string/exit` → finishes) | Guidance when the TLS/certificate handshake with the phone fails — in practice usually a wrong head-unit date/time |

## Borderline (1)

| Layout file | Host activity | Why borderline |
|---|---|---|
| `res/layout/waiting_for_connection_activity.xml` | `com.google.android.apps.auto.aareceiver.ui.WaitingForConnectionActivity` | Composition fits exactly (icon `@drawable/ic_android_auto_mono_tint` + text **"Connecting Android Auto with phone…"** (`@string/connecting_to_phone`) + **"Cancel"** button, `gone` unless wireless-cancel applies), **but the background is an image** — `@drawable/splash_banner_wide` (the wide banner), not black — so it fails the black-background criterion |

## Excluded (notable)

| Screen / layout | Reason excluded |
|---|---|
| `res/layout/disambiguation_screen.xml` (+ `disambiguation_row.xml`) — `ProjectionDeviceDisambiguationActivity` | Same black background, but the root is an empty container filled at runtime with device rows: main content is a **device list/picker**, not text-only guidance |
| `res/layout/android_auto_headunit_activity.xml` — `AndroidAutoHeadunitActivity`; `res/layout/cluster_activity.xml` — `ClusterActivity` | **Projection screens**: main content is a video `SurfaceView` (the frx overlay inside the headunit layout is counted separately as match #2) |
| `res/layout/settings_activity.xml` and all `preference*.xml` / `car_ui_preference*.xml` layouts — `SettingsActivity` | Settings/preference screens (lists of controls), per instructions |
| `res/layout/libraries_social_licenses_license_activity.xml` — `com.google.android.libraries.social.licenses.LicenseActivity` | Text-only (one monospace TextView in a ScrollView), but it is a **legal license-text viewer**, not user guidance; theme is AppCompat DayNight, so not black by construction |
| `res/layout/car_ui_list_limiting_message.xml` | Single-TextView message, but it is a CarUi **library list component** (limiting notice shown inside lists), not a standalone screen |
| Bubble tweak panel (built in code, `com.achour.tweaks.Bubble`) | Tweak settings panel, per instructions |
| All `abc_*` / remaining `car_ui_*` library layouts | AppCompat/CarUi library building blocks (menus, dialogs parts, list items), not standalone app screens |

## Secondary sweep — code-built instruction screens

No `AlertDialog`/`setMessage`-based standalone guidance screens exist in the aareceiver code
(grep over the jadx sources: no hits). The only dynamic-text case is `ErrorMessageActivity`
(match #1), whose message arrives via intent extra. Toast messages in the tweak code
(`com.achour.tweaks.*`) are transient notifications, not screens, and are not counted.

## Totals

- **Matched: 4** (error_screen_layout, frx_layout, missing_permissions, ssl_error_message)
- **Borderline: 1** (waiting_for_connection_activity — fits composition, background is an image)
- All matched screens share: black `#ff000000` background, one icon, one centered instruction
  text, and pill-shaped button(s), all from the `Widget.FullscreenMessage` style family.
