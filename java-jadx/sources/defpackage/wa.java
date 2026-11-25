package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class wa extends vx {
    private boolean ar;
    public float a = -1.0f;
    public int b = -1;
    public int c = -1;
    public vw d = this.K;
    public int aq = 0;

    public wa() {
        this.S.clear();
        this.S.add(this.d);
        int length = this.R.length;
        for (int i = 0; i < 6; i++) {
            this.R[i] = this.d;
        }
    }

    @Override // defpackage.vx
    public final vw L(int i) {
        switch (i - 1) {
            case 1:
            case 3:
                if (this.aq == 1) {
                    return this.d;
                }
                return null;
            case 2:
            case 4:
                if (this.aq == 0) {
                    return this.d;
                }
                return null;
            default:
                return null;
        }
    }

    @Override // defpackage.vx
    public final void S(boolean z) {
        if (this.T == null) {
            return;
        }
        int o = vn.o(this.d);
        if (this.aq == 1) {
            this.Y = o;
            this.Z = 0;
            y(this.T.h());
            D(0);
            return;
        }
        this.Y = 0;
        this.Z = o;
        D(this.T.j());
        y(0);
    }

    public final void a(int i) {
        this.d.e(i);
        this.ar = true;
    }

    @Override // defpackage.vx
    public final void b(vn vnVar, boolean z) {
        vx vxVar = this.T;
        if (vxVar == null) {
            return;
        }
        Object L = vxVar.L(2);
        Object L2 = vxVar.L(4);
        vx vxVar2 = this.T;
        boolean z2 = vxVar2 != null && vxVar2.ap[0] == 2;
        if (this.aq == 0) {
            L = vxVar.L(3);
            L2 = vxVar.L(5);
            vx vxVar3 = this.T;
            z2 = vxVar3 != null && vxVar3.ap[1] == 2;
        }
        if (this.ar) {
            vw vwVar = this.d;
            if (vwVar.c) {
                vs b = vnVar.b(vwVar);
                vnVar.f(b, this.d.a());
                if (this.b != -1) {
                    if (z2) {
                        vnVar.g(vnVar.b(L2), b, 0, 5);
                    }
                } else if (this.c != -1 && z2) {
                    vs b2 = vnVar.b(L2);
                    vnVar.g(b, vnVar.b(L), 0, 5);
                    vnVar.g(b2, b, 0, 5);
                }
                this.ar = false;
                return;
            }
        }
        if (this.b != -1) {
            vs b3 = vnVar.b(this.d);
            vnVar.m(b3, vnVar.b(L), this.b, 8);
            if (z2) {
                vnVar.g(vnVar.b(L2), b3, 0, 5);
                return;
            }
            return;
        }
        if (this.c != -1) {
            vs b4 = vnVar.b(this.d);
            vs b5 = vnVar.b(L2);
            vnVar.m(b4, b5, -this.c, 8);
            if (z2) {
                vnVar.g(b4, vnVar.b(L), 0, 5);
                vnVar.g(b5, b4, 0, 5);
                return;
            }
            return;
        }
        if (this.a != -1.0f) {
            vs b6 = vnVar.b(this.d);
            vs b7 = vnVar.b(L2);
            float f = this.a;
            vl a = vnVar.a();
            a.e.g(b6, -1.0f);
            a.e.g(b7, f);
            vnVar.e(a);
        }
    }

    public final void c(int i) {
        if (this.aq == i) {
            return;
        }
        this.aq = i;
        this.S.clear();
        if (this.aq == 1) {
            this.d = this.J;
        } else {
            this.d = this.K;
        }
        this.S.add(this.d);
        int length = this.R.length;
        for (int i2 = 0; i2 < 6; i2++) {
            this.R[i2] = this.d;
        }
    }

    @Override // defpackage.vx
    public final boolean d() {
        return true;
    }

    @Override // defpackage.vx
    public final boolean e() {
        return this.ar;
    }

    @Override // defpackage.vx
    public final boolean f() {
        return this.ar;
    }
}
