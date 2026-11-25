package defpackage;

import android.os.SystemClock;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TimerRecordingState {
    public static final TimerRecordingState a = new TimerRecordingState();
    public final long b;
    public long c;
    boolean d;
    public int e;

    public TimerRecordingState() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.c = -1L;
        this.e = 1;
        this.d = false;
        this.b = elapsedRealtime;
    }

    public static boolean b(TimerRecordingState caqVar) {
        return caqVar == null || caqVar == a;
    }

    final long a() {
        return this.c - this.b;
    }
}
