package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class vn {
    vl[] e;
    public final vm j;
    private final vl r;
    private vl s;
    public static boolean a = false;
    private static int k = 1000;
    public static long b = 0;
    public boolean c = false;
    int d = 0;
    private int l = 32;
    private int m = 32;
    public boolean f = false;
    public boolean g = false;
    private boolean[] n = new boolean[32];
    int h = 1;
    int i = 0;
    private int o = 32;
    private vs[] p = new vs[k];
    private int q = 0;

    public vn() {
        this.e = null;
        this.e = new vl[32];
        t();
        vm vmVar = new vm();
        this.j = vmVar;
        this.r = new vr(vmVar);
        this.s = new vl(vmVar);
    }

    public static final int o(Object obj) {
        vs vsVar = ((vw) obj).h;
        if (vsVar != null) {
            return (int) (vsVar.f + 0.5f);
        }
        return 0;
    }

    private final void r() {
        for (int i = 0; i < this.i; i++) {
            vl vlVar = this.e[i];
            vlVar.a.f = vlVar.b;
        }
    }

    private final void s() {
        int i = this.l;
        int i2 = i + i;
        this.l = i2;
        this.e = (vl[]) Arrays.copyOf(this.e, i2);
        vm vmVar = this.j;
        vmVar.a = (vs[]) Arrays.copyOf(vmVar.a, this.l);
        int i3 = this.l;
        this.n = new boolean[i3];
        this.m = i3;
        this.o = i3;
    }

    private final void t() {
        for (int i = 0; i < this.i; i++) {
            vl vlVar = this.e[i];
            if (vlVar != null) {
                this.j.b.b(vlVar);
            }
            this.e[i] = null;
        }
    }

    private final void u(vl vlVar) {
        vk vkVar;
        int i;
        for (int i2 = 0; i2 < this.h; i2++) {
            this.n[i2] = false;
        }
        boolean z = false;
        int i3 = 0;
        while (!z) {
            i3++;
            int i4 = this.h;
            if (i3 >= i4 + i4) {
                return;
            }
            vs vsVar = vlVar.a;
            if (vsVar != null) {
                this.n[vsVar.c] = true;
            }
            vs k2 = vlVar.k(this.n);
            if (k2 != null) {
                boolean[] zArr = this.n;
                int i5 = k2.c;
                if (zArr[i5]) {
                    return;
                } else {
                    zArr[i5] = true;
                }
            }
            if (k2 != null) {
                float f = Float.MAX_VALUE;
                int i6 = -1;
                for (int i7 = 0; i7 < this.i; i7++) {
                    vl vlVar2 = this.e[i7];
                    if (vlVar2.a.n != 1 && !vlVar2.d && (i = (vkVar = vlVar2.e).f) != -1) {
                        int i8 = 0;
                        while (true) {
                            if (i != -1 && i8 < vkVar.a) {
                                if (vkVar.c[i] == k2.c) {
                                    float a2 = vlVar2.e.a(k2);
                                    if (a2 < 0.0f) {
                                        float f2 = (-vlVar2.b) / a2;
                                        if (f2 < f) {
                                            i6 = i7;
                                            f = f2;
                                        }
                                    }
                                } else {
                                    i = vkVar.d[i];
                                    i8++;
                                }
                            }
                        }
                    }
                }
                if (i6 >= 0) {
                    vl vlVar3 = this.e[i6];
                    vlVar3.a.d = -1;
                    vlVar3.b(k2);
                    vs vsVar2 = vlVar3.a;
                    vsVar2.d = i6;
                    vsVar2.e(this, vlVar3);
                }
            } else {
                z = true;
            }
        }
    }

    private final vs v(int i) {
        vs vsVar = (vs) this.j.c.a();
        if (vsVar == null) {
            vsVar = new vs(i);
            vsVar.n = i;
        } else {
            vsVar.c();
            vsVar.n = i;
        }
        int i2 = this.q;
        int i3 = k;
        if (i2 >= i3) {
            int i4 = i3 + i3;
            k = i4;
            this.p = (vs[]) Arrays.copyOf(this.p, i4);
        }
        vs[] vsVarArr = this.p;
        int i5 = this.q;
        this.q = i5 + 1;
        vsVarArr[i5] = vsVar;
        return vsVar;
    }

    public final vl a() {
        vl vlVar = (vl) this.j.b.a();
        if (vlVar == null) {
            vlVar = new vl(this.j);
            b++;
        } else {
            vlVar.a = null;
            vlVar.e.f();
            vlVar.b = 0.0f;
            vlVar.d = false;
        }
        vs.a++;
        return vlVar;
    }

    public final vs b(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.h + 1 >= this.m) {
            s();
        }
        vw vwVar = (vw) obj;
        vs vsVar = vwVar.h;
        if (vsVar == null) {
            vwVar.i();
            vsVar = vwVar.h;
        }
        int i = vsVar.c;
        if (i != -1) {
            if (i > this.d || this.j.a[i] == null) {
                if (i != -1) {
                    vsVar.c();
                }
            }
            return vsVar;
        }
        int i2 = this.d + 1;
        this.d = i2;
        this.h++;
        vsVar.c = i2;
        vsVar.n = 1;
        this.j.a[i2] = vsVar;
        return vsVar;
    }

    public final vs c() {
        if (this.h + 1 >= this.m) {
            s();
        }
        vs v = v(3);
        int i = this.d + 1;
        this.d = i;
        this.h++;
        v.c = i;
        this.j.a[i] = v;
        return v;
    }

    public final void d(vs vsVar, vs vsVar2, int i, float f, vs vsVar3, vs vsVar4, int i2, int i3) {
        vl a2 = a();
        if (vsVar2 == vsVar3) {
            a2.e.g(vsVar, 1.0f);
            a2.e.g(vsVar4, 1.0f);
            a2.e.g(vsVar2, -2.0f);
        } else if (f == 0.5f) {
            a2.e.g(vsVar, 1.0f);
            a2.e.g(vsVar2, -1.0f);
            a2.e.g(vsVar3, -1.0f);
            a2.e.g(vsVar4, 1.0f);
            if (i > 0 || i2 > 0) {
                a2.b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            a2.e.g(vsVar, -1.0f);
            a2.e.g(vsVar2, 1.0f);
            a2.b = i;
        } else if (f >= 1.0f) {
            a2.e.g(vsVar4, -1.0f);
            a2.e.g(vsVar3, 1.0f);
            a2.b = -i2;
        } else {
            float f2 = 1.0f - f;
            a2.e.g(vsVar, f2);
            a2.e.g(vsVar2, -f2);
            a2.e.g(vsVar3, -f);
            a2.e.g(vsVar4, f);
            if (i > 0 || i2 > 0) {
                a2.b = ((-i) * f2) + (i2 * f);
            }
        }
        if (i3 != 8) {
            a2.f(this, i3);
        }
        e(a2);
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01be A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(vl vlVar) {
        boolean z;
        boolean z2;
        vs vsVar;
        vs a2;
        if (this.i + 1 >= this.o || this.h + 1 >= this.m) {
            s();
        }
        if (!vlVar.d) {
            if (this.e.length != 0) {
                boolean z3 = false;
                while (!z3) {
                    int i = vlVar.e.a;
                    for (int i2 = 0; i2 < i; i2++) {
                        vs d = vlVar.e.d(i2);
                        if (d.d != -1 || d.g) {
                            vlVar.c.add(d);
                        } else {
                            boolean z4 = d.m;
                        }
                    }
                    int size = vlVar.c.size();
                    if (size > 0) {
                        for (int i3 = 0; i3 < size; i3++) {
                            vs vsVar2 = (vs) vlVar.c.get(i3);
                            if (vsVar2.g) {
                                vlVar.c(this, vsVar2, true);
                            } else {
                                boolean z5 = vsVar2.m;
                                vlVar.d(this, this.e[vsVar2.d], true);
                            }
                        }
                        vlVar.c.clear();
                    } else {
                        z3 = true;
                    }
                }
                if (vlVar.a != null && vlVar.e.a == 0) {
                    vlVar.d = true;
                    this.c = true;
                }
            }
            if (vlVar.e()) {
                return;
            }
            float f = vlVar.b;
            if (f < 0.0f) {
                vlVar.b = -f;
                vk vkVar = vlVar.e;
                int i4 = vkVar.f;
                for (int i5 = 0; i4 != -1 && i5 < vkVar.a; i5++) {
                    float[] fArr = vkVar.e;
                    fArr[i4] = -fArr[i4];
                    i4 = vkVar.d[i4];
                }
            }
            int i6 = vlVar.e.a;
            vs vsVar3 = null;
            vs vsVar4 = null;
            float f2 = 0.0f;
            float f3 = 0.0f;
            boolean z6 = false;
            boolean z7 = false;
            for (int i7 = 0; i7 < i6; i7++) {
                float b2 = vlVar.e.b(i7);
                vs d2 = vlVar.e.d(i7);
                if (d2.n == 1) {
                    if (vsVar3 == null) {
                        z7 = vl.l(d2);
                        vsVar3 = d2;
                        f2 = b2;
                    } else if (f2 > b2) {
                        z7 = vl.l(d2);
                        vsVar3 = d2;
                        f2 = b2;
                    } else if (!z7 && vl.l(d2)) {
                        vsVar3 = d2;
                        f2 = b2;
                        z7 = true;
                    }
                } else if (vsVar3 == null && b2 < 0.0f) {
                    if (vsVar4 == null) {
                        z6 = vl.l(d2);
                        vsVar4 = d2;
                        f3 = b2;
                    } else if (f3 > b2) {
                        z6 = vl.l(d2);
                        vsVar4 = d2;
                        f3 = b2;
                    } else if (!z6 && vl.l(d2)) {
                        vsVar4 = d2;
                        f3 = b2;
                        z6 = true;
                    }
                }
            }
            if (vsVar3 == null) {
                vsVar3 = vsVar4;
            }
            if (vsVar3 == null) {
                z = true;
            } else {
                vlVar.b(vsVar3);
                z = false;
            }
            if (vlVar.e.a == 0) {
                vlVar.d = true;
            }
            if (z) {
                if (this.h + 1 >= this.m) {
                    s();
                }
                vs v = v(3);
                int i8 = this.d + 1;
                this.d = i8;
                this.h++;
                v.c = i8;
                this.j.a[i8] = v;
                vlVar.a = v;
                int i9 = this.i;
                q(vlVar);
                if (this.i == i9 + 1) {
                    vl vlVar2 = this.s;
                    vlVar2.a = null;
                    vlVar2.e.f();
                    int i10 = 0;
                    while (true) {
                        vk vkVar2 = vlVar.e;
                        if (i10 >= vkVar2.a) {
                            break;
                        }
                        vlVar2.e.e(vkVar2.d(i10), vlVar.e.b(i10), true);
                        i10++;
                    }
                    u(this.s);
                    if (v.d == -1) {
                        if (vlVar.a == v && (a2 = vlVar.a(null, v)) != null) {
                            vlVar.b(a2);
                        }
                        if (!vlVar.d) {
                            vlVar.a.e(this, vlVar);
                        }
                        this.j.b.b(vlVar);
                        this.i--;
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    vsVar = vlVar.a;
                    if (vsVar != null) {
                        return;
                    }
                    if ((vsVar.n != 1 && vlVar.b < 0.0f) || z2) {
                        return;
                    }
                }
            }
            z2 = false;
            vsVar = vlVar.a;
            if (vsVar != null) {
            }
        }
        q(vlVar);
    }

    public final void f(vs vsVar, int i) {
        int i2 = vsVar.d;
        if (i2 == -1) {
            vsVar.d(this, i);
            for (int i3 = 0; i3 < this.d + 1; i3++) {
                vs vsVar2 = this.j.a[i3];
            }
            return;
        }
        if (i2 == -1) {
            vl a2 = a();
            a2.a = vsVar;
            float f = i;
            vsVar.f = f;
            a2.b = f;
            a2.d = true;
            e(a2);
            return;
        }
        vl vlVar = this.e[i2];
        if (vlVar.d) {
            vlVar.b = i;
            return;
        }
        if (vlVar.e.a == 0) {
            vlVar.d = true;
            vlVar.b = i;
            return;
        }
        vl a3 = a();
        if (i < 0) {
            a3.b = -i;
            a3.e.g(vsVar, 1.0f);
        } else {
            a3.b = i;
            a3.e.g(vsVar, -1.0f);
        }
        e(a3);
    }

    public final void g(vs vsVar, vs vsVar2, int i, int i2) {
        vl a2 = a();
        vs c = c();
        c.e = 0;
        a2.h(vsVar, vsVar2, c, i);
        if (i2 != 8) {
            i(a2, (int) (-a2.e.a(c)), i2);
        }
        e(a2);
    }

    public final void h(vs vsVar, vs vsVar2, int i, int i2) {
        vl a2 = a();
        vs c = c();
        c.e = 0;
        a2.i(vsVar, vsVar2, c, i);
        if (i2 != 8) {
            i(a2, (int) (-a2.e.a(c)), i2);
        }
        e(a2);
    }

    final void i(vl vlVar, int i, int i2) {
        vlVar.e.g(p(i2), i);
    }

    public final void j() {
        if (this.r.e()) {
            r();
            return;
        }
        if (!this.g) {
            l(this.r);
            return;
        }
        for (int i = 0; i < this.i; i++) {
            if (!this.e[i].d) {
                l(this.r);
                return;
            }
        }
        r();
    }

    public final void k() {
        vm vmVar;
        int i = 0;
        while (true) {
            vmVar = this.j;
            vs[] vsVarArr = vmVar.a;
            if (i >= vsVarArr.length) {
                break;
            }
            vs vsVar = vsVarArr[i];
            if (vsVar != null) {
                vsVar.c();
            }
            i++;
        }
        vo voVar = vmVar.c;
        vs[] vsVarArr2 = this.p;
        int i2 = this.q;
        int length = vsVarArr2.length;
        if (i2 > length) {
            i2 = length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            vs vsVar2 = vsVarArr2[i3];
            int i4 = voVar.b;
            if (i4 < 256) {
                voVar.a[i4] = vsVar2;
                voVar.b = i4 + 1;
            }
        }
        this.q = 0;
        Arrays.fill(this.j.a, (Object) null);
        this.d = 0;
        vr vrVar = (vr) this.r;
        vrVar.f = 0;
        vrVar.b = 0.0f;
        this.h = 1;
        for (int i5 = 0; i5 < this.i; i5++) {
            vl vlVar = this.e[i5];
        }
        t();
        this.i = 0;
        this.s = new vl(this.j);
    }

    final void l(vl vlVar) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= this.i) {
                break;
            }
            vl vlVar2 = this.e[i];
            if (vlVar2.a.n != 1) {
                float f = 0.0f;
                if (vlVar2.b < 0.0f) {
                    boolean z2 = false;
                    int i2 = 0;
                    while (!z2) {
                        i2++;
                        float f2 = Float.MAX_VALUE;
                        int i3 = 0;
                        int i4 = -1;
                        int i5 = -1;
                        int i6 = 0;
                        while (i3 < this.i) {
                            vl vlVar3 = this.e[i3];
                            if (vlVar3.a.n != 1 && !vlVar3.d && vlVar3.b < f) {
                                int i7 = vlVar3.e.a;
                                int i8 = 0;
                                while (i8 < i7) {
                                    vs d = vlVar3.e.d(i8);
                                    float a2 = vlVar3.e.a(d);
                                    if (a2 > f) {
                                        for (int i9 = 0; i9 < 9; i9++) {
                                            float f3 = d.h[i9] / a2;
                                            if ((f3 < f2 && i9 == i6) || i9 > i6) {
                                                i5 = d.c;
                                                i6 = i9;
                                                f2 = f3;
                                                i4 = i3;
                                            }
                                        }
                                    }
                                    i8++;
                                    f = 0.0f;
                                }
                            }
                            i3++;
                            f = 0.0f;
                        }
                        if (i4 != -1) {
                            vl vlVar4 = this.e[i4];
                            vlVar4.a.d = -1;
                            vlVar4.b(this.j.a[i5]);
                            vs vsVar = vlVar4.a;
                            vsVar.d = i4;
                            vsVar.e(this, vlVar4);
                            z = false;
                        } else {
                            z = true;
                        }
                        z2 = (!(i2 <= this.h / 2)) | z;
                        f = 0.0f;
                    }
                }
            }
            i++;
        }
        u(vlVar);
        r();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m(vs vsVar, vs vsVar2, int i, int i2) {
        boolean z;
        if (i2 == 8) {
            if (!vsVar2.g) {
                i2 = 8;
            } else {
                if (vsVar.d == -1) {
                    vsVar.d(this, vsVar2.f + i);
                    return;
                }
                i2 = 8;
            }
        }
        vl a2 = a();
        if (i != 0) {
            if (i < 0) {
                i = -i;
                z = true;
            } else {
                z = false;
            }
            a2.b = i;
            if (z) {
                a2.e.g(vsVar, 1.0f);
                a2.e.g(vsVar2, -1.0f);
                if (i2 != 8) {
                    a2.f(this, i2);
                }
                e(a2);
            }
        }
        a2.e.g(vsVar, -1.0f);
        a2.e.g(vsVar2, 1.0f);
        if (i2 != 8) {
        }
        e(a2);
    }

    public final void n(vs vsVar, vs vsVar2, vs vsVar3, vs vsVar4, float f) {
        vl a2 = a();
        a2.g(vsVar, vsVar2, vsVar3, vsVar4, f);
        e(a2);
    }

    public final vs p(int i) {
        if (this.h + 1 >= this.m) {
            s();
        }
        vs v = v(4);
        int i2 = this.d + 1;
        this.d = i2;
        this.h++;
        v.c = i2;
        v.e = i;
        this.j.a[i2] = v;
        vr vrVar = (vr) this.r;
        vq vqVar = vrVar.g;
        vqVar.a = v;
        Arrays.fill(vqVar.a.i, 0.0f);
        v.i[v.e] = 1.0f;
        vrVar.m(v);
        return v;
    }

    private final void q(vl vlVar) {
        int i;
        if (vlVar.d) {
            vlVar.a.d(this, vlVar.b);
        } else {
            vl[] vlVarArr = this.e;
            int i2 = this.i;
            vlVarArr[i2] = vlVar;
            vs vsVar = vlVar.a;
            vsVar.d = i2;
            this.i = i2 + 1;
            vsVar.e(this, vlVar);
        }
        if (this.c) {
            int i3 = 0;
            while (i3 < this.i) {
                if (this.e[i3] == null) {
                    System.out.println("WTF");
                }
                vl vlVar2 = this.e[i3];
                if (vlVar2 != null && vlVar2.d) {
                    vlVar2.a.d(this, vlVar2.b);
                    this.j.b.b(vlVar2);
                    this.e[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i4;
                    while (true) {
                        i = this.i;
                        if (i4 >= i) {
                            break;
                        }
                        vl[] vlVarArr2 = this.e;
                        int i6 = i4 - 1;
                        vl vlVar3 = vlVarArr2[i4];
                        vlVarArr2[i6] = vlVar3;
                        vs vsVar2 = vlVar3.a;
                        if (vsVar2.d == i4) {
                            vsVar2.d = i6;
                        }
                        i5 = i4;
                        i4++;
                    }
                    if (i5 < i) {
                        this.e[i5] = null;
                    }
                    this.i = i - 1;
                    i3--;
                }
                i3++;
            }
            this.c = false;
        }
    }
}
