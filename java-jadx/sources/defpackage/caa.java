package defpackage;

import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.os.Trace;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class caa {
    public static final caa a = new caa();
    public volatile boolean b;
    public volatile long c;
    public volatile long d;
    public volatile long e;
    public volatile long f;
    public volatile long g;
    public volatile long h;
    public volatile long i;
    public volatile long j;
    public volatile btx k;
    public final bzz l = new bzz();
    public final bzs m = new bzs();
    public final bzs n = new bzs();

    public static void b(String str, long j) {
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.setCounter(str, j - Process.getStartElapsedRealtime());
            Trace.setCounter(str, 0L);
        }
    }

    public final void a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (!bjq.h() || this.c <= 0 || elapsedRealtime > SystemClock.elapsedRealtime()) {
            return;
        }
        if ((this.m.b == null || elapsedRealtime <= this.m.b.longValue()) && this.e == 0) {
            this.e = elapsedRealtime;
            this.l.f = true;
        }
    }
}
