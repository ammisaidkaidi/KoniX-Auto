package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VerticalWidgetRun extends WidgetRun {
    public final DimensionDependencyNode a;
    DimensionDependencyNodeSub b;

    public VerticalWidgetRun(ConstraintWidget vxVar) {
        super(vxVar);
        DimensionDependencyNode wkVar = new DimensionDependencyNode(this);
        this.a = wkVar;
        this.b = null;
        this.i.l = 6;
        this.j.l = 7;
        wkVar.l = 8;
        this.g = 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0414  */
    @Override // defpackage.WidgetRun
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b() {
        ConstraintWidget vxVar;
        ConstraintAnchor vwVar;
        ConstraintWidget vxVar2;
        ConstraintWidget vxVar3;
        ConstraintWidget vxVar4 = this.d;
        if (vxVar4.e) {
            this.f.c(vxVar4.h());
        }
        if (!this.f.i) {
            this.k = this.d.O();
            if (this.d.F) {
                this.b = new DimensionDependencyNodeSub(this);
            }
            if (this.k != 3) {
                if (this.k == 4 && (vxVar3 = this.d.T) != null && vxVar3.O() == 1) {
                    int h = vxVar3.h();
                    int b = this.d.K.b();
                    int b2 = this.d.M.b();
                    j(this.i, vxVar3.i.i, this.d.K.b());
                    j(this.j, vxVar3.i.j, -this.d.M.b());
                    this.f.c((ProtoMessageSingleEnumFieldH - b) - b2);
                    return;
                }
                if (this.k == 1) {
                    this.f.c(this.d.h());
                }
            }
        } else if (this.k == 4 && (vxVar = this.d.T) != null && vxVar.O() == 1) {
            j(this.i, vxVar.i.i, this.d.K.b());
            j(this.j, vxVar.i.j, -this.d.M.b());
            return;
        }
        DimensionDependencyNodeSub wlVar = this.f;
        if (wlVar.i) {
            ConstraintWidget vxVar5 = this.d;
            if (vxVar5.e) {
                ConstraintAnchor[] vwVarArr = vxVar5.R;
                ConstraintAnchor vwVar2 = vwVarArr[2];
                ConstraintAnchor vwVar3 = vwVar2.e;
                if (vwVar3 != null && vwVarArr[3].e != null) {
                    if (vxVar5.J()) {
                        this.i.e = this.d.R[2].b();
                        this.j.e = -this.d.R[3].b();
                    } else {
                        DimensionDependencyNode k = k(this.d.R[2]);
                        if (ProtoCompositeMessageK != null) {
                            j(this.i, k, this.d.R[2].b());
                        }
                        DimensionDependencyNode k2 = k(this.d.R[3]);
                        if (k2 != null) {
                            j(this.j, k2, -this.d.R[3].b());
                        }
                        this.i.b = true;
                        this.j.b = true;
                    }
                    ConstraintWidget vxVar6 = this.d;
                    if (vxVar6.F) {
                        j(this.a, this.i, vxVar6.aa);
                        return;
                    }
                    return;
                }
                if (vwVar3 != null) {
                    DimensionDependencyNode k3 = k(vwVar2);
                    if (k3 != null) {
                        j(this.i, k3, this.d.R[2].b());
                        j(this.j, this.i, this.f.f);
                        ConstraintWidget vxVar7 = this.d;
                        if (vxVar7.F) {
                            j(this.a, this.i, vxVar7.aa);
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintAnchor vwVar4 = vwVarArr[3];
                if (vwVar4.e != null) {
                    DimensionDependencyNode k4 = k(vwVar4);
                    if (k4 != null) {
                        j(this.j, k4, -this.d.R[3].b());
                        j(this.i, this.j, -this.f.f);
                    }
                    ConstraintWidget vxVar8 = this.d;
                    if (vxVar8.F) {
                        j(this.a, this.i, vxVar8.aa);
                        return;
                    }
                    return;
                }
                ConstraintAnchor vwVar5 = vwVarArr[4];
                if (vwVar5.e != null) {
                    DimensionDependencyNode k5 = k(vwVar5);
                    if (k5 != null) {
                        j(this.a, k5, 0);
                        j(this.i, this.a, -this.d.aa);
                        j(this.j, this.i, this.f.f);
                        return;
                    }
                    return;
                }
                if ((vxVar5 instanceof HelperWidget) || vxVar5.T == null || vxVar5.L(7).e != null) {
                    return;
                }
                ConstraintWidget vxVar9 = this.d;
                j(this.i, vxVar9.T.i.i, vxVar9.l());
                j(this.j, this.i, this.f.f);
                ConstraintWidget vxVar10 = this.d;
                if (vxVar10.F) {
                    j(this.a, this.i, vxVar10.aa);
                    return;
                }
                return;
            }
        } else if (this.k == 3) {
            ConstraintWidget vxVar11 = this.d;
            switch (vxVar11.t) {
                case 2:
                    ConstraintWidget vxVar12 = vxVar11.T;
                    if (vxVar12 != null) {
                        DimensionDependencyNodeSub wlVar2 = vxVar12.i.f;
                        wlVar.k.add(wlVar2);
                        wlVar2.j.add(this.f);
                        DimensionDependencyNodeSub wlVar3 = this.f;
                        wlVar3.b = true;
                        wlVar3.j.add(this.i);
                        this.f.j.add(this.j);
                        break;
                    }
                    break;
                case 3:
                    if (!vxVar11.J()) {
                        ConstraintWidget vxVar13 = this.d;
                        if (vxVar13.s != 3) {
                            DimensionDependencyNodeSub wlVar4 = vxVar13.h.f;
                            this.f.k.add(wlVar4);
                            wlVar4.j.add(this.f);
                            DimensionDependencyNodeSub wlVar5 = this.f;
                            wlVar5.b = true;
                            wlVar5.j.add(this.i);
                            this.f.j.add(this.j);
                            break;
                        }
                    }
                    break;
            }
            ConstraintWidget vxVar14 = this.d;
            ConstraintAnchor[] vwVarArr2 = vxVar14.R;
            ConstraintAnchor vwVar6 = vwVarArr2[2];
            vwVar = vwVar6.e;
            if (vwVar == null && vwVarArr2[3].e != null) {
                if (vxVar14.J()) {
                    this.i.e = this.d.R[2].b();
                    this.j.e = -this.d.R[3].b();
                } else {
                    DimensionDependencyNode k6 = k(this.d.R[2]);
                    DimensionDependencyNode k7 = k(this.d.R[3]);
                    if (k6 != null) {
                        k6.a(this);
                    }
                    if (k7 != null) {
                        k7.a(this);
                    }
                    this.l = 4;
                }
                if (this.d.F) {
                    i(this.a, this.i, 1, this.b);
                }
            } else if (vwVar == null) {
                DimensionDependencyNode k8 = k(vwVar6);
                if (k8 != null) {
                    j(this.i, k8, this.d.R[2].b());
                    i(this.j, this.i, 1, this.f);
                    if (this.d.F) {
                        i(this.a, this.i, 1, this.b);
                    }
                    if (this.k == 3) {
                        ConstraintWidget vxVar15 = this.d;
                        if (vxVar15.W > 0.0f) {
                            HorizontalWidgetRun wpVar = vxVar15.h;
                            if (wpVar.k == 3) {
                                wpVar.f.j.add(this.f);
                                this.f.k.add(this.d.h.f);
                                this.f.a = this;
                            }
                        }
                    }
                }
            } else {
                ConstraintAnchor vwVar7 = vwVarArr2[3];
                if (vwVar7.e != null) {
                    DimensionDependencyNode k9 = k(vwVar7);
                    if (k9 != null) {
                        j(this.j, k9, -this.d.R[3].b());
                        i(this.i, this.j, -1, this.f);
                        if (this.d.F) {
                            i(this.a, this.i, 1, this.b);
                        }
                    }
                } else {
                    ConstraintAnchor vwVar8 = vwVarArr2[4];
                    if (vwVar8.e != null) {
                        DimensionDependencyNode k10 = k(vwVar8);
                        if (k10 != null) {
                            j(this.a, k10, 0);
                            i(this.i, this.a, -1, this.b);
                            i(this.j, this.i, 1, this.f);
                        }
                    } else if (!(vxVar14 instanceof HelperWidget) && (vxVar2 = vxVar14.T) != null) {
                        j(this.i, vxVar2.i.i, vxVar14.l());
                        i(this.j, this.i, 1, this.f);
                        if (this.d.F) {
                            i(this.a, this.i, 1, this.b);
                        }
                        if (this.k == 3) {
                            ConstraintWidget vxVar16 = this.d;
                            if (vxVar16.W > 0.0f) {
                                HorizontalWidgetRun wpVar2 = vxVar16.h;
                                if (wpVar2.k == 3) {
                                    wpVar2.f.j.add(this.f);
                                    this.f.k.add(this.d.h.f);
                                    this.f.a = this;
                                }
                            }
                        }
                    }
                }
            }
            if (this.f.k.size() != 0) {
                this.f.c = true;
                return;
            }
            return;
        }
        wlVar.a(this);
        ConstraintWidget vxVar142 = this.d;
        ConstraintAnchor[] vwVarArr22 = vxVar142.R;
        ConstraintAnchor vwVar62 = vwVarArr22[2];
        vwVar = vwVar62.e;
        if (vwVar == null) {
        }
        if (vwVar == null) {
        }
        if (this.f.k.size() != 0) {
        }
    }

    @Override // defpackage.WidgetRun
    public final void c() {
        DimensionDependencyNode wkVar = this.i;
        if (wkVar.i) {
            this.d.Z = wkVar.f;
        }
    }

    @Override // defpackage.WidgetRun
    public final void d() {
        this.e = null;
        this.i.b();
        this.j.b();
        this.a.b();
        this.f.b();
        this.h = false;
    }

    @Override // defpackage.WidgetRun
    public final boolean e() {
        return this.k != 3 || this.d.t == 0;
    }

    public final void g() {
        this.h = false;
        this.i.b();
        this.i.i = false;
        this.j.b();
        this.j.i = false;
        this.a.b();
        this.a.i = false;
        this.f.i = false;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.d.ah);
        return valueOf.length() != 0 ? "VerticalRun ".concat(valueOf) : new String("VerticalRun ");
    }

    @Override // defpackage.WidgetRun, defpackage.WidgetRunDependency
    public final void f() {
        int i;
        int i2 = this.l;
        int i3 = i2 - 1;
        if (i2 == 0) {
            throw null;
        }
        switch (i3) {
            case 3:
                ConstraintWidget vxVar = this.d;
                m(vxVar.K, vxVar.M, 1);
                return;
            default:
                DimensionDependencyNodeSub wlVar = this.f;
                if (wlVar.c && !wlVar.i && this.k == 3) {
                    ConstraintWidget vxVar2 = this.d;
                    switch (vxVar2.t) {
                        case 2:
                            ConstraintWidget vxVar3 = vxVar2.T;
                            if (vxVar3 != null) {
                                if (vxVar3.i.f.i) {
                                    wlVar.c((int) ((r5.f * vxVar2.A) + 0.5f));
                                    break;
                                }
                            }
                            break;
                        case 3:
                            if (vxVar2.h.f.i) {
                                switch (vxVar2.X) {
                                    case -1:
                                        i = (int) ((r5.f / vxVar2.W) + 0.5f);
                                        break;
                                    case 0:
                                        i = (int) ((r5.f * vxVar2.W) + 0.5f);
                                        break;
                                    default:
                                        i = (int) ((r5.f / vxVar2.W) + 0.5f);
                                        break;
                                }
                                wlVar.c(NavInstructionTypeEnum);
                                break;
                            }
                            break;
                    }
                }
                DimensionDependencyNode wkVar = this.i;
                if (wkVar.c) {
                    DimensionDependencyNode wkVar2 = this.j;
                    if (wkVar2.c) {
                        if (wkVar.i && wkVar2.i && this.f.i) {
                            return;
                        }
                        if (!this.f.i && this.k == 3) {
                            ConstraintWidget vxVar4 = this.d;
                            if (vxVar4.s == 0 && !vxVar4.J()) {
                                DimensionDependencyNode wkVar3 = (DimensionDependencyNode) this.i.k.get(0);
                                DimensionDependencyNode wkVar4 = (DimensionDependencyNode) this.j.k.get(0);
                                int i4 = wkVar3.f;
                                DimensionDependencyNode wkVar5 = this.i;
                                int i5 = i4 + wkVar5.e;
                                int i6 = wkVar4.f + this.j.e;
                                wkVar5.c(i5);
                                this.j.c(i6);
                                this.f.c(i6 - i5);
                                return;
                            }
                        }
                        if (!this.f.i && this.k == 3 && this.c == 1 && this.i.k.size() > 0 && this.j.k.size() > 0) {
                            int i7 = (((DimensionDependencyNode) this.j.k.get(0)).f + this.j.e) - (((DimensionDependencyNode) this.i.k.get(0)).f + this.i.e);
                            DimensionDependencyNodeSub wlVar2 = this.f;
                            int i8 = wlVar2.m;
                            if (i7 < i8) {
                                wlVar2.c(i7);
                            } else {
                                wlVar2.c(i8);
                            }
                        }
                        if (this.f.i && this.i.k.size() > 0 && this.j.k.size() > 0) {
                            DimensionDependencyNode wkVar6 = (DimensionDependencyNode) this.i.k.get(0);
                            DimensionDependencyNode wkVar7 = (DimensionDependencyNode) this.j.k.get(0);
                            int i9 = wkVar6.f;
                            DimensionDependencyNode wkVar8 = this.i;
                            int i10 = wkVar8.e + i9;
                            int i11 = wkVar7.f;
                            int i12 = this.j.e + i11;
                            float f = this.d.ae;
                            if (wkVar6 == wkVar7) {
                                f = 0.5f;
                            }
                            if (wkVar6 != wkVar7) {
                                i11 = i12;
                            }
                            if (wkVar6 != wkVar7) {
                                i9 = i10;
                            }
                            wkVar8.c((int) (i9 + 0.5f + (((i11 - i9) - this.f.f) * f)));
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
