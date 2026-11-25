package defpackage;

import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.os.Trace;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StartupTimingRecorder {
    public static final StartupTimingRecorder a = new StartupTimingRecorder();
    public volatile boolean b;
    public volatile long c;
    public volatile long d;
    public volatile long e;
    public volatile long f;
    public volatile long g;
    public volatile long h;
    public volatile long i;
    public volatile long j;
    public volatile PrimesMetricName k;
    public final StartupLifecycleFlags l = new StartupLifecycleFlags();
    public final StartupTimestampsHolder m = new StartupTimestampsHolder();
    public final StartupTimestampsHolder n = new StartupTimestampsHolder();

    public static void b(String str, long j) {
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.setCounter(str, j - Process.getStartElapsedRealtime());
            Trace.setCounter(str, 0L);
        }
    }

    public final void a() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (!GoogleSignatureVerifier.h() || this.PhenotypeFlagMessage <= 0 || elapsedRealtime > SystemClock.elapsedRealtime()) {
            return;
        }
        if ((this.m.b == null || elapsedRealtime <= this.m.b.longValue()) && this.e == 0) {
            this.e = elapsedRealtime;
            this.l.f = true;
        }
    }
}
