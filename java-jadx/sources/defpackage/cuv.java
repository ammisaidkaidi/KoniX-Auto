package defpackage;

import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cuv extends cux {
    public final int[] a;
    public final int b;
    private final cug d;
    private final cug e;

    public cuv(cug cugVar, cug cugVar2) {
        this.d = cugVar;
        this.e = cugVar2;
        int b = cugVar2.b();
        hf.v(b <= 28, "metadata size too large");
        int[] iArr = new int[b];
        this.a = iArr;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (i < iArr.length) {
            ctt d = d(i);
            long j2 = d.c | j;
            if (j2 == j) {
                int i3 = 0;
                while (true) {
                    if (i3 >= i2) {
                        i3 = -1;
                        break;
                    } else if (d.equals(d(iArr[i3] & 31))) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i3 != -1) {
                    iArr[i3] = d.b ? iArr[i3] | (1 << (i + 4)) : i;
                    i++;
                    j = j2;
                }
            }
            iArr[i2] = i;
            i2++;
            i++;
            j = j2;
        }
        this.b = i2;
    }

    @Override // defpackage.cux
    public final int a() {
        return this.b;
    }

    @Override // defpackage.cux
    public final Set b() {
        return new cut(this);
    }

    @Override // defpackage.cux
    public final void c(cun cunVar, Object obj) {
        for (int i = 0; i < this.b; i++) {
            int i2 = this.a[i];
            ctt d = d(i2 & 31);
            if (d.b) {
                cunVar.b(d, new cuu(this, d, i2), obj);
            } else {
                cunVar.a(d, d.d(e(i2)), obj);
            }
        }
    }

    public final ctt d(int i) {
        return (i >= 0 ? this.e : this.d).c(i);
    }

    public final Object e(int i) {
        return (i >= 0 ? this.e : this.d).e(i);
    }
}
