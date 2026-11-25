package defpackage;

import android.os.SystemClock;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cbz {
    private final dny b;
    private final Object a = new Object();
    private int c = 0;
    private long d = 0;

    public cbz(dny dnyVar) {
        this.b = dnyVar;
    }

    public static cbz a(dny dnyVar) {
        return new cbz(dnyVar);
    }

    public static cbz b(final int i) {
        return a(new dny() { // from class: cby
            @Override // defpackage.dny
            public final Object a() {
                return Integer.valueOf(i);
            }
        });
    }

    public final void c() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        synchronized (this.a) {
            this.c++;
            if (elapsedRealtime - this.d > 1000) {
                this.c = 0;
                this.d = elapsedRealtime;
            }
        }
    }

    public final boolean d() {
        boolean z;
        int intValue = ((Integer) this.b.a()).intValue();
        if (intValue == 0) {
            return true;
        }
        if (intValue == Integer.MAX_VALUE) {
            return false;
        }
        synchronized (this.a) {
            if (this.c < intValue) {
                z = false;
            } else {
                long j = this.d;
                if (SystemClock.elapsedRealtime() - j <= 1000) {
                    return true;
                }
                z = false;
            }
        }
        return z;
    }
}
