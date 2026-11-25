package defpackage;

import android.content.Context;
import android.os.PowerManager;
import java.util.HashMap;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkWakeLocks {
    private static final String a = WorkLogger.b("WakeLocks");
    private static final WeakHashMap b = new WeakHashMap();

    public static PowerManager.WakeLock a(Context context, String str) {
        String concat = "WorkManager: ".concat(String.valueOf(str));
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getApplicationContext().getSystemService("power")).newWakeLock(1, concat);
        WeakHashMap weakHashMap = b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, concat);
        }
        return newWakeLock;
    }

    public static void b() {
        HashMap hashMap = new HashMap();
        WeakHashMap weakHashMap = b;
        synchronized (weakHashMap) {
            hashMap.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                String format = String.format("WakeLock held for %s", hashMap.get(wakeLock));
                WorkLogger.a();
                WorkLogger.g(a, format, new Throwable[0]);
            }
        }
    }
}
