package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class vs implements Comparable {
    public static int a = 1;
    public boolean b;
    public float f;
    int n;
    public int c = -1;
    int d = -1;
    public int e = 0;
    public boolean g = false;
    final float[] h = new float[9];
    final float[] i = new float[9];
    vl[] j = new vl[16];
    int k = 0;
    public int l = 0;
    boolean m = false;

    public vs(int i) {
        this.n = i;
    }

    public final void a(vl vlVar) {
        int i = 0;
        while (true) {
            int i2 = this.k;
            if (i >= i2) {
                vl[] vlVarArr = this.j;
                int length = vlVarArr.length;
                if (i2 >= length) {
                    this.j = (vl[]) Arrays.copyOf(vlVarArr, length + length);
                }
                vl[] vlVarArr2 = this.j;
                int i3 = this.k;
                vlVarArr2[i3] = vlVar;
                this.k = i3 + 1;
                return;
            }
            if (this.j[i] == vlVar) {
                return;
            } else {
                i++;
            }
        }
    }

    public final void b(vl vlVar) {
        int i = this.k;
        int i2 = 0;
        while (i2 < i) {
            if (this.j[i2] == vlVar) {
                while (i2 < i - 1) {
                    vl[] vlVarArr = this.j;
                    int i3 = i2 + 1;
                    vlVarArr[i2] = vlVarArr[i3];
                    i2 = i3;
                }
                this.k--;
                return;
            }
            i2++;
        }
    }

    public final void c() {
        this.n = 5;
        this.e = 0;
        this.c = -1;
        this.d = -1;
        this.f = 0.0f;
        this.g = false;
        this.m = false;
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2] = null;
        }
        this.k = 0;
        this.l = 0;
        this.b = false;
        Arrays.fill(this.i, 0.0f);
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.c - ((vs) obj).c;
    }

    public final void d(vn vnVar, float f) {
        this.f = f;
        this.g = true;
        this.m = false;
        int i = this.k;
        this.d = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2].c(vnVar, this, false);
        }
        this.k = 0;
    }

    public final void e(vn vnVar, vl vlVar) {
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2].d(vnVar, vlVar, false);
        }
        this.k = 0;
    }

    public final String toString() {
        int i = this.c;
        StringBuilder sb = new StringBuilder(11);
        sb.append("");
        sb.append(i);
        return sb.toString();
    }
}
