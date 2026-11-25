package defpackage;

import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class agr {
    private static agr a;
    private int b;

    public agr() {
    }

    public agr(int i) {
        this.b = i;
    }

    public static synchronized agr a() {
        agr agrVar;
        synchronized (agr.class) {
            if (a == null) {
                a = new agr(3);
            }
            agrVar = a;
        }
        return agrVar;
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (str.length() >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public static synchronized void c(agr agrVar) {
        synchronized (agr.class) {
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
