package defpackage;

import java.lang.reflect.InvocationTargetException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LoggingPlatformLoader {
    public static final FloggerPlatformFinder a;

    static {
        String[] strArr;
        strArr = cva.d;
        a = a(strArr);
    }

    private static FloggerPlatformFinder a(String[] strArr) {
        FloggerPlatformFinder cvaVar;
        try {
            cvaVar = LogConfigProvider.f();
        } catch (NoClassDefFoundError e) {
            cvaVar = null;
        }
        if (cvaVar != null) {
            return cvaVar;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : strArr) {
            try {
                return (FloggerPlatformFinder) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Throwable th) {
                th = th;
                if (ActivityResultDispatchRunnable instanceof InvocationTargetException) {
                    th = ActivityResultDispatchRunnable.getCause();
                }
                StaggeredGridLayoutParams.append('\n');
                StaggeredGridLayoutParams.append(str);
                StaggeredGridLayoutParams.append(": ");
                StaggeredGridLayoutParams.append(ActivityResultDispatchRunnable);
            }
        }
        throw new IllegalStateException(StaggeredGridLayoutParams.insert(0, "No logging platforms found:").toString());
    }
}
