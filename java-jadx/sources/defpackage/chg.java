package defpackage;

import android.util.Log;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class chg {
    private static final Method a;

    static {
        Method method = null;
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                method = cls.getMethod("get", String.class, String.class);
                try {
                    cls.getMethod("getInt", String.class, Integer.TYPE);
                    cls.getMethod("getLong", String.class, Long.TYPE);
                    cls.getMethod("getBoolean", String.class, Boolean.TYPE);
                    a = method;
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    a = method;
                }
            } catch (Throwable th) {
                th = th;
                a = null;
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
            a = null;
            throw th;
        }
    }

    public static String a() {
        try {
            return (String) a.invoke(null, "tiktok_systrace", "false");
        } catch (Exception e) {
            Log.e("SystemProperties", "get error", e);
            return "false";
        }
    }
}
