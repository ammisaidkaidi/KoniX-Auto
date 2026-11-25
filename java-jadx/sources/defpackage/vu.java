package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class vu extends wb {
    public int a = 0;
    public boolean b = true;
    public int c = 0;
    boolean d = false;

    public final int a() {
        switch (this.a) {
            case 0:
            case 1:
                return 0;
            case 2:
            case 3:
                return 1;
            default:
                return -1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x00fe, code lost:
    
        if (r6 != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0102, code lost:
    
        if (r7 != false) goto L89;
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x019f  */
    @Override // defpackage.vx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(vn vnVar, boolean z) {
        vw[] vwVarArr;
        boolean z2;
        int i;
        int i2;
        vw[] vwVarArr2 = this.R;
        vwVarArr2[0] = this.J;
        vwVarArr2[2] = this.K;
        vwVarArr2[1] = this.L;
        vwVarArr2[3] = this.M;
        int i3 = 0;
        while (true) {
            vwVarArr = this.R;
            int length = vwVarArr.length;
            if (i3 >= 6) {
                break;
            }
            vw vwVar = vwVarArr[i3];
            vwVar.h = vnVar.b(vwVar);
            i3++;
        }
        int i4 = this.a;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        vw vwVar2 = vwVarArr[i4];
        if (!this.d) {
            c();
        }
        if (this.d) {
            this.d = false;
            int i5 = this.a;
            if (i5 == 0 || i5 == 1) {
                vnVar.f(this.J.h, this.Y);
                vnVar.f(this.L.h, this.Y);
                return;
            } else {
                if (i5 == 2 || i5 == 3) {
                    vnVar.f(this.K.h, this.Z);
                    vnVar.f(this.M.h, this.Z);
                    return;
                }
                return;
            }
        }
        int i6 = 0;
        while (true) {
            if (i6 >= this.ar) {
                z2 = false;
                break;
            }
            vx vxVar = this.aq[i6];
            if (this.b || vxVar.d()) {
                int i7 = this.a;
                if ((i7 == 0 || i7 == 1) && vxVar.N() == 3 && vxVar.J.e != null && vxVar.L.e != null) {
                    z2 = true;
                    break;
                }
                int i8 = this.a;
                if ((i8 == 2 || i8 == 3) && vxVar.O() == 3 && vxVar.K.e != null && vxVar.M.e != null) {
                    z2 = true;
                    break;
                }
            }
            i6++;
        }
        boolean z3 = !this.J.f() ? this.L.f() : true;
        boolean z4 = !this.K.f() ? this.M.f() : true;
        int i9 = 5;
        if (!z2) {
            int i10 = this.a;
            if (i10 == 0) {
                if (!z3) {
                    i10 = 0;
                    z3 = false;
                }
                for (i = 0; i < this.ar; i++) {
                    vx vxVar2 = this.aq[i];
                    if (this.b || vxVar2.d()) {
                        vs b = vnVar.b(vxVar2.R[this.a]);
                        vw[] vwVarArr3 = vxVar2.R;
                        int i11 = this.a;
                        vw vwVar3 = vwVarArr3[i11];
                        vwVar3.h = b;
                        vw vwVar4 = vwVar3.e;
                        int i12 = (vwVar4 == null || vwVar4.d != this) ? 0 : vwVar3.f;
                        if (i11 == 0 || i11 == 2) {
                            vs vsVar = vwVar2.h;
                            int i13 = this.c;
                            vl a = vnVar.a();
                            vs c = vnVar.c();
                            c.e = 0;
                            a.i(vsVar, b, c, i13 - i12);
                            vnVar.e(a);
                        } else {
                            vs vsVar2 = vwVar2.h;
                            int i14 = this.c;
                            vl a2 = vnVar.a();
                            vs c2 = vnVar.c();
                            c2.e = 0;
                            a2.h(vsVar2, b, c2, i14 + i12);
                            vnVar.e(a2);
                        }
                        vnVar.m(vwVar2.h, b, this.c + i12, i9);
                    }
                }
                i2 = this.a;
                if (i2 == 0) {
                    vnVar.m(this.L.h, this.J.h, 0, 8);
                    vnVar.m(this.J.h, this.T.L.h, 0, 4);
                    vnVar.m(this.J.h, this.T.J.h, 0, 0);
                    return;
                }
                if (i2 == 1) {
                    vnVar.m(this.J.h, this.L.h, 0, 8);
                    vnVar.m(this.J.h, this.T.J.h, 0, 4);
                    vnVar.m(this.J.h, this.T.L.h, 0, 0);
                    return;
                } else if (i2 == 2) {
                    vnVar.m(this.M.h, this.K.h, 0, 8);
                    vnVar.m(this.K.h, this.T.M.h, 0, 4);
                    vnVar.m(this.K.h, this.T.K.h, 0, 0);
                    return;
                } else {
                    if (i2 == 3) {
                        vnVar.m(this.K.h, this.M.h, 0, 8);
                        vnVar.m(this.K.h, this.T.K.h, 0, 4);
                        vnVar.m(this.K.h, this.T.M.h, 0, 0);
                        return;
                    }
                    return;
                }
            }
            if (i10 == 2) {
                if (!z4) {
                    z4 = false;
                }
                while (i < this.ar) {
                }
                i2 = this.a;
                if (i2 == 0) {
                }
            }
            if (i10 == 1) {
            }
            if (i10 == 3) {
            }
        }
        i9 = 4;
        while (i < this.ar) {
        }
        i2 = this.a;
        if (i2 == 0) {
        }
    }

    public final boolean c() {
        int i;
        int i2 = 0;
        boolean z = true;
        while (true) {
            i = this.ar;
            if (i2 >= i) {
                break;
            }
            vx vxVar = this.aq[i2];
            if (this.b || vxVar.d()) {
                int i3 = this.a;
                if ((i3 == 0 || i3 == 1) && !vxVar.e()) {
                    z = false;
                } else {
                    int i4 = this.a;
                    if ((i4 == 2 || i4 == 3) && !vxVar.f()) {
                        z = false;
                    }
                }
            }
            i2++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.ar; i6++) {
            vx vxVar2 = this.aq[i6];
            if (this.b || vxVar2.d()) {
                if (!z2) {
                    int i7 = this.a;
                    if (i7 == 0) {
                        i5 = vxVar2.L(2).a();
                    } else if (i7 == 1) {
                        i5 = vxVar2.L(4).a();
                    } else if (i7 == 2) {
                        i5 = vxVar2.L(3).a();
                    } else if (i7 == 3) {
                        i5 = vxVar2.L(5).a();
                    }
                }
                int i8 = this.a;
                if (i8 == 0) {
                    i5 = Math.min(i5, vxVar2.L(2).a());
                    z2 = true;
                } else if (i8 == 1) {
                    i5 = Math.max(i5, vxVar2.L(4).a());
                    z2 = true;
                } else if (i8 == 2) {
                    i5 = Math.min(i5, vxVar2.L(3).a());
                    z2 = true;
                } else {
                    if (i8 == 3) {
                        i5 = Math.max(i5, vxVar2.L(5).a());
                    }
                    z2 = true;
                }
            }
        }
        int i9 = i5 + this.c;
        int i10 = this.a;
        if (i10 == 0 || i10 == 1) {
            w(i9, i9);
        } else {
            x(i9, i9);
        }
        this.d = true;
        return true;
    }

    @Override // defpackage.vx
    public final boolean d() {
        return true;
    }

    @Override // defpackage.vx
    public final boolean e() {
        return this.d;
    }

    @Override // defpackage.vx
    public final boolean f() {
        return this.d;
    }

    @Override // defpackage.vx
    public final String toString() {
        String str = this.ah;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append("[Barrier] ");
        sb.append(str);
        sb.append(" {");
        String sb2 = sb.toString();
        for (int i = 0; i < this.ar; i++) {
            vx vxVar = this.aq[i];
            if (i > 0) {
                sb2 = String.valueOf(sb2).concat(", ");
            }
            String valueOf = String.valueOf(sb2);
            String valueOf2 = String.valueOf(vxVar.ah);
            sb2 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        return String.valueOf(sb2).concat("}");
    }
}
