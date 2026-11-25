package defpackage;

import j$.util.function.BooleanSupplier;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class azl implements BooleanSupplier {
    final dao a;

    public azl(dao daoVar) {
        this.a = daoVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4  */
    @Override // j$.util.function.BooleanSupplier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean getAsBoolean() {
        boolean z;
        dao daoVar = this.a;
        long max = Math.max(TimeUnit.MICROSECONDS.toMicros(0L), 0L);
        synchronized (daoVar.b()) {
            long a = daoVar.a.a();
            if (daoVar.e - max > a) {
                return false;
            }
            daoVar.c(a);
            long j = daoVar.e;
            double min = Math.min(1.0d, daoVar.b);
            long j2 = (long) ((1.0d - min) * daoVar.d);
            long j3 = daoVar.e;
            long j4 = j3 + j2;
            daoVar.e = (((j2 ^ j3) > 0L ? 1 : ((j2 ^ j3) == 0L ? 0 : -1)) < 0) | (((j3 ^ j4) > 0L ? 1 : ((j3 ^ j4) == 0L ? 0 : -1)) >= 0) ? j4 : ((j4 >>> 63) ^ 1) + Long.MAX_VALUE;
            daoVar.b -= min;
            long max2 = Math.max(j - a, 0L);
            if (max2 <= 0) {
                return true;
            }
            try {
                long nanos = TimeUnit.MICROSECONDS.toNanos(max2);
                long nanoTime = System.nanoTime() + nanos;
                boolean z2 = false;
                while (true) {
                    try {
                        TimeUnit.NANOSECONDS.sleep(nanos);
                        break;
                    } catch (InterruptedException e) {
                        try {
                            nanos = nanoTime - System.nanoTime();
                            z2 = true;
                        } catch (Throwable th) {
                            th = th;
                            z = true;
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z = z2;
                        if (z) {
                        }
                        throw th;
                    }
                }
                if (!z2) {
                    return true;
                }
                Thread.currentThread().interrupt();
                return true;
            } catch (Throwable th3) {
                th = th3;
                z = false;
            }
        }
    }
}
