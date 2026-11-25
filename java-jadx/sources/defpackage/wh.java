package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class wh extends wt {
    ArrayList a;
    private int b;

    public wh(vx vxVar, int i) {
        super(vxVar);
        this.a = new ArrayList();
        this.g = i;
        vx vxVar2 = this.d;
        vx n = vxVar2.n(i);
        vx vxVar3 = vxVar2;
        vx vxVar4 = n;
        while (vxVar4 != null) {
            vxVar3 = vxVar4;
            vxVar4 = vxVar4.n(this.g);
        }
        this.d = vxVar3;
        this.a.add(vxVar3.o(this.g));
        vx m = vxVar3.m(this.g);
        while (m != null) {
            this.a.add(m.o(this.g));
            m = m.m(this.g);
        }
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            wt wtVar = (wt) arrayList.get(i2);
            int i3 = this.g;
            if (i3 == 0) {
                wtVar.d.f = this;
            } else if (i3 == 1) {
                wtVar.d.g = this;
            }
        }
        if (this.g == 0 && ((vy) this.d.T).d && this.a.size() > 1) {
            this.d = ((wt) this.a.get(r6.size() - 1)).d;
        }
        this.b = this.g == 0 ? this.d.ai : this.d.aj;
    }

    private final vx g() {
        for (int i = 0; i < this.a.size(); i++) {
            vx vxVar = ((wt) this.a.get(i)).d;
            if (vxVar.ag != 8) {
                return vxVar;
            }
        }
        return null;
    }

    private final vx n() {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            vx vxVar = ((wt) this.a.get(size)).d;
            if (vxVar.ag != 8) {
                return vxVar;
            }
        }
        return null;
    }

    @Override // defpackage.wt
    public final long a() {
        int size = this.a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = j + r4.i.e + ((wt) this.a.get(i)).a() + r4.j.e;
        }
        return j;
    }

    @Override // defpackage.wt
    public final void b() {
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((wt) arrayList.get(i)).b();
        }
        int size2 = this.a.size();
        if (size2 <= 0) {
            return;
        }
        vx vxVar = ((wt) this.a.get(0)).d;
        vx vxVar2 = ((wt) this.a.get(size2 - 1)).d;
        if (this.g == 0) {
            vw vwVar = vxVar.J;
            vw vwVar2 = vxVar2.L;
            wk l = l(vwVar, 0);
            int b = vwVar.b();
            vx g = g();
            if (g != null) {
                b = g.J.b();
            }
            if (l != null) {
                j(this.i, l, b);
            }
            wk l2 = l(vwVar2, 0);
            int b2 = vwVar2.b();
            vx n = n();
            if (n != null) {
                b2 = n.L.b();
            }
            if (l2 != null) {
                j(this.j, l2, -b2);
            }
        } else {
            vw vwVar3 = vxVar.K;
            vw vwVar4 = vxVar2.M;
            wk l3 = l(vwVar3, 1);
            int b3 = vwVar3.b();
            vx g2 = g();
            if (g2 != null) {
                b3 = g2.K.b();
            }
            if (l3 != null) {
                j(this.i, l3, b3);
            }
            wk l4 = l(vwVar4, 1);
            int b4 = vwVar4.b();
            vx n2 = n();
            if (n2 != null) {
                b4 = n2.M.b();
            }
            if (l4 != null) {
                j(this.j, l4, -b4);
            }
        }
        this.i.a = this;
        this.j.a = this;
    }

    @Override // defpackage.wt
    public final void c() {
        for (int i = 0; i < this.a.size(); i++) {
            ((wt) this.a.get(i)).c();
        }
    }

    @Override // defpackage.wt
    public final void d() {
        this.e = null;
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((wt) arrayList.get(i)).d();
        }
    }

    @Override // defpackage.wt
    public final boolean e() {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            if (!((wt) this.a.get(i)).e()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:290:0x03ee, code lost:
    
        r10 = r10 - r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:146:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00db  */
    @Override // defpackage.wt, defpackage.wi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void f() {
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        boolean z;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z2;
        int i9;
        float f2;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        wk wkVar = this.i;
        if (!wkVar.i) {
            return;
        }
        wk wkVar2 = this.j;
        if (!wkVar2.i) {
            return;
        }
        vx vxVar = this.d.T;
        boolean z3 = vxVar instanceof vy ? ((vy) vxVar).d : false;
        int i17 = wkVar2.f - wkVar.f;
        int size = this.a.size();
        int i18 = 0;
        while (true) {
            i = 8;
            if (i18 >= size) {
                i18 = -1;
                break;
            } else if (((wt) this.a.get(i18)).d.ag != 8) {
                break;
            } else {
                i18++;
            }
        }
        int i19 = size - 1;
        int i20 = i19;
        while (true) {
            if (i20 < 0) {
                i20 = -1;
                break;
            } else if (((wt) this.a.get(i20)).d.ag != 8) {
                break;
            } else {
                i20--;
            }
        }
        int i21 = 0;
        while (true) {
            int i22 = 3;
            if (i21 >= 2) {
                i2 = 0;
                i3 = 0;
                i4 = 0;
                f = 0.0f;
                break;
            }
            i3 = 0;
            int i23 = 0;
            i13 = 0;
            f = 0.0f;
            i14 = 0;
            while (i23 < size) {
                wt wtVar = (wt) this.a.get(i23);
                vx vxVar2 = wtVar.d;
                if (vxVar2.ag != i) {
                    i14++;
                    if (i23 > 0 && i23 >= i18) {
                        i3 += wtVar.i.e;
                    }
                    wl wlVar = wtVar.f;
                    int i24 = wlVar.f;
                    boolean z4 = wtVar.k != i22;
                    if (z4) {
                        int i25 = this.g;
                        if (i25 == 0) {
                            if (!vxVar2.h.f.i) {
                                return;
                            } else {
                                i15 = i24;
                            }
                        } else if (i25 == 1 && !vxVar2.i.f.i) {
                            return;
                        } else {
                            i15 = i24;
                        }
                    } else {
                        i15 = i24;
                        if (wtVar.c == 1 && i21 == 0) {
                            i16 = wlVar.m;
                            i13++;
                            z4 = true;
                        } else if (wlVar.i) {
                            i16 = i15;
                            z4 = true;
                        }
                        if (z4) {
                            i13++;
                            float f3 = vxVar2.ak[this.g];
                            if (f3 >= 0.0f) {
                                f += f3;
                            }
                        } else {
                            i3 += i16;
                        }
                        if (i23 < i19 && i23 < i20) {
                            i3 += -wtVar.j.e;
                        }
                    }
                    i16 = i15;
                    if (z4) {
                    }
                    if (i23 < i19) {
                        i3 += -wtVar.j.e;
                    }
                }
                i23++;
                i = 8;
                i22 = 3;
            }
            if (i3 < i17 || i13 == 0) {
                break;
            }
            i21++;
            i = 8;
        }
        i2 = i13;
        i4 = i14;
        int i26 = this.i.f;
        if (z3) {
            i26 = this.j.f;
        }
        if (i3 > i17) {
            i26 = z3 ? i26 + ((int) (((i3 - i17) / 2.0f) + 0.5f)) : i26 - ((int) (((i3 - i17) / 2.0f) + 0.5f));
        }
        if (i2 > 0) {
            float f4 = i17 - i3;
            int i27 = (int) ((f4 / i2) + 0.5f);
            int i28 = 0;
            int i29 = 0;
            while (i28 < size) {
                wt wtVar2 = (wt) this.a.get(i28);
                int i30 = i3;
                vx vxVar3 = wtVar2.d;
                int i31 = i27;
                int i32 = i26;
                if (vxVar3.ag == 8) {
                    z2 = z3;
                    i9 = i4;
                    f2 = f4;
                } else {
                    if (wtVar2.k == 3) {
                        wl wlVar2 = wtVar2.f;
                        if (!wlVar2.i) {
                            if (f > 0.0f) {
                                z2 = z3;
                                i10 = (int) (((vxVar3.ak[this.g] * f4) / f) + 0.5f);
                            } else {
                                z2 = z3;
                                i10 = i31;
                            }
                            if (this.g == 0) {
                                i11 = vxVar3.w;
                                i12 = vxVar3.v;
                            } else {
                                i11 = vxVar3.z;
                                i12 = vxVar3.y;
                            }
                            f2 = f4;
                            i9 = i4;
                            int max = Math.max(i12, wtVar2.c == 1 ? Math.min(i10, wlVar2.m) : i10);
                            if (i11 > 0) {
                                max = Math.min(i11, max);
                            }
                            if (max != i10) {
                                i29++;
                                i10 = max;
                            }
                            wtVar2.f.c(i10);
                        }
                    }
                    z2 = z3;
                    i9 = i4;
                    f2 = f4;
                }
                i28++;
                i3 = i30;
                i27 = i31;
                i26 = i32;
                z3 = z2;
                f4 = f2;
                i4 = i9;
            }
            z = z3;
            int i33 = i3;
            i5 = i4;
            i6 = i26;
            if (i29 > 0) {
                i2 -= i29;
                i3 = 0;
                for (int i34 = 0; i34 < size; i34++) {
                    wt wtVar3 = (wt) this.a.get(i34);
                    if (wtVar3.d.ag != 8) {
                        if (i34 > 0 && i34 >= i18) {
                            i3 += wtVar3.i.e;
                        }
                        i3 += wtVar3.f.f;
                        if (i34 < i19 && i34 < i20) {
                            i3 += -wtVar3.j.e;
                        }
                    }
                }
            } else {
                i3 = i33;
            }
            if (this.b == 2 && i29 == 0) {
                this.b = 0;
                if (i3 <= i17) {
                    i7 = 2;
                    this.b = 2;
                } else {
                    i7 = 2;
                }
                if (i5 > 0 && i2 == 0) {
                    if (i18 != i20) {
                        this.b = i7;
                        i2 = 0;
                    } else {
                        i2 = 0;
                    }
                }
                i8 = this.b;
                if (i8 != 1) {
                    int i35 = i5;
                    int i36 = i35 > 1 ? (i17 - i3) / (i35 - 1) : i35 == 1 ? (i17 - i3) / 2 : 0;
                    if (i2 > 0) {
                        i36 = 0;
                    }
                    int i37 = i6;
                    for (int i38 = 0; i38 < size; i38++) {
                        wt wtVar4 = (wt) this.a.get(z ? size - (i38 + 1) : i38);
                        if (wtVar4.d.ag == 8) {
                            wtVar4.i.c(i37);
                            wtVar4.j.c(i37);
                        } else {
                            if (i38 > 0) {
                                i37 = z ? i37 - i36 : i37 + i36;
                            }
                            if (i38 > 0 && i38 >= i18) {
                                i37 = z ? i37 - wtVar4.i.e : i37 + wtVar4.i.e;
                            }
                            if (z) {
                                wtVar4.j.c(i37);
                            } else {
                                wtVar4.i.c(i37);
                            }
                            wl wlVar3 = wtVar4.f;
                            int i39 = wlVar3.f;
                            if (wtVar4.k == 3 && wtVar4.c == 1) {
                                i39 = wlVar3.m;
                            }
                            i37 = z ? i37 - i39 : i37 + i39;
                            if (z) {
                                wtVar4.i.c(i37);
                            } else {
                                wtVar4.j.c(i37);
                            }
                            wtVar4.h = true;
                            if (i38 < i19 && i38 < i20) {
                                i37 = z ? i37 - (-wtVar4.j.e) : i37 + (-wtVar4.j.e);
                            }
                        }
                    }
                    return;
                }
                int i40 = i5;
                if (i8 == 0) {
                    int i41 = (i17 - i3) / (i40 + 1);
                    if (i2 > 0) {
                        i41 = 0;
                    }
                    int i42 = i6;
                    for (int i43 = 0; i43 < size; i43++) {
                        wt wtVar5 = (wt) this.a.get(z ? size - (i43 + 1) : i43);
                        if (wtVar5.d.ag == 8) {
                            wtVar5.i.c(i42);
                            wtVar5.j.c(i42);
                        } else {
                            int i44 = z ? i42 - i41 : i42 + i41;
                            if (i43 > 0 && i43 >= i18) {
                                i44 = z ? i44 - wtVar5.i.e : i44 + wtVar5.i.e;
                            }
                            if (z) {
                                wtVar5.j.c(i44);
                            } else {
                                wtVar5.i.c(i44);
                            }
                            wl wlVar4 = wtVar5.f;
                            int i45 = wlVar4.f;
                            if (wtVar5.k == 3 && wtVar5.c == 1) {
                                i45 = Math.min(i45, wlVar4.m);
                            }
                            i42 = z ? i44 - i45 : i44 + i45;
                            if (z) {
                                wtVar5.i.c(i42);
                            } else {
                                wtVar5.j.c(i42);
                            }
                            if (i43 < i19 && i43 < i20) {
                                i42 = z ? i42 - (-wtVar5.j.e) : i42 + (-wtVar5.j.e);
                            }
                        }
                    }
                    return;
                }
                if (i8 == 2) {
                    float f5 = this.g == 0 ? this.d.ad : this.d.ae;
                    if (z) {
                        f5 = 1.0f - f5;
                    }
                    int i46 = (int) (((i17 - i3) * f5) + 0.5f);
                    if (i46 < 0) {
                        i46 = 0;
                    } else if (i2 > 0) {
                        i46 = 0;
                    }
                    int i47 = z ? i6 - i46 : i6 + i46;
                    for (int i48 = 0; i48 < size; i48++) {
                        wt wtVar6 = (wt) this.a.get(z ? size - (i48 + 1) : i48);
                        if (wtVar6.d.ag == 8) {
                            wtVar6.i.c(i47);
                            wtVar6.j.c(i47);
                        } else {
                            if (i48 > 0 && i48 >= i18) {
                                i47 = z ? i47 - wtVar6.i.e : i47 + wtVar6.i.e;
                            }
                            if (z) {
                                wtVar6.j.c(i47);
                            } else {
                                wtVar6.i.c(i47);
                            }
                            wl wlVar5 = wtVar6.f;
                            int i49 = wlVar5.f;
                            if (wtVar6.k == 3 && wtVar6.c == 1) {
                                i49 = wlVar5.m;
                            }
                            i47 += i49;
                            if (z) {
                                wtVar6.i.c(i47);
                            } else {
                                wtVar6.j.c(i47);
                            }
                            if (i48 < i19 && i48 < i20) {
                                i47 = z ? i47 - (-wtVar6.j.e) : i47 + (-wtVar6.j.e);
                            }
                        }
                    }
                    return;
                }
                return;
            }
        } else {
            z = z3;
            i5 = i4;
            i6 = i26;
        }
        if (i3 <= i17) {
        }
        if (i5 > 0) {
            if (i18 != i20) {
            }
        }
        i8 = this.b;
        if (i8 != 1) {
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.g == 0 ? "horizontal : " : "vertical : ");
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            wt wtVar = (wt) arrayList.get(i);
            sb.append("<");
            sb.append(wtVar);
            sb.append("> ");
        }
        return sb.toString();
    }
}
