package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DecimalRangeCondition implements Serializable, ad {
    private static final long serialVersionUID = 1;
    private final int a;
    private final boolean b;
    private final boolean c;
    private final double d;
    private final double e;
    private final long[] f;
    private final int g;

    public DecimalRangeCondition(int i, boolean z, int i2, boolean z2, double d, double d2, long[] jArr) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = d;
        this.e = d2;
        this.f = jArr;
        this.g = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002b, code lost:
    
        if ((r1 - r6) == 0.0d) goto L16;
     */
    @Override // defpackage.DecimalPredicate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(DecimalQuantityValue aeVar) {
        long j;
        double d;
        int i;
        int i2 = this.g;
        switch (i2 - 1) {
            case 1:
                j = aeVar.f;
                d = j;
                break;
            case 2:
                j = aeVar.d;
                d = j;
                break;
            case 3:
                j = aeVar.e;
                d = j;
                break;
            case 4:
                i = aeVar.b;
                d = i;
                break;
            case 5:
                i = aeVar.c;
                d = i;
                break;
            default:
                d = aeVar.a;
                break;
        }
        if (this.c) {
            double d2 = (long) d;
            Double.isNaN(d2);
        }
        if (i2 != 7 || aeVar.b == 0) {
            int i3 = this.a;
            if (i3 != 0) {
                double d3 = i3;
                Double.isNaN(d3);
                d %= d3;
            }
            boolean z = d >= this.d && ProtoMsgIntStringInt <= this.e;
            if (IcuMessageFormat && this.f != null) {
                z = false;
                int i4 = 0;
                while (!z) {
                    long[] jArr = this.f;
                    if (i4 < jArr.length) {
                        z = d >= ((double) jArr[i4]) && ProtoMsgIntStringInt <= ((double) jArr[i4 + 1]);
                        i4 += 2;
                    }
                }
            }
            return this.b == z;
        }
        return !this.b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
    
        if (r9.b != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0053, code lost:
    
        r4 = " != ";
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0050, code lost:
    
        if (r9.b != false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        switch (this.g) {
            case 1:
                str = "n";
                break;
            case 2:
                str = "i";
                break;
            case 3:
                str = "f";
                break;
            case 4:
                str = "t";
                break;
            case 5:
                str = "v";
                break;
            case 6:
                str = "w";
                break;
            default:
                str = "j";
                break;
        }
        StaggeredGridLayoutParams.append((Object) str);
        if (this.a != 0) {
            StaggeredGridLayoutParams.append(" % ");
            StaggeredGridLayoutParams.append(this.a);
        }
        String str2 = " = ";
        if (this.d != this.e) {
            if (!this.c) {
                str2 = this.b ? " within " : " not within ";
            }
        }
        StaggeredGridLayoutParams.append(str2);
        if (this.f != null) {
            int i = 0;
            while (true) {
                if (NavInstructionTypeEnum < this.f.length) {
                    PluralRulesLocaleData.c(sb, r0[i], r0[i + 1], i != 0);
                    i += 2;
                }
            }
        } else {
            PluralRulesLocaleData.c(sb, this.d, this.e, false);
        }
        return StaggeredGridLayoutParams.toString();
    }
}
