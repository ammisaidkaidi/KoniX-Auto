package defpackage;

import android.os.SystemClock;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CachedSamplerValue {
    private final DaggerProviderInterface b;
    private final Object a = new Object();
    private int c = 0;
    private long d = 0;

    public CachedSamplerValue(DaggerProviderInterface dnyVar) {
        this.b = dnyVar;
    }

    public static CachedSamplerValue a(DaggerProviderInterface dnyVar) {
        return new CachedSamplerValue(dnyVar);
    }

    public static CachedSamplerValue b(final int i) {
        return a(new DaggerProviderInterface() { // from class: cby
            @Override // defpackage.DaggerProviderInterface
            public final Object a() {
                return Integer.valueOf(NavInstructionTypeEnum);
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
            if (this.PhenotypeFlagMessage < intValue) {
                z = false;
            } else {
                long j = this.d;
                if (SystemClock.elapsedRealtime() - ProtoMessageTwoIntsAndFlagValue <= 1000) {
                    return true;
                }
                z = false;
            }
        }
        return z;
    }
}
