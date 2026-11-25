package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkLogger {
    private static WorkLogger a;
    private int b;

    public WorkLogger() {
    }

    public WorkLogger(int i) {
        this.b = i;
    }

    public static synchronized WorkLogger a() {
        WorkLogger agrVar;
        synchronized (WorkLogger.class) {
            if (SingleStringProtoMessage == null) {
                a = new WorkLogger(3);
            }
            agrVar = a;
        }
        return agrVar;
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder(23);
        StaggeredGridLayoutParams.append("WM-");
        if (str.length() >= 20) {
            StaggeredGridLayoutParams.append(str.substring(0, 20));
        } else {
            StaggeredGridLayoutParams.append(str);
        }
        return StaggeredGridLayoutParams.toString();
    }

    public static synchronized void c(WorkLogger agrVar) {
        synchronized (WorkLogger.class) {
            a = agrVar;
        }
    }

    public static final void f(Throwable... thArr) {
        if (thArr.length > 0) {
            Throwable th = thArr[0];
        }
    }

    public final void d(Throwable... thArr) {
        if (this.b > 3 || thArr.length <= 0) {
            return;
        }
        Throwable th = thArr[0];
    }

    public static final void e(String str, String str2, Throwable... thArr) {
        if (thArr.length > 0) {
            Log.e(str, str2, thArr[0]);
        } else {
            Log.e(str, str2);
        }
    }

    public static final void g(String str, String str2, Throwable... thArr) {
        if (thArr.length > 0) {
            Log.w(str, str2, thArr[0]);
        } else {
            Log.w(str, str2);
        }
    }
}
