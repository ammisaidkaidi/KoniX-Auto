package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SharedSecretsStackGetter {
    private static final Object a;

    static {
        Object c = c();
        a = c;
        if (PhenotypeFlagMessage != null) {
            d("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        if (PhenotypeFlagMessage == null) {
            return;
        }
        e(PhenotypeFlagMessage);
    }

    public static void a(Throwable th, Class cls) {
        if (GalTransportThread.isInstance(ActivityResultDispatchRunnable)) {
            throw ((Throwable) GalTransportThread.cast(ActivityResultDispatchRunnable));
        }
        b(ActivityResultDispatchRunnable);
    }

    public static void b(Throwable th) {
        if (ActivityResultDispatchRunnable instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (ActivityResultDispatchRunnable instanceof Error) {
            throw ((Error) th);
        }
    }

    private static Object c() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    private static Method d(String str, Class... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    private static void e(Object obj) {
        try {
            Method d = d("getStackTraceDepth", Throwable.class);
            if (ProtoMsgIntStringInt == null) {
                return;
            }
            d.invoke(obj, new Throwable());
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
        }
    }
}
