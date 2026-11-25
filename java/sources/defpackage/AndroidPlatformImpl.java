package defpackage;

import android.os.Build;
import android.util.Log;
import dalvik.system.VMStack;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AndroidPlatformImpl extends FloggerPlatformFinder {
    private static final boolean a = RuntimeEnvironmentCheck.a();
    private static final boolean b;
    private static final LoggingPlatformBase c;

    static {
        boolean z = true;
        if (Build.FINGERPRINT != null && !"robolectric".equals(Build.FINGERPRINT)) {
            z = false;
        }
        b = z;
        Log.class.getName();
        c = new AndroidLoggingPlatform();
    }

    static Class p() {
        return VMStack.getStackClass2();
    }

    static String q() {
        try {
            return VMStack.getStackClass2().getName();
        } catch (Throwable th) {
            return null;
        }
    }

    static boolean t() {
        try {
            Class.forName("dalvik.system.VMStack").getMethod("getStackClass2", new Class[0]);
            return RuntimeEnvironmentCheck.class.getName().equals(q());
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // defpackage.FloggerPlatformFinder
    protected LoggerBackend e(String str) {
        if (AndroidLoggerBackend.a.get() != null) {
            return ((LoggerBackendFactory) AndroidLoggerBackend.a.get()).a(str);
        }
        AndroidLoggerBackend cvnVar = new AndroidLoggerBackend(str.replace('$', '.'));
        PendingLogQueue.a.offer(cvnVar);
        if (AndroidLoggerBackend.a.get() == null) {
            return cvnVar;
        }
        AndroidLoggerBackend.e();
        return cvnVar;
    }

    @Override // defpackage.FloggerPlatformFinder
    protected LoggingPlatformBase h() {
        return c;
    }

    @Override // defpackage.FloggerPlatformFinder
    protected LogConfigProvider j() {
        return cvo.a;
    }

    @Override // defpackage.FloggerPlatformFinder
    protected String m() {
        return "platform: Android";
    }
}
