package defpackage;

import android.view.MotionEvent;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bhd {
    private static final csz a = csz.g("com/google/android/apps/auto/aareceiver/video/latencychecker/VideoLatencyChecker");
    private final int[] b = new int[2];
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private long f = 0;
    private long g = 0;
    private long h = 0;
    private long i = 0;
    private long j = 0;
    private long k = 0;
    private boolean l = false;
    private long m = 0;

    public final synchronized void a(long j) {
        this.i = xr.d();
        if (this.j != j) {
            if (this.k == j) {
                ((csx) a.c().h("com/google/android/apps/auto/aareceiver/video/latencychecker/VideoLatencyChecker", "onDecodingFinish", 154, "VideoLatencyChecker.java")).D(TimeUnit.NANOSECONDS.toMillis(this.i - this.g));
            }
        } else {
            this.m = TimeUnit.NANOSECONDS.toMillis(this.i - this.f);
            ((csx) a.c().h("com/google/android/apps/auto/aareceiver/video/latencychecker/VideoLatencyChecker", "onDecodingFinish", 142, "VideoLatencyChecker.java")).u("**Latency measurement (ms) ** Input event to encoded frame: %d, Video output decoding latency: %d, Total latency: %d", Long.valueOf(TimeUnit.NANOSECONDS.toMillis(this.h - this.f)), Long.valueOf(TimeUnit.NANOSECONDS.toMillis(this.i - this.h)), Long.valueOf(this.m));
            this.l = false;
            this.f = 0L;
        }
    }

    public final synchronized void b(int i, long j) {
        int i2 = this.e;
        if (i2 > 0) {
            this.e = i2 - 1;
            return;
        }
        int i3 = this.d;
        if (i3 > 0 && this.l && i > i3 * 4 && i > 4096) {
            this.h = xr.d();
            this.j = j;
            this.e = 2;
            return;
        }
        if (this.k == 0) {
            this.k = j;
        }
        int[] iArr = this.b;
        int i4 = this.c;
        this.d = i3 + ((i - iArr[i4]) / 2);
        iArr[i4] = i;
        int i5 = i4 + 1;
        this.c = i5;
        if (i5 >= 2) {
            this.c = 0;
        }
    }

    public final synchronized void c(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.l = false;
            this.e = 0;
        } else {
            if (!this.l) {
                this.f = xr.d();
                this.l = true;
            }
        }
    }

    public final synchronized void d() {
        if (!this.l) {
            this.g = xr.d();
        }
    }
}
