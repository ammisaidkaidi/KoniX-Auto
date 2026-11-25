package com.achour.tweaks;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class P {
    public static final String FILE = "achour_tweaks";
    private static final long QUICK_DROP_MS = 20000;
    private static final long SUPPRESS_MS = 300000;
    private static Context app;
    private static long attemptAt;
    private static boolean logged;
    private static long rfcommAt;
    private static Object runnerIntent;
    private static Object runnerMgr;
    private static SharedPreferences sp;
    private static long upAt;
    private static boolean watchdogOn;

    public static synchronized void init(Context context) {
        synchronized (P.class) {
            if (context != null) {
                if (app == null) {
                    app = context.getApplicationContext();
                }
            }
            if (sp == null) {
                Context context2 = app;
                if (context2 == null) {
                    context2 = currentApp();
                }
                if (context2 != null) {
                    Context applicationContext = context2.getApplicationContext();
                    app = applicationContext;
                    Context context3 = null;
                    try {
                        context3 = applicationContext.createDeviceProtectedStorageContext();
                    } catch (Throwable th) {
                    }
                    if (context3 == null) {
                        context3 = app;
                    }
                    sp = context3.getSharedPreferences(FILE, 0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Context currentApp() {
        try {
            return (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    private static SharedPreferences sp() {
        if (sp == null) {
            init(null);
        }
        return sp;
    }

    private static int gi(String str, int i) {
        try {
            return sp().getInt(str, i);
        } catch (Throwable th) {
            return i;
        }
    }

    private static boolean gb(String str, boolean z) {
        try {
            return sp().getBoolean(str, z);
        } catch (Throwable th) {
            return z;
        }
    }

    private static void pb(String str, boolean z) {
        try {
            sp().edit().putBoolean(str, z).apply();
        } catch (Throwable th) {
        }
    }

    public static int fps() {
        return gi("fps", 0);
    }

    public static void setFps(int i) {
        try {
            sp().edit().putInt("fps", i).apply();
        } catch (Throwable th) {
        }
    }

    public static boolean adv5() {
        return gb("adv5", true);
    }

    public static void setAdv5(boolean z) {
        pb("adv5", z);
    }

    public static boolean usb() {
        return gb("usb", true);
    }

    public static void setUsb(boolean z) {
        pb("usb", z);
    }

    public static boolean wifi() {
        return gb("wifi", true);
    }

    public static void setWifi(boolean z) {
        pb("wifi", z);
    }

    public static boolean bubble() {
        return gb("bubble", true);
    }

    public static void setBubble(boolean z) {
        pb("bubble", z);
    }

    public static List<Integer> channels() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(2412);
        arrayList.add(2437);
        arrayList.add(2462);
        if (adv5()) {
            arrayList.add(5180);
            arrayList.add(5200);
            arrayList.add(5220);
            arrayList.add(5240);
        }
        return arrayList;
    }

    private static SharedPreferences ap() {
        try {
            Context context = app;
            if (context == null) {
                context = currentApp();
            }
            if (context == null) {
                return null;
            }
            Context createDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
            if (createDeviceProtectedStorageContext == null) {
                createDeviceProtectedStorageContext = context;
            }
            return createDeviceProtectedStorageContext.getSharedPreferences(context.getPackageName() + "_preferences", 0);
        } catch (Throwable th) {
            return null;
        }
    }

    public static String ssid() {
        try {
            return ap().getString("aa_v8_ap_ssid", "");
        } catch (Throwable th) {
            return "";
        }
    }

    public static String psk() {
        try {
            return ap().getString("aa_v8_ap_psk", "");
        } catch (Throwable th) {
            return "";
        }
    }

    public static void setCreds(String str, String str2) {
        try {
            SharedPreferences.Editor edit = ap().edit();
            if (str != null && str.length() > 3) {
                edit.putString("aa_v8_ap_ssid", str);
            }
            if (str2 != null && str2.length() >= 8) {
                edit.putString("aa_v8_ap_psk", str2);
            }
            edit.apply();
        } catch (Throwable th) {
        }
    }

    private static long gl(String str) {
        try {
            return sp().getLong(str, 0L);
        } catch (Throwable th) {
            return 0L;
        }
    }

    private static void pl(String str, long j) {
        try {
            sp().edit().putLong(str, j).apply();
        } catch (Throwable th) {
        }
    }

    public static boolean enabled() {
        return gb("enabled", true);
    }

    public static void setEnabled(boolean z) {
        pb("enabled", z);
        if (z) {
            clearQuiet();
            applyRunner(true);
        } else {
            applyRunner(false);
        }
        Log.i("AATweaks", "app enabled=" + z);
    }

    public static boolean autoRepair() {
        return gb("autorepair", true);
    }

    public static void setAutoRepair(boolean z) {
        pb("autorepair", z);
    }

    public static boolean autoRetry() {
        return gb("autoretry", true);
    }

    public static void setAutoRetry(boolean z) {
        pb("autoretry", z);
        if (!z) {
            applyRunner(false);
        } else {
            clearQuiet();
            applyRunner(true);
        }
    }

    private static long quietUntil() {
        return gl("quiet_until");
    }

    public static long suppressedLeftMs() {
        long quietUntil = quietUntil() - System.currentTimeMillis();
        if (quietUntil > 0) {
            return quietUntil;
        }
        return 0L;
    }

    public static synchronized void clearQuiet() {
        synchronized (P.class) {
            pl("quiet_until", 0L);
            pl("fails", 0L);
        }
    }

    public static synchronized void quietFor(long j) {
        synchronized (P.class) {
            pl("quiet_until", System.currentTimeMillis() + j);
            pl("fails", 0L);
            applyRunner(false);
        }
    }

    public static void suppressNow(long j) {
        quietFor(j);
    }

    public static void rememberRunner(Object obj, Object obj2) {
        runnerMgr = obj;
        runnerIntent = obj2;
    }

    private static void applyRunner(boolean z) {
        try {
            Object obj = runnerMgr;
            if (obj != null && runnerIntent != null) {
                obj.getClass().getMethod(z ? "registerProjectionRunner" : "unregisterProjectionRunner", Intent.class).invoke(runnerMgr, runnerIntent);
                Log.i("AATweaks", (z ? "re-registered" : "unregistered") + " projection runner");
            }
        } catch (Throwable th) {
            Log.w("AATweaks", "runner toggle failed: " + th);
        }
    }

    public static synchronized boolean allowAutoLaunch() {
        synchronized (P.class) {
            if (enabled() && autoRetry()) {
                if (suppressedLeftMs() > 0) {
                    if (!logged) {
                        logged = true;
                        Log.i("AATweaks", "auto-launch suppressed, left=" + (suppressedLeftMs() / 1000) + "s");
                    }
                    return false;
                }
                if (logged) {
                    logged = false;
                    applyRunner(true);
                }
                return true;
            }
            return false;
        }
    }

    public static synchronized void onRfcommUp() {
        synchronized (P.class) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            upAt = elapsedRealtime;
            rfcommAt = elapsedRealtime;
        }
    }

    public static synchronized void onWirelessAttempt() {
        synchronized (P.class) {
            attemptAt = SystemClock.elapsedRealtime();
            if (watchdogOn) {
                return;
            }
            watchdogOn = true;
            Thread thread = new Thread(new Runnable() { // from class: com.achour.tweaks.P.1
                /* JADX WARN: Code restructure failed: missing block: B:31:0x008e, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:38:0x0047, code lost:
                
                    if (com.achour.tweaks.P.rfcommAt == 0) goto L30;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:41:0x0053, code lost:
                
                    if (com.achour.tweaks.P.rfcommAt < com.achour.tweaks.P.attemptAt) goto L30;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:43:0x0058, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:44:0x0059, code lost:
                
                    android.util.Log.i("AATweaks", "no RFCOMM after 2min -> repairing BT pairing");
                 */
                /* JADX WARN: Code restructure failed: missing block: B:45:0x0062, code lost:
                
                    if (com.achour.tweaks.P.app == null) goto L33;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:46:0x0064, code lost:
                
                    r1 = com.achour.tweaks.P.app;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:47:0x006d, code lost:
                
                    if (r1 == null) goto L36;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:48:0x006f, code lost:
                
                    com.achour.tweaks.Bt.repair(r1, false);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:50:0x0069, code lost:
                
                    r1 = com.achour.tweaks.P.currentApp();
                 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void run() {
                    int i = 0;
                    while (true) {
                        if (i >= 8) {
                            break;
                        }
                        try {
                            Thread.sleep(15000L);
                            if (P.rfcommAt != 0 && P.rfcommAt >= P.attemptAt) {
                                return;
                            }
                            if (!P.enabled() || !P.wifi() || !P.autoRepair()) {
                                break;
                            } else {
                                i++;
                            }
                        } finally {
                        }
                        try {
                        } finally {
                        }
                    }
                }
            }, "AATweaks-Watch");
            thread.setDaemon(true);
            thread.start();
        }
    }

    public static synchronized void onRfcommDown() {
        synchronized (P.class) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = upAt;
            long j2 = j > 0 ? elapsedRealtime - j : Long.MAX_VALUE;
            upAt = 0L;
            long gl = j2 < QUICK_DROP_MS ? gl("fails") + 1 : 0L;
            if (gl >= 2) {
                quietFor(SUPPRESS_MS);
                Log.i("AATweaks", "2 quick drops -> quiet 5 min (runner unregistered)");
            } else {
                pl("fails", gl);
            }
        }
    }
}
