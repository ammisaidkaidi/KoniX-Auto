package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class wp extends wt {
    private static final int[] a = new int[2];

    public wp(vx vxVar) {
        super(vxVar);
        this.i.l = 4;
        this.j.l = 5;
        this.g = 0;
    }

    private static final void n(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        switch (i5) {
            case -1:
                int i8 = (int) ((i7 * f) + 0.5f);
                int i9 = (int) ((i6 / f) + 0.5f);
                if (i8 > i6) {
                    if (i9 <= i7) {
                        iArr[0] = i6;
                        iArr[1] = i9;
                        break;
                    }
                } else {
                    iArr[0] = i8;
                    iArr[1] = i7;
                    break;
                }
                break;
            case 0:
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                break;
            default:
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                break;
        }
    }

    @Override // defpackage.wt
    public final void b() {
        vx vxVar;
        vx vxVar2;
        vx vxVar3;
        vx vxVar4 = this.d;
        if (vxVar4.e) {
            this.f.c(vxVar4.j());
        }
        if (!this.f.i) {
            int N = this.d.N();
            this.k = N;
            if (N != 3) {
                if (this.k == 4 && (vxVar3 = this.d.T) != null && (vxVar3.N() == 1 || vxVar3.N() == 4)) {
                    int j = vxVar3.j();
                    int b = this.d.J.b();
                    int b2 = this.d.L.b();
                    j(this.i, vxVar3.h.i, this.d.J.b());
                    j(this.j, vxVar3.h.j, -this.d.L.b());
                    this.f.c((j - b) - b2);
                    return;
                }
                if (this.k == 1) {
                    this.f.c(this.d.j());
                }
            }
        } else if (this.k == 4 && (vxVar = this.d.T) != null && (vxVar.N() == 1 || vxVar.N() == 4)) {
            j(this.i, vxVar.h.i, this.d.J.b());
            j(this.j, vxVar.h.j, -this.d.L.b());
            return;
        }
        wl wlVar = this.f;
        if (wlVar.i) {
            vx vxVar5 = this.d;
            if (vxVar5.e) {
                vw[] vwVarArr = vxVar5.R;
                vw vwVar = vwVarArr[0];
                vw vwVar2 = vwVar.e;
                if (vwVar2 != null && vwVarArr[1].e != null) {
                    if (vxVar5.I()) {
                        this.i.e = this.d.R[0].b();
                        this.j.e = -this.d.R[1].b();
                        return;
                    }
                    wk k = k(this.d.R[0]);
                    if (k != null) {
                        j(this.i, k, this.d.R[0].b());
                    }
                    wk k2 = k(this.d.R[1]);
                    if (k2 != null) {
                        j(this.j, k2, -this.d.R[1].b());
                    }
                    this.i.b = true;
                    this.j.b = true;
                    return;
                }
                if (vwVar2 != null) {
                    wk k3 = k(vwVar);
                    if (k3 != null) {
                        j(this.i, k3, this.d.R[0].b());
                        j(this.j, this.i, this.f.f);
                        return;
                    }
                    return;
                }
                vw vwVar3 = vwVarArr[1];
                if (vwVar3.e != null) {
                    wk k4 = k(vwVar3);
                    if (k4 != null) {
                        j(this.j, k4, -this.d.R[1].b());
                        j(this.i, this.j, -this.f.f);
                        return;
                    }
                    return;
                }
                if ((vxVar5 instanceof wb) || vxVar5.T == null || vxVar5.L(7).e != null) {
                    return;
                }
                vx vxVar6 = this.d;
                j(this.i, vxVar6.T.h.i, vxVar6.k());
                j(this.j, this.i, this.f.f);
                return;
            }
        }
        if (this.k == 3) {
            vx vxVar7 = this.d;
            switch (vxVar7.s) {
                case 2:
                    vx vxVar8 = vxVar7.T;
                    if (vxVar8 != null) {
                        wl wlVar2 = vxVar8.i.f;
                        wlVar.k.add(wlVar2);
                        wlVar2.j.add(this.f);
                        wl wlVar3 = this.f;
                        wlVar3.b = true;
                        wlVar3.j.add(this.i);
                        this.f.j.add(this.j);
                        break;
                    }
                    break;
                case 3:
                    if (vxVar7.t != 3) {
                        wl wlVar4 = vxVar7.i.f;
                        wlVar.k.add(wlVar4);
                        wlVar4.j.add(this.f);
                        this.d.i.i.j.add(this.f);
                        this.d.i.j.j.add(this.f);
                        wl wlVar5 = this.f;
                        wlVar5.b = true;
                        wlVar5.j.add(this.i);
                        this.f.j.add(this.j);
                        this.i.k.add(this.f);
                        this.j.k.add(this.f);
                        break;
                    } else {
                        this.i.a = this;
                        this.j.a = this;
                        wr wrVar = vxVar7.i;
                        wrVar.i.a = this;
                        wrVar.j.a = this;
                        wlVar.a = this;
                        if (!vxVar7.J()) {
                            if (!this.d.I()) {
                                this.d.i.f.k.add(this.f);
                                break;
                            } else {
                                this.d.i.f.k.add(this.f);
                                this.f.j.add(this.d.i.f);
                                break;
                            }
                        } else {
                            this.f.k.add(this.d.i.f);
                            this.d.i.f.j.add(this.f);
                            wr wrVar2 = this.d.i;
                            wrVar2.f.a = this;
                            this.f.k.add(wrVar2.i);
                            this.f.k.add(this.d.i.j);
                            this.d.i.i.j.add(this.f);
                            this.d.i.j.j.add(this.f);
                            break;
                        }
                    }
            }
        }
        vx vxVar9 = this.d;
        vw[] vwVarArr2 = vxVar9.R;
        vw vwVar4 = vwVarArr2[0];
        vw vwVar5 = vwVar4.e;
        if (vwVar5 != null && vwVarArr2[1].e != null) {
            if (vxVar9.I()) {
                this.i.e = this.d.R[0].b();
                this.j.e = -this.d.R[1].b();
                return;
            }
            wk k5 = k(this.d.R[0]);
            wk k6 = k(this.d.R[1]);
            if (k5 != null) {
                k5.a(this);
            }
            if (k6 != null) {
                k6.a(this);
            }
            this.l = 4;
            return;
        }
        if (vwVar5 != null) {
            wk k7 = k(vwVar4);
            if (k7 != null) {
                j(this.i, k7, this.d.R[0].b());
                i(this.j, this.i, 1, this.f);
                return;
            }
            return;
        }
        vw vwVar6 = vwVarArr2[1];
        if (vwVar6.e != null) {
            wk k8 = k(vwVar6);
            if (k8 != null) {
                j(this.j, k8, -this.d.R[1].b());
                i(this.i, this.j, -1, this.f);
                return;
            }
            return;
        }
        if ((vxVar9 instanceof wb) || (vxVar2 = vxVar9.T) == null) {
            return;
        }
        j(this.i, vxVar2.h.i, vxVar9.k());
        i(this.j, this.i, 1, this.f);
    }

    @Override // defpackage.wt
    public final void c() {
        wk wkVar = this.i;
        if (wkVar.i) {
            this.d.Y = wkVar.f;
        }
    }

    @Override // defpackage.wt
    public final void d() {
        this.e = null;
        this.i.b();
        this.j.b();
        this.f.b();
        this.h = false;
    }

    @Override // defpackage.wt
    public final boolean e() {
        return this.k != 3 || this.d.s == 0;
    }

    public final void g() {
        this.h = false;
        this.i.b();
        this.i.i = false;
        this.j.b();
        this.j.i = false;
        this.f.i = false;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.d.ah);
        return valueOf.length() != 0 ? "HorizontalRun ".concat(valueOf) : new String("HorizontalRun ");
    }

    @Override // defpackage.wt, defpackage.wi
    public final void f() {
        int i;
        int i2 = this.l;
        int i3 = i2 - 1;
        if (i2 == 0) {
            throw null;
        }
        switch (i3) {
            case 3:
                vx vxVar = this.d;
                m(vxVar.J, vxVar.L, 0);
                return;
            default:
                wl wlVar = this.f;
                if (!wlVar.i && this.k == 3) {
                    vx vxVar2 = this.d;
                    switch (vxVar2.s) {
                        case 2:
                            vx vxVar3 = vxVar2.T;
                            if (vxVar3 != null) {
                                if (vxVar3.h.f.i) {
                                    wlVar.c((int) ((r7.f * vxVar2.x) + 0.5f));
                                    break;
                                }
                            }
                            break;
                        case 3:
                            int i4 = vxVar2.t;
                            if (i4 != 0 && i4 != 3) {
                                switch (vxVar2.X) {
                                    case -1:
                                        i = (int) ((vxVar2.i.f.f * vxVar2.W) + 0.5f);
                                        break;
                                    case 0:
                                        i = (int) ((vxVar2.i.f.f / vxVar2.W) + 0.5f);
                                        break;
                                    default:
                                        i = (int) ((vxVar2.i.f.f * vxVar2.W) + 0.5f);
                                        break;
                                }
                                wlVar.c(i);
                                break;
                            } else {
                                wr wrVar = vxVar2.i;
                                wk wkVar = wrVar.i;
                                wk wkVar2 = wrVar.j;
                                vw vwVar = vxVar2.J.e;
                                vw vwVar2 = vxVar2.K.e;
                                vw vwVar3 = vxVar2.L.e;
                                vw vwVar4 = vxVar2.M.e;
                                int i5 = vxVar2.X;
                                if (vwVar != null && vwVar2 != null && vwVar3 != null && vwVar4 != null) {
                                    float f = vxVar2.W;
                                    if (!wkVar.i || !wkVar2.i) {
                                        wk wkVar3 = this.i;
                                        if (wkVar3.i) {
                                            wk wkVar4 = this.j;
                                            if (wkVar4.i) {
                                                if (!wkVar.c || !wkVar2.c) {
                                                    return;
                                                }
                                                int i6 = wkVar3.f;
                                                int i7 = wkVar3.e;
                                                int i8 = wkVar4.f;
                                                int i9 = wkVar4.e;
                                                int i10 = ((wk) wkVar.k.get(0)).f;
                                                int i11 = wkVar.e;
                                                int i12 = ((wk) wkVar2.k.get(0)).f;
                                                int i13 = wkVar2.e;
                                                int[] iArr = a;
                                                n(iArr, i7 + i6, i8 - i9, i10 + i11, i12 - i13, f, i5);
                                                this.f.c(iArr[0]);
                                                this.d.i.f.c(iArr[1]);
                                            }
                                        }
                                        wk wkVar5 = this.i;
                                        if (wkVar5.c && this.j.c && wkVar.c && wkVar2.c) {
                                            int i14 = ((wk) wkVar5.k.get(0)).f;
                                            int i15 = this.i.e;
                                            int i16 = ((wk) this.j.k.get(0)).f;
                                            int i17 = this.j.e;
                                            int i18 = ((wk) wkVar.k.get(0)).f;
                                            int i19 = wkVar.e;
                                            int i20 = ((wk) wkVar2.k.get(0)).f;
                                            int i21 = wkVar2.e;
                                            int[] iArr2 = a;
                                            n(iArr2, i14 + i15, i16 - i17, i18 + i19, i20 - i21, f, i5);
                                            this.f.c(iArr2[0]);
                                            this.d.i.f.c(iArr2[1]);
                                            break;
                                        } else {
                                            return;
                                        }
                                    } else {
                                        wk wkVar6 = this.i;
                                        if (wkVar6.c && this.j.c) {
                                            int i22 = ((wk) wkVar6.k.get(0)).f;
                                            int i23 = this.i.e;
                                            int i24 = ((wk) this.j.k.get(0)).f;
                                            int i25 = this.j.e;
                                            int i26 = wkVar.f;
                                            int i27 = wkVar.e;
                                            int i28 = wkVar2.f;
                                            int i29 = wkVar2.e;
                                            int[] iArr3 = a;
                                            n(iArr3, i22 + i23, i24 - i25, i26 + i27, i28 - i29, f, i5);
                                            this.f.c(iArr3[0]);
                                            this.d.i.f.c(iArr3[1]);
                                            return;
                                        }
                                        return;
                                    }
                                } else if (vwVar != null && vwVar3 != null) {
                                    wk wkVar7 = this.i;
                                    if (wkVar7.c && this.j.c) {
                                        float f2 = vxVar2.W;
                                        int i30 = ((wk) wkVar7.k.get(0)).f + this.i.e;
                                        int i31 = ((wk) this.j.k.get(0)).f - this.j.e;
                                        switch (i5) {
                                            case -1:
                                            case 0:
                                                int h = h(i31 - i30, 0);
                                                int i32 = (int) ((h * f2) + 0.5f);
                                                int h2 = h(i32, 1);
                                                if (i32 != h2) {
                                                    h = (int) ((h2 / f2) + 0.5f);
                                                }
                                                this.f.c(h);
                                                this.d.i.f.c(h2);
                                                break;
                                            default:
                                                int h3 = h(i31 - i30, 0);
                                                int i33 = (int) ((h3 / f2) + 0.5f);
                                                int h4 = h(i33, 1);
                                                if (i33 != h4) {
                                                    h3 = (int) ((h4 * f2) + 0.5f);
                                                }
                                                this.f.c(h3);
                                                this.d.i.f.c(h4);
                                                break;
                                        }
                                    } else {
                                        return;
                                    }
                                } else if (vwVar2 != null && vwVar4 != null) {
                                    if (wkVar.c && wkVar2.c) {
                                        float f3 = vxVar2.W;
                                        int i34 = ((wk) wkVar.k.get(0)).f + wkVar.e;
                                        int i35 = ((wk) wkVar2.k.get(0)).f - wkVar2.e;
                                        switch (i5) {
                                            case 0:
                                                int h5 = h(i35 - i34, 1);
                                                int i36 = (int) ((h5 * f3) + 0.5f);
                                                int h6 = h(i36, 0);
                                                if (i36 != h6) {
                                                    h5 = (int) ((h6 / f3) + 0.5f);
                                                }
                                                this.f.c(h6);
                                                this.d.i.f.c(h5);
                                                break;
                                            default:
                                                int h7 = h(i35 - i34, 1);
                                                int i37 = (int) ((h7 / f3) + 0.5f);
                                                int h8 = h(i37, 0);
                                                if (i37 != h8) {
                                                    h7 = (int) ((h8 * f3) + 0.5f);
                                                }
                                                this.f.c(h8);
                                                this.d.i.f.c(h7);
                                                break;
                                        }
                                    } else {
                                        return;
                                    }
                                }
                            }
                            break;
                    }
                }
                wk wkVar8 = this.i;
                if (wkVar8.c) {
                    wk wkVar9 = this.j;
                    if (wkVar9.c) {
                        if (wkVar8.i && wkVar9.i && this.f.i) {
                            return;
                        }
                        if (!this.f.i && this.k == 3) {
                            vx vxVar4 = this.d;
                            if (vxVar4.s == 0 && !vxVar4.I()) {
                                wk wkVar10 = (wk) this.i.k.get(0);
                                wk wkVar11 = (wk) this.j.k.get(0);
                                int i38 = wkVar10.f;
                                wk wkVar12 = this.i;
                                int i39 = i38 + wkVar12.e;
                                int i40 = wkVar11.f + this.j.e;
                                wkVar12.c(i39);
                                this.j.c(i40);
                                this.f.c(i40 - i39);
                                return;
                            }
                        }
                        if (!this.f.i && this.k == 3 && this.c == 1 && this.i.k.size() > 0 && this.j.k.size() > 0) {
                            wk wkVar13 = (wk) this.i.k.get(0);
                            int min = Math.min((((wk) this.j.k.get(0)).f + this.j.e) - (wkVar13.f + this.i.e), this.f.m);
                            vx vxVar5 = this.d;
                            int i41 = vxVar5.w;
                            int max = Math.max(vxVar5.v, min);
                            if (i41 > 0) {
                                max = Math.min(i41, max);
                            }
                            this.f.c(max);
                        }
                        if (this.f.i) {
                            wk wkVar14 = (wk) this.i.k.get(0);
                            wk wkVar15 = (wk) this.j.k.get(0);
                            int i42 = wkVar14.f;
                            wk wkVar16 = this.i;
                            int i43 = wkVar16.e + i42;
                            int i44 = wkVar15.f;
                            int i45 = this.j.e + i44;
                            float f4 = this.d.ad;
                            if (wkVar14 == wkVar15) {
                                f4 = 0.5f;
                            }
                            if (wkVar14 != wkVar15) {
                                i44 = i45;
                            }
                            if (wkVar14 != wkVar15) {
                                i42 = i43;
                            }
                            wkVar16.c((int) (i42 + 0.5f + (((i44 - i42) - this.f.f) * f4)));
                            this.j.c(this.i.f + this.f.f);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
