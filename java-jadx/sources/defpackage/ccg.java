package defpackage;

import android.os.SystemClock;
import java.util.Random;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ccg extends cci {
    private final Random a;
    private final long b;
    private final cbr c;

    public ccg(dpy dpyVar, Random random, cbr cbrVar) {
        super(dpyVar);
        this.a = random;
        this.b = dpyVar.b;
        this.c = cbrVar;
    }

    @Override // defpackage.cci
    public final long a(String str) {
        long j;
        if (coe.d(str)) {
            j = this.b;
        } else {
            cbr cbrVar = this.c;
            long elapsedRealtime = SystemClock.elapsedRealtime() - cbrVar.d;
            if (elapsedRealtime >= 14400000) {
                long j2 = elapsedRealtime / 14400000;
                long max = Math.max(j2, 15L);
                for (int i = 0; i < 256; i++) {
                    short[] sArr = cbrVar.a;
                    int i2 = (int) max;
                    int i3 = sArr[i] >> i2;
                    sArr[i] = (short) i3;
                    cbrVar.b[i] = (short) (i3 >> i2);
                }
                cbrVar.d += j2 * 14400000;
            }
            int hashCode = str.hashCode() * cbrVar.c;
            int charAt = ((hashCode >>> 24) + (str.isEmpty() ? (char) 0 : str.charAt(0))) & 255;
            int length = ((hashCode >>> 16) + str.length()) & 255;
            int min = Math.min((int) cbrVar.a[charAt], (int) cbrVar.b[length]);
            int i4 = min + 1;
            short min2 = (short) Math.min(32767, i4);
            short[] sArr2 = cbrVar.a;
            if (sArr2[charAt] == min) {
                sArr2[charAt] = min2;
            }
            short[] sArr3 = cbrVar.b;
            if (sArr3[length] == min) {
                sArr3[length] = min2;
            }
            double sqrt = i4 < 50 ? Math.sqrt(i4) : i4;
            double d = this.b;
            Double.isNaN(d);
            j = (int) (d / sqrt);
        }
        if (this.a.nextDouble() * 1000.0d < j) {
            return j;
        }
        return -1L;
    }

    @Override // defpackage.cci
    public final dpy b(Long l) {
        return c() ? e(l) : d();
    }

    @Override // defpackage.cci
    public final boolean c() {
        return this.b > 0;
    }
}
