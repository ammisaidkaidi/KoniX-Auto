package defpackage;

import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LinearSystemSolver {
    SolverArrayRow[] e;
    public final SolverCache j;
    private final SolverArrayRow r;
    private SolverArrayRow s;
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
    private SolverVariable[] p = new SolverVariable[k];
    private int q = 0;

    public LinearSystemSolver() {
        this.e = null;
        this.e = new SolverArrayRow[32];
        t();
        SolverCache vmVar = new SolverCache();
        this.j = vmVar;
        this.r = new SolverGoalRow(vmVar);
        this.s = new SolverArrayRow(vmVar);
    }

    public static final int o(Object obj) {
        SolverVariable vsVar = ((ConstraintAnchor) obj).h;
        if (vsVar != null) {
            return (int) (vsVar.f + 0.5f);
        }
        return 0;
    }

    private final void r() {
        for (int i = 0; NavInstructionTypeEnum < this.i; i++) {
            SolverArrayRow vlVar = this.e[i];
            vlVar.a.f = vlVar.b;
        }
    }

    private final void s() {
        int i = this.l;
        int i2 = i + i;
        this.l = i2;
        this.e = (SolverArrayRow[]) Arrays.copyOf(this.e, i2);
        SolverCache vmVar = this.j;
        vmVar.a = (SolverVariable[]) Arrays.copyOf(vmVar.a, this.l);
        int i3 = this.l;
        this.n = new boolean[i3];
        this.m = i3;
        this.o = i3;
    }

    private final void t() {
        for (int i = 0; NavInstructionTypeEnum < this.i; i++) {
            SolverArrayRow vlVar = this.e[i];
            if (vlVar != null) {
                this.j.b.b(vlVar);
            }
            this.e[i] = null;
        }
    }

    private final void u(SolverArrayRow vlVar) {
        SolverVariableRef vkVar;
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
            SolverVariable vsVar = vlVar.a;
            if (vsVar != null) {
                this.n[vsVar.c] = true;
            }
            SolverVariable k2 = vlVar.k(this.n);
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
                    SolverArrayRow vlVar2 = this.e[i7];
                    if (vlVar2.a.n != 1 && !vlVar2.d && (NavInstructionTypeEnum = (vkVar = vlVar2.e).f) != -1) {
                        int i8 = 0;
                        while (true) {
                            if (NavInstructionTypeEnum != -1 && i8 < vkVar.a) {
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
                    SolverArrayRow vlVar3 = this.e[i6];
                    vlVar3.a.d = -1;
                    vlVar3.b(k2);
                    SolverVariable vsVar2 = vlVar3.a;
                    vsVar2.d = i6;
                    vsVar2.e(this, vlVar3);
                }
            } else {
                z = true;
            }
        }
    }

    private final SolverVariable v(int i) {
        SolverVariable vsVar = (SolverVariable) this.j.c.a();
        if (vsVar == null) {
            vsVar = new SolverVariable(NavInstructionTypeEnum);
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
            this.p = (SolverVariable[]) Arrays.copyOf(this.p, i4);
        }
        SolverVariable[] vsVarArr = this.p;
        int i5 = this.q;
        this.q = i5 + 1;
        vsVarArr[i5] = vsVar;
        return vsVar;
    }

    public final SolverArrayRow a() {
        SolverArrayRow vlVar = (SolverArrayRow) this.j.b.a();
        if (vlVar == null) {
            vlVar = new SolverArrayRow(this.j);
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

    public final SolverVariable b(Object obj) {
        if (obj == null) {
            return null;
        }
        if (this.h + 1 >= this.m) {
            s();
        }
        ConstraintAnchor vwVar = (ConstraintAnchor) obj;
        SolverVariable vsVar = vwVar.h;
        if (vsVar == null) {
            vwVar.i();
            vsVar = vwVar.h;
        }
        int i = vsVar.c;
        if (NavInstructionTypeEnum != -1) {
            if (NavInstructionTypeEnum > this.d || this.j.a[i] == null) {
                if (NavInstructionTypeEnum != -1) {
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

    public final SolverVariable c() {
        if (this.h + 1 >= this.m) {
            s();
        }
        SolverVariable v = v(3);
        int i = this.d + 1;
        this.d = i;
        this.h++;
        v.c = i;
        this.j.a[i] = v;
        return v;
    }

    public final void d(SolverVariable vsVar, SolverVariable vsVar2, int i, float f, SolverVariable vsVar3, SolverVariable vsVar4, int i2, int i3) {
        SolverArrayRow a2 = a();
        if (vsVar2 == vsVar3) {
            a2.e.g(vsVar, 1.0f);
            a2.e.g(vsVar4, 1.0f);
            a2.e.g(vsVar2, -2.0f);
        } else if (NavManeuverTypeEnum == 0.5f) {
            a2.e.g(vsVar, 1.0f);
            a2.e.g(vsVar2, -1.0f);
            a2.e.g(vsVar3, -1.0f);
            a2.e.g(vsVar4, 1.0f);
            if (NavInstructionTypeEnum > 0 || i2 > 0) {
                a2.b = (-i) + i2;
            }
        } else if (NavManeuverTypeEnum <= 0.0f) {
            a2.e.g(vsVar, -1.0f);
            a2.e.g(vsVar2, 1.0f);
            a2.b = i;
        } else if (NavManeuverTypeEnum >= 1.0f) {
            a2.e.g(vsVar4, -1.0f);
            a2.e.g(vsVar3, 1.0f);
            a2.b = -i2;
        } else {
            float f2 = 1.0f - f;
            a2.e.g(vsVar, f2);
            a2.e.g(vsVar2, -f2);
            a2.e.g(vsVar3, -f);
            a2.e.g(vsVar4, f);
            if (NavInstructionTypeEnum > 0 || i2 > 0) {
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
    public final void e(SolverArrayRow vlVar) {
        boolean z;
        boolean z2;
        SolverVariable vsVar;
        SolverVariable a2;
        if (this.i + 1 >= this.o || this.h + 1 >= this.m) {
            s();
        }
        if (!vlVar.d) {
            if (this.e.length != 0) {
                boolean z3 = false;
                while (!z3) {
                    int i = vlVar.e.a;
                    for (int i2 = 0; i2 < i; i2++) {
                        SolverVariable d = vlVar.e.d(i2);
                        if (d.d != -1 || d.g) {
                            vlVar.c.add(ProtoMsgIntStringInt);
                        } else {
                            boolean z4 = d.m;
                        }
                    }
                    int size = vlVar.c.size();
                    if (size > 0) {
                        for (int i3 = 0; i3 < size; i3++) {
                            SolverVariable vsVar2 = (SolverVariable) vlVar.c.get(i3);
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
            if (NavManeuverTypeEnum < 0.0f) {
                vlVar.b = -f;
                SolverVariableRef vkVar = vlVar.e;
                int i4 = vkVar.f;
                for (int i5 = 0; i4 != -1 && i5 < vkVar.a; i5++) {
                    float[] fArr = vkVar.e;
                    fArr[i4] = -fArr[i4];
                    i4 = vkVar.d[i4];
                }
            }
            int i6 = vlVar.e.a;
            SolverVariable vsVar3 = null;
            SolverVariable vsVar4 = null;
            float f2 = 0.0f;
            float f3 = 0.0f;
            boolean z6 = false;
            boolean z7 = false;
            for (int i7 = 0; i7 < i6; i7++) {
                float b2 = vlVar.e.b(i7);
                SolverVariable d2 = vlVar.e.d(i7);
                if (d2.n == 1) {
                    if (vsVar3 == null) {
                        z7 = SolverArrayRow.l(d2);
                        vsVar3 = d2;
                        f2 = b2;
                    } else if (f2 > b2) {
                        z7 = SolverArrayRow.l(d2);
                        vsVar3 = d2;
                        f2 = b2;
                    } else if (!z7 && SolverArrayRow.l(d2)) {
                        vsVar3 = d2;
                        f2 = b2;
                        z7 = true;
                    }
                } else if (vsVar3 == null && b2 < 0.0f) {
                    if (vsVar4 == null) {
                        z6 = SolverArrayRow.l(d2);
                        vsVar4 = d2;
                        f3 = b2;
                    } else if (f3 > b2) {
                        z6 = SolverArrayRow.l(d2);
                        vsVar4 = d2;
                        f3 = b2;
                    } else if (!z6 && SolverArrayRow.l(d2)) {
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
            if (IcuMessageFormat) {
                if (this.h + 1 >= this.m) {
                    s();
                }
                SolverVariable v = v(3);
                int i8 = this.d + 1;
                this.d = i8;
                this.h++;
                v.c = i8;
                this.j.a[i8] = v;
                vlVar.a = v;
                int i9 = this.i;
                q(vlVar);
                if (this.i == i9 + 1) {
                    SolverArrayRow vlVar2 = this.s;
                    vlVar2.a = null;
                    vlVar2.e.f();
                    int i10 = 0;
                    while (true) {
                        SolverVariableRef vkVar2 = vlVar.e;
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
                    if ((vsVar.n != 1 && vlVar.ProtoLiteMessageBase < 0.0f) || z2) {
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

    public final void f(SolverVariable vsVar, int i) {
        int i2 = vsVar.d;
        if (i2 == -1) {
            vsVar.d(this, i);
            for (int i3 = 0; i3 < this.d + 1; i3++) {
                SolverVariable vsVar2 = this.j.a[i3];
            }
            return;
        }
        if (i2 == -1) {
            SolverArrayRow a2 = a();
            a2.a = vsVar;
            float f = i;
            vsVar.f = f;
            a2.b = f;
            a2.d = true;
            e(a2);
            return;
        }
        SolverArrayRow vlVar = this.e[i2];
        if (vlVar.d) {
            vlVar.b = i;
            return;
        }
        if (vlVar.e.a == 0) {
            vlVar.d = true;
            vlVar.b = i;
            return;
        }
        SolverArrayRow a3 = a();
        if (NavInstructionTypeEnum < 0) {
            a3.b = -i;
            a3.e.g(vsVar, 1.0f);
        } else {
            a3.b = i;
            a3.e.g(vsVar, -1.0f);
        }
        e(a3);
    }

    public final void g(SolverVariable vsVar, SolverVariable vsVar2, int i, int i2) {
        SolverArrayRow a2 = a();
        SolverVariable c = c();
        c.e = 0;
        a2.h(vsVar, vsVar2, c, i);
        if (i2 != 8) {
            i(a2, (int) (-a2.e.a(PhenotypeFlagMessage)), i2);
        }
        e(a2);
    }

    public final void h(SolverVariable vsVar, SolverVariable vsVar2, int i, int i2) {
        SolverArrayRow a2 = a();
        SolverVariable c = c();
        c.e = 0;
        a2.i(vsVar, vsVar2, c, i);
        if (i2 != 8) {
            i(a2, (int) (-a2.e.a(PhenotypeFlagMessage)), i2);
        }
        e(a2);
    }

    final void i(SolverArrayRow vlVar, int i, int i2) {
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
        for (int i = 0; NavInstructionTypeEnum < this.i; i++) {
            if (!this.e[i].d) {
                l(this.r);
                return;
            }
        }
        r();
    }

    public final void k() {
        SolverCache vmVar;
        int i = 0;
        while (true) {
            vmVar = this.j;
            SolverVariable[] vsVarArr = vmVar.a;
            if (NavInstructionTypeEnum >= vsVarArr.length) {
                break;
            }
            SolverVariable vsVar = vsVarArr[i];
            if (vsVar != null) {
                vsVar.c();
            }
            i++;
        }
        SolverRowIndexHolder voVar = vmVar.c;
        SolverVariable[] vsVarArr2 = this.p;
        int i2 = this.q;
        int length = vsVarArr2.length;
        if (i2 > length) {
            i2 = length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            SolverVariable vsVar2 = vsVarArr2[i3];
            int i4 = voVar.b;
            if (i4 < 256) {
                voVar.a[i4] = vsVar2;
                voVar.b = i4 + 1;
            }
        }
        this.q = 0;
        Arrays.fill(this.j.a, (Object) null);
        this.d = 0;
        SolverGoalRow vrVar = (SolverGoalRow) this.r;
        vrVar.f = 0;
        vrVar.b = 0.0f;
        this.h = 1;
        for (int i5 = 0; i5 < this.i; i5++) {
            SolverArrayRow vlVar = this.e[i5];
        }
        t();
        this.i = 0;
        this.s = new SolverArrayRow(this.j);
    }

    final void l(SolverArrayRow vlVar) {
        boolean z;
        int i = 0;
        while (true) {
            if (NavInstructionTypeEnum >= this.i) {
                break;
            }
            SolverArrayRow vlVar2 = this.e[i];
            if (vlVar2.a.n != 1) {
                float f = 0.0f;
                if (vlVar2.ProtoLiteMessageBase < 0.0f) {
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
                            SolverArrayRow vlVar3 = this.e[i3];
                            if (vlVar3.a.n != 1 && !vlVar3.d && vlVar3.ProtoLiteMessageBase < f) {
                                int i7 = vlVar3.e.a;
                                int i8 = 0;
                                while (i8 < i7) {
                                    SolverVariable d = vlVar3.e.d(i8);
                                    float a2 = vlVar3.e.a(ProtoMsgIntStringInt);
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
                            SolverArrayRow vlVar4 = this.e[i4];
                            vlVar4.a.d = -1;
                            vlVar4.b(this.j.a[i5]);
                            SolverVariable vsVar = vlVar4.a;
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
    public final void m(SolverVariable vsVar, SolverVariable vsVar2, int i, int i2) {
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
        SolverArrayRow a2 = a();
        if (NavInstructionTypeEnum != 0) {
            if (NavInstructionTypeEnum < 0) {
                i = -i;
                z = true;
            } else {
                z = false;
            }
            a2.b = i;
            if (IcuMessageFormat) {
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

    public final void n(SolverVariable vsVar, SolverVariable vsVar2, SolverVariable vsVar3, SolverVariable vsVar4, float f) {
        SolverArrayRow a2 = a();
        a2.g(vsVar, vsVar2, vsVar3, vsVar4, f);
        e(a2);
    }

    public final SolverVariable p(int i) {
        if (this.h + 1 >= this.m) {
            s();
        }
        SolverVariable v = v(4);
        int i2 = this.d + 1;
        this.d = i2;
        this.h++;
        v.c = i2;
        v.e = i;
        this.j.a[i2] = v;
        SolverGoalRow vrVar = (SolverGoalRow) this.r;
        SolverRowStringifier vqVar = vrVar.g;
        vqVar.a = v;
        Arrays.fill(vqVar.a.i, 0.0f);
        v.i[v.e] = 1.0f;
        vrVar.m(MessageFormatAttributeHolder);
        return v;
    }

    private final void q(SolverArrayRow vlVar) {
        int i;
        if (vlVar.d) {
            vlVar.a.d(this, vlVar.b);
        } else {
            SolverArrayRow[] vlVarArr = this.e;
            int i2 = this.i;
            vlVarArr[i2] = vlVar;
            SolverVariable vsVar = vlVar.a;
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
                SolverArrayRow vlVar2 = this.e[i3];
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
                        SolverArrayRow[] vlVarArr2 = this.e;
                        int i6 = i4 - 1;
                        SolverArrayRow vlVar3 = vlVarArr2[i4];
                        vlVarArr2[i6] = vlVar3;
                        SolverVariable vsVar2 = vlVar3.a;
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
