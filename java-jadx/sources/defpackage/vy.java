package defpackage;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class vy extends we {
    public int ar;
    public int as;
    public int c;
    public final wg a = new wg(this);
    public final wj b = new wj(this);
    public wz aG = null;
    public boolean d = false;
    public final vn aq = new vn();
    public int at = 0;
    public int au = 0;
    public vv[] av = new vv[4];
    public vv[] aw = new vv[4];
    public int ax = 257;
    public boolean ay = false;
    public boolean az = false;
    public WeakReference aA = null;
    public WeakReference aB = null;
    public WeakReference aC = null;
    public WeakReference aD = null;
    final HashSet aE = new HashSet();
    public final wf aF = new wf();

    public static void X(vx vxVar, wz wzVar, wf wfVar) {
        int i;
        int i2;
        if (wzVar == null) {
            return;
        }
        if (vxVar.ag == 8 || (vxVar instanceof wa) || (vxVar instanceof vu)) {
            wfVar.c = 0;
            wfVar.d = 0;
            return;
        }
        wfVar.i = vxVar.N();
        wfVar.j = vxVar.O();
        wfVar.a = vxVar.j();
        wfVar.b = vxVar.h();
        wfVar.g = false;
        wfVar.h = 0;
        boolean z = wfVar.i == 3;
        boolean z2 = wfVar.j == 3;
        boolean z3 = z && vxVar.W > 0.0f;
        boolean z4 = z2 && vxVar.W > 0.0f;
        if (z && vxVar.G(0) && vxVar.s == 0 && !z3) {
            wfVar.i = 2;
            if (z2 && vxVar.t == 0) {
                wfVar.i = 1;
                z = false;
            } else {
                z = false;
            }
        }
        if (z2 && vxVar.G(1) && vxVar.t == 0 && !z4) {
            wfVar.j = 2;
            if (z && vxVar.s == 0) {
                wfVar.j = 1;
                z2 = false;
            } else {
                z2 = false;
            }
        }
        if (vxVar.e()) {
            wfVar.i = 1;
            z = false;
        }
        if (vxVar.f()) {
            wfVar.j = 1;
            z2 = false;
        }
        if (z3) {
            if (vxVar.u[0] == 4) {
                wfVar.i = 1;
            } else if (!z2) {
                if (wfVar.j == 1) {
                    i2 = wfVar.b;
                } else {
                    wfVar.i = 2;
                    wzVar.a(vxVar, wfVar);
                    i2 = wfVar.d;
                }
                wfVar.i = 1;
                wfVar.a = (int) (vxVar.W * i2);
            }
        }
        if (z4) {
            if (vxVar.u[1] == 4) {
                wfVar.j = 1;
            } else if (!z) {
                if (wfVar.i == 1) {
                    i = wfVar.a;
                } else {
                    wfVar.j = 2;
                    wzVar.a(vxVar, wfVar);
                    i = wfVar.c;
                }
                wfVar.j = 1;
                if (vxVar.X == -1) {
                    wfVar.b = (int) (i / vxVar.W);
                } else {
                    wfVar.b = (int) (vxVar.W * i);
                }
            }
        }
        wzVar.a(vxVar, wfVar);
        vxVar.D(wfVar.c);
        vxVar.y(wfVar.d);
        vxVar.F = wfVar.f;
        vxVar.v(wfVar.e);
        wfVar.h = 0;
        boolean z5 = wfVar.g;
    }

    private final void Z(vw vwVar, vs vsVar) {
        this.aq.g(vsVar, this.aq.b(vwVar), 0, 5);
    }

    private final void aa(vw vwVar, vs vsVar) {
        this.aq.g(this.aq.b(vwVar), vsVar, 0, 5);
    }

    private final void ab() {
        this.at = 0;
        this.au = 0;
    }

    @Override // defpackage.vx
    public final void E(boolean z, boolean z2) {
        super.E(z, z2);
        int size = this.aH.size();
        for (int i = 0; i < size; i++) {
            ((vx) this.aH.get(i)).E(z, z2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:191:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x066c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x067a  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x068d  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x06a3 A[EDGE_INSN: B:212:0x06a3->B:213:0x06a3 BREAK  A[LOOP:9: B:204:0x0689->B:210:0x069e], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x06a9  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x098b  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x09aa  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x09ba A[LOOP:14: B:251:0x09b8->B:252:0x09ba, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0a23  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0a41  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0a50  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0a91  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0aa5  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x0684  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:687:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:704:0x05ed A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:709:0x05ff  */
    /* JADX WARN: Removed duplicated region for block: B:715:0x0621  */
    /* JADX WARN: Removed duplicated region for block: B:722:0x0639  */
    /* JADX WARN: Removed duplicated region for block: B:724:0x0618  */
    @Override // defpackage.we
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void T() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        vn vnVar;
        int i6;
        int i7;
        boolean z2;
        boolean z3;
        int i8;
        ArrayList arrayList;
        int i9;
        int size;
        int i10;
        boolean z4;
        int max;
        int max2;
        int i11;
        int i12;
        int max3;
        int max4;
        HashSet hashSet;
        boolean z5;
        Iterator it;
        vu vuVar;
        boolean z6;
        int i13;
        ws wsVar;
        ws wsVar2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z7;
        boolean z8;
        boolean z9;
        int i19;
        boolean z10;
        int i20;
        this.Y = 0;
        this.Z = 0;
        this.ay = false;
        this.az = false;
        int size2 = this.aH.size();
        int max5 = Math.max(0, j());
        int max6 = Math.max(0, h());
        int[] iArr = this.ap;
        int i21 = iArr[1];
        int i22 = iArr[0];
        int i23 = -1;
        if (this.c == 0 && wc.b(this.ax, 1)) {
            wz wzVar = this.aG;
            int N = N();
            int O = O();
            wm.b = 0;
            wm.c = 0;
            t();
            ArrayList arrayList2 = this.aH;
            int size3 = arrayList2.size();
            for (int i24 = 0; i24 < size3; i24++) {
                ((vx) arrayList2.get(i24)).t();
            }
            boolean z11 = this.d;
            if (N == 1) {
                w(0, j());
                i18 = 0;
                z7 = false;
                z8 = false;
            } else {
                this.J.e(0);
                this.Y = 0;
                i18 = 0;
                z7 = false;
                z8 = false;
            }
            while (i18 < size3) {
                vx vxVar = (vx) arrayList2.get(i18);
                if (vxVar instanceof wa) {
                    wa waVar = (wa) vxVar;
                    if (waVar.aq == 1) {
                        int i25 = waVar.b;
                        if (i25 != i23) {
                            waVar.a(i25);
                            z7 = true;
                        } else if (waVar.c == i23 || !e()) {
                            if (e()) {
                                waVar.a((int) ((waVar.a * j()) + 0.5f));
                            }
                            z7 = true;
                        } else {
                            waVar.a(j() - waVar.c);
                            z7 = true;
                        }
                    }
                } else if ((vxVar instanceof vu) && ((vu) vxVar).a() == 0) {
                    z8 = true;
                }
                i18++;
                i23 = -1;
            }
            if (z7) {
                for (int i26 = 0; i26 < size3; i26++) {
                    vx vxVar2 = (vx) arrayList2.get(i26);
                    if (vxVar2 instanceof wa) {
                        wa waVar2 = (wa) vxVar2;
                        if (waVar2.aq == 1) {
                            wm.b(0, waVar2, wzVar, z11);
                        }
                    }
                }
            }
            wm.b(0, this, wzVar, z11);
            if (z8) {
                for (int i27 = 0; i27 < size3; i27++) {
                    vx vxVar3 = (vx) arrayList2.get(i27);
                    if (vxVar3 instanceof vu) {
                        vu vuVar2 = (vu) vxVar3;
                        if (vuVar2.a() == 0) {
                            wm.d(vuVar2, wzVar, 0, z11);
                        }
                    }
                }
            }
            if (O == 1) {
                i19 = 0;
                x(0, h());
                z9 = false;
                z10 = false;
            } else {
                this.K.e(0);
                this.Z = 0;
                z9 = false;
                i19 = 0;
                z10 = false;
            }
            while (i19 < size3) {
                vx vxVar4 = (vx) arrayList2.get(i19);
                if (vxVar4 instanceof wa) {
                    wa waVar3 = (wa) vxVar4;
                    if (waVar3.aq == 0) {
                        int i28 = waVar3.b;
                        if (i28 != -1) {
                            waVar3.a(i28);
                            z9 = true;
                        } else if (waVar3.c == -1 || !f()) {
                            if (f()) {
                                waVar3.a((int) ((waVar3.a * h()) + 0.5f));
                            }
                            z9 = true;
                        } else {
                            waVar3.a(h() - waVar3.c);
                            z9 = true;
                        }
                    }
                } else if ((vxVar4 instanceof vu) && ((vu) vxVar4).a() == 1) {
                    z10 = true;
                }
                i19++;
            }
            if (z9) {
                for (int i29 = 0; i29 < size3; i29++) {
                    vx vxVar5 = (vx) arrayList2.get(i29);
                    if (vxVar5 instanceof wa) {
                        wa waVar4 = (wa) vxVar5;
                        if (waVar4.aq == 0) {
                            wm.c(1, waVar4, wzVar);
                        }
                    }
                }
            }
            wm.c(0, this, wzVar);
            if (z10) {
                for (int i30 = 0; i30 < size3; i30++) {
                    vx vxVar6 = (vx) arrayList2.get(i30);
                    if (vxVar6 instanceof vu) {
                        vu vuVar3 = (vu) vxVar6;
                        if (vuVar3.a() == 1) {
                            wm.d(vuVar3, wzVar, 1, z11);
                        }
                    }
                }
                i20 = 0;
            } else {
                i20 = 0;
            }
            while (i20 < size3) {
                vx vxVar7 = (vx) arrayList2.get(i20);
                if (vxVar7.K() && wm.a(vxVar7)) {
                    X(vxVar7, wzVar, wm.a);
                    if (!(vxVar7 instanceof wa)) {
                        wm.b(0, vxVar7, wzVar, z11);
                        wm.c(0, vxVar7, wzVar);
                    } else if (((wa) vxVar7).aq == 0) {
                        wm.c(0, vxVar7, wzVar);
                    } else {
                        wm.b(0, vxVar7, wzVar, z11);
                    }
                }
                i20++;
            }
            for (int i31 = 0; i31 < size2; i31++) {
                vx vxVar8 = (vx) this.aH.get(i31);
                if (vxVar8.K() && !(vxVar8 instanceof wa) && !(vxVar8 instanceof vu) && !(vxVar8 instanceof wd)) {
                    boolean z12 = vxVar8.G;
                    int M = vxVar8.M(0);
                    int M2 = vxVar8.M(1);
                    if (M != 3 || vxVar8.s == 1 || M2 != 3 || vxVar8.t == 1) {
                        X(vxVar8, this.aG, new wf());
                    }
                }
            }
        }
        if (size2 > 2) {
            if (i22 != 2) {
                if (i21 != 2) {
                    i3 = max5;
                    i2 = i22;
                    i4 = i21;
                    i = size2;
                    z = false;
                    i5 = max6;
                    int i32 = 64;
                    boolean z13 = !W(64) ? W(128) : true;
                    vnVar = this.aq;
                    vnVar.f = false;
                    vnVar.g = false;
                    if (this.ax != 0 && z13) {
                        vnVar.g = true;
                    }
                    ArrayList arrayList3 = this.aH;
                    boolean z14 = N() != 2 ? O() == 2 : true;
                    ab();
                    i6 = 0;
                    while (true) {
                        i7 = i;
                        if (i6 >= i7) {
                            break;
                        }
                        vx vxVar9 = (vx) this.aH.get(i6);
                        if (vxVar9 instanceof we) {
                            ((we) vxVar9).T();
                        }
                        i6++;
                        i = i7;
                    }
                    z2 = z;
                    z3 = true;
                    int i33 = 0;
                    while (z3) {
                        int i34 = i33 + 1;
                        try {
                            this.aq.k();
                            ab();
                            q(this.aq);
                            for (int i35 = 0; i35 < i7; i35++) {
                                ((vx) this.aH.get(i35)).q(this.aq);
                            }
                            vn vnVar2 = this.aq;
                            boolean W = W(i32);
                            b(vnVar2, W);
                            int size4 = this.aH.size();
                            int i36 = 0;
                            boolean z15 = false;
                            while (i36 < size4) {
                                vx vxVar10 = (vx) this.aH.get(i36);
                                vxVar10.z(0, false);
                                int i37 = i34;
                                try {
                                    vxVar10.z(1, false);
                                    z15 |= vxVar10 instanceof vu;
                                    i36++;
                                    i34 = i37;
                                } catch (Exception e) {
                                    e = e;
                                    i8 = i5;
                                    arrayList = arrayList3;
                                    i9 = i37;
                                    e.printStackTrace();
                                    System.out.println("EXCEPTION : ".concat(e.toString()));
                                    wc.a[2] = false;
                                    boolean W2 = W(64);
                                    S(W2);
                                    size = this.aH.size();
                                    z4 = false;
                                    while (i10 < size) {
                                    }
                                    if (z14) {
                                    }
                                    max = Math.max(this.ab, j());
                                    if (max > j()) {
                                    }
                                    max2 = Math.max(this.ac, h());
                                    if (max2 > h()) {
                                    }
                                    if (z2) {
                                    }
                                    z3 = z4;
                                    i33 = i9;
                                    arrayList3 = arrayList;
                                    i32 = 64;
                                    i5 = i11;
                                }
                            }
                            int i38 = i34;
                            if (z15) {
                                for (int i39 = 0; i39 < size4; i39++) {
                                    vx vxVar11 = (vx) this.aH.get(i39);
                                    if (vxVar11 instanceof vu) {
                                        vu vuVar4 = (vu) vxVar11;
                                        int i40 = 0;
                                        while (i40 < vuVar4.ar) {
                                            vx vxVar12 = vuVar4.aq[i40];
                                            if (vuVar4.b || vxVar12.d()) {
                                                int i41 = vuVar4.a;
                                                if (i41 != 0) {
                                                    vuVar = vuVar4;
                                                    if (i41 == 1) {
                                                        z6 = true;
                                                    } else {
                                                        if (i41 != 2 && i41 != 3) {
                                                        }
                                                        vxVar12.z(1, true);
                                                    }
                                                } else {
                                                    vuVar = vuVar4;
                                                    z6 = true;
                                                }
                                                vxVar12.z(0, z6);
                                            } else {
                                                vuVar = vuVar4;
                                            }
                                            i40++;
                                            vuVar4 = vuVar;
                                        }
                                    }
                                }
                            }
                            this.aE.clear();
                            int i42 = 0;
                            while (i42 < size4) {
                                int i43 = i5;
                                ArrayList arrayList4 = arrayList3;
                                int i44 = i38;
                                boolean z16 = W;
                                vx vxVar13 = (vx) this.aH.get(i42);
                                if (vxVar13.F()) {
                                    if (vxVar13 instanceof wd) {
                                        this.aE.add(vxVar13);
                                    } else {
                                        vxVar13.b(vnVar2, z16);
                                    }
                                }
                                i42++;
                                i38 = i44;
                                W = z16;
                                arrayList3 = arrayList4;
                                i5 = i43;
                            }
                            while (this.aE.size() > 0) {
                                int size5 = this.aE.size();
                                Iterator it2 = this.aE.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    wd wdVar = (wd) ((vx) it2.next());
                                    HashSet hashSet2 = this.aE;
                                    int i45 = 0;
                                    while (true) {
                                        it = it2;
                                        if (i45 < wdVar.ar) {
                                            if (hashSet2.contains(wdVar.aq[i45])) {
                                                wdVar.b(vnVar2, W);
                                                this.aE.remove(wdVar);
                                                break;
                                            } else {
                                                i45++;
                                                it2 = it;
                                            }
                                        }
                                    }
                                    it2 = it;
                                }
                                if (size5 == this.aE.size()) {
                                    Iterator it3 = this.aE.iterator();
                                    while (it3.hasNext()) {
                                        ((vx) it3.next()).b(vnVar2, W);
                                    }
                                    this.aE.clear();
                                }
                            }
                            if (vn.a) {
                                try {
                                    hashSet = new HashSet();
                                    for (int i46 = 0; i46 < size4; i46++) {
                                        vx vxVar14 = (vx) this.aH.get(i46);
                                        if (!vxVar14.F()) {
                                            hashSet.add(vxVar14);
                                        }
                                    }
                                    arrayList = arrayList3;
                                    z5 = W;
                                    i8 = i5;
                                    i9 = i38;
                                } catch (Exception e2) {
                                    e = e2;
                                    i8 = i5;
                                    arrayList = arrayList3;
                                    i9 = i38;
                                }
                                try {
                                    p(this, vnVar2, hashSet, N() == 2 ? 0 : 1, false);
                                    Iterator it4 = hashSet.iterator();
                                    while (it4.hasNext()) {
                                        vx vxVar15 = (vx) it4.next();
                                        wc.a(this, vnVar2, vxVar15);
                                        vxVar15.b(vnVar2, z5);
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    e.printStackTrace();
                                    System.out.println("EXCEPTION : ".concat(e.toString()));
                                    wc.a[2] = false;
                                    boolean W22 = W(64);
                                    S(W22);
                                    size = this.aH.size();
                                    z4 = false;
                                    while (i10 < size) {
                                    }
                                    if (z14) {
                                    }
                                    max = Math.max(this.ab, j());
                                    if (max > j()) {
                                    }
                                    max2 = Math.max(this.ac, h());
                                    if (max2 > h()) {
                                    }
                                    if (z2) {
                                    }
                                    z3 = z4;
                                    i33 = i9;
                                    arrayList3 = arrayList;
                                    i32 = 64;
                                    i5 = i11;
                                }
                            } else {
                                i8 = i5;
                                arrayList = arrayList3;
                                i9 = i38;
                                boolean z17 = W;
                                for (int i47 = 0; i47 < size4; i47++) {
                                    vx vxVar16 = (vx) this.aH.get(i47);
                                    if (vxVar16 instanceof vy) {
                                        int[] iArr2 = vxVar16.ap;
                                        int i48 = iArr2[0];
                                        int i49 = iArr2[1];
                                        if (i48 == 2) {
                                            vxVar16.Q(1);
                                            i48 = 2;
                                        }
                                        if (i49 == 2) {
                                            vxVar16.R(1);
                                            i49 = 2;
                                        }
                                        vxVar16.b(vnVar2, z17);
                                        if (i48 == 2) {
                                            vxVar16.Q(2);
                                        }
                                        if (i49 == 2) {
                                            vxVar16.R(2);
                                        }
                                    } else {
                                        wc.a(this, vnVar2, vxVar16);
                                        if (!vxVar16.F()) {
                                            vxVar16.b(vnVar2, z17);
                                        }
                                    }
                                }
                            }
                            if (this.at > 0) {
                                try {
                                    hr.c(this, vnVar2, null, 0);
                                } catch (Exception e4) {
                                    e = e4;
                                    e.printStackTrace();
                                    System.out.println("EXCEPTION : ".concat(e.toString()));
                                    wc.a[2] = false;
                                    boolean W222 = W(64);
                                    S(W222);
                                    size = this.aH.size();
                                    z4 = false;
                                    while (i10 < size) {
                                    }
                                    if (z14) {
                                        int i50 = 0;
                                        int i51 = 0;
                                        while (i12 < i7) {
                                        }
                                        max3 = Math.max(this.ab, i50);
                                        max4 = Math.max(this.ac, i51);
                                        if (i2 == 2) {
                                            D(max3);
                                            this.ap[0] = 2;
                                            z4 = true;
                                            z2 = true;
                                        }
                                        if (i4 == 2) {
                                            y(max4);
                                            this.ap[1] = 2;
                                            z4 = true;
                                            z2 = true;
                                        }
                                    }
                                    max = Math.max(this.ab, j());
                                    if (max > j()) {
                                    }
                                    max2 = Math.max(this.ac, h());
                                    if (max2 > h()) {
                                    }
                                    if (z2) {
                                    }
                                    z3 = z4;
                                    i33 = i9;
                                    arrayList3 = arrayList;
                                    i32 = 64;
                                    i5 = i11;
                                }
                            }
                            if (this.au > 0) {
                                hr.c(this, vnVar2, null, 1);
                            }
                            WeakReference weakReference = this.aA;
                            if (weakReference != null && weakReference.get() != null) {
                                aa((vw) this.aA.get(), this.aq.b(this.K));
                                this.aA = null;
                            }
                            WeakReference weakReference2 = this.aC;
                            if (weakReference2 != null && weakReference2.get() != null) {
                                Z((vw) this.aC.get(), this.aq.b(this.M));
                                this.aC = null;
                            }
                            WeakReference weakReference3 = this.aB;
                            if (weakReference3 != null && weakReference3.get() != null) {
                                aa((vw) this.aB.get(), this.aq.b(this.J));
                                this.aB = null;
                            }
                            WeakReference weakReference4 = this.aD;
                            if (weakReference4 != null && weakReference4.get() != null) {
                                Z((vw) this.aD.get(), this.aq.b(this.L));
                                try {
                                    this.aD = null;
                                } catch (Exception e5) {
                                    e = e5;
                                    e.printStackTrace();
                                    System.out.println("EXCEPTION : ".concat(e.toString()));
                                    wc.a[2] = false;
                                    boolean W2222 = W(64);
                                    S(W2222);
                                    size = this.aH.size();
                                    z4 = false;
                                    while (i10 < size) {
                                    }
                                    if (z14) {
                                    }
                                    max = Math.max(this.ab, j());
                                    if (max > j()) {
                                    }
                                    max2 = Math.max(this.ac, h());
                                    if (max2 > h()) {
                                    }
                                    if (z2) {
                                    }
                                    z3 = z4;
                                    i33 = i9;
                                    arrayList3 = arrayList;
                                    i32 = 64;
                                    i5 = i11;
                                }
                            }
                            this.aq.j();
                        } catch (Exception e6) {
                            e = e6;
                            i8 = i5;
                            arrayList = arrayList3;
                            i9 = i34;
                        }
                        wc.a[2] = false;
                        boolean W22222 = W(64);
                        S(W22222);
                        size = this.aH.size();
                        z4 = false;
                        for (i10 = 0; i10 < size; i10++) {
                            vx vxVar17 = (vx) this.aH.get(i10);
                            vxVar17.S(W22222);
                            z4 |= (vxVar17.k == -1 && vxVar17.l == -1) ? false : true;
                        }
                        if (z14 && i9 < 8 && wc.a[2]) {
                            int i502 = 0;
                            int i512 = 0;
                            for (i12 = 0; i12 < i7; i12++) {
                                vx vxVar18 = (vx) this.aH.get(i12);
                                i502 = Math.max(i502, vxVar18.Y + vxVar18.j());
                                i512 = Math.max(i512, vxVar18.Z + vxVar18.h());
                            }
                            max3 = Math.max(this.ab, i502);
                            max4 = Math.max(this.ac, i512);
                            if (i2 == 2 && j() < max3) {
                                D(max3);
                                this.ap[0] = 2;
                                z4 = true;
                                z2 = true;
                            }
                            if (i4 == 2 && h() < max4) {
                                y(max4);
                                this.ap[1] = 2;
                                z4 = true;
                                z2 = true;
                            }
                        }
                        max = Math.max(this.ab, j());
                        if (max > j()) {
                            D(max);
                            this.ap[0] = 1;
                            z4 = true;
                            z2 = true;
                        }
                        max2 = Math.max(this.ac, h());
                        if (max2 > h()) {
                            y(max2);
                            this.ap[1] = 1;
                            z4 = true;
                            z2 = true;
                        }
                        if (z2) {
                            i11 = i8;
                        } else {
                            if (this.ap[0] == 2 && i3 > 0 && j() > i3) {
                                this.ay = true;
                                this.ap[0] = 1;
                                D(i3);
                                z4 = true;
                                z2 = true;
                            }
                            if (this.ap[1] != 2 || i8 <= 0) {
                                i11 = i8;
                            } else {
                                i11 = i8;
                                if (h() > i11) {
                                    this.az = true;
                                    this.ap[1] = 1;
                                    y(i11);
                                    z3 = true;
                                    z2 = true;
                                    i33 = i9;
                                    arrayList3 = arrayList;
                                    i32 = 64;
                                    i5 = i11;
                                }
                            }
                        }
                        z3 = z4;
                        i33 = i9;
                        arrayList3 = arrayList;
                        i32 = 64;
                        i5 = i11;
                    }
                    this.aH = arrayList3;
                    if (z2) {
                        int[] iArr3 = this.ap;
                        iArr3[0] = i2;
                        iArr3[1] = i4;
                    }
                    u(this.aq.j);
                }
                i21 = 2;
            }
            if (wc.b(this.ax, 1024)) {
                wz wzVar2 = this.aG;
                ArrayList arrayList5 = this.aH;
                int size6 = arrayList5.size();
                int i52 = 0;
                while (true) {
                    if (i52 < size6) {
                        vx vxVar19 = (vx) arrayList5.get(i52);
                        if (!io.f(N(), O(), vxVar19.N(), vxVar19.O())) {
                            i3 = max5;
                            i2 = i22;
                            i4 = i21;
                            i = size2;
                            z = false;
                            i5 = max6;
                            break;
                        }
                        if (vxVar19 instanceof vz) {
                            i3 = max5;
                            i2 = i22;
                            i4 = i21;
                            i = size2;
                            z = false;
                            i5 = max6;
                            break;
                        }
                        i52++;
                    } else {
                        ArrayList arrayList6 = null;
                        int i53 = 0;
                        ArrayList arrayList7 = null;
                        ArrayList arrayList8 = null;
                        ArrayList arrayList9 = null;
                        ArrayList arrayList10 = null;
                        ArrayList arrayList11 = null;
                        while (i53 < size6) {
                            int i54 = size2;
                            vx vxVar20 = (vx) arrayList5.get(i53);
                            int i55 = max6;
                            int i56 = i21;
                            int i57 = max5;
                            int i58 = i22;
                            if (!io.f(N(), O(), vxVar20.N(), vxVar20.O())) {
                                X(vxVar20, wzVar2, this.aF);
                            }
                            boolean z18 = vxVar20 instanceof wa;
                            if (z18) {
                                wa waVar5 = (wa) vxVar20;
                                if (waVar5.aq == 0) {
                                    if (arrayList8 == null) {
                                        arrayList8 = new ArrayList();
                                    }
                                    arrayList8.add(waVar5);
                                }
                                if (waVar5.aq == 1) {
                                    if (arrayList6 == null) {
                                        arrayList6 = new ArrayList();
                                    }
                                    arrayList6.add(waVar5);
                                }
                            }
                            if (vxVar20 instanceof wb) {
                                if (vxVar20 instanceof vu) {
                                    vu vuVar5 = (vu) vxVar20;
                                    if (vuVar5.a() == 0) {
                                        if (arrayList7 == null) {
                                            arrayList7 = new ArrayList();
                                        }
                                        arrayList7.add(vuVar5);
                                    }
                                    if (vuVar5.a() == 1) {
                                        if (arrayList9 == null) {
                                            arrayList9 = new ArrayList();
                                        }
                                        arrayList9.add(vuVar5);
                                    }
                                } else {
                                    wb wbVar = (wb) vxVar20;
                                    if (arrayList7 == null) {
                                        arrayList7 = new ArrayList();
                                    }
                                    arrayList7.add(wbVar);
                                    if (arrayList9 == null) {
                                        arrayList9 = new ArrayList();
                                    }
                                    arrayList9.add(wbVar);
                                }
                            }
                            if (vxVar20.J.e == null && vxVar20.L.e == null && !z18 && !(vxVar20 instanceof vu)) {
                                if (arrayList10 == null) {
                                    arrayList10 = new ArrayList();
                                }
                                arrayList10.add(vxVar20);
                            }
                            if (vxVar20.K.e == null && vxVar20.M.e == null && vxVar20.N.e == null && !z18 && !(vxVar20 instanceof vu)) {
                                if (arrayList11 == null) {
                                    arrayList11 = new ArrayList();
                                }
                                arrayList11.add(vxVar20);
                            }
                            i53++;
                            max6 = i55;
                            size2 = i54;
                            i21 = i56;
                            max5 = i57;
                            i22 = i58;
                        }
                        int i59 = max5;
                        int i60 = max6;
                        int i61 = i22;
                        int i62 = i21;
                        i = size2;
                        ArrayList arrayList12 = new ArrayList();
                        if (arrayList6 != null) {
                            int size7 = arrayList6.size();
                            for (int i63 = 0; i63 < size7; i63++) {
                                io.d((wa) arrayList6.get(i63), 0, arrayList12, null);
                            }
                        }
                        if (arrayList7 != null) {
                            int size8 = arrayList7.size();
                            for (int i64 = 0; i64 < size8; i64++) {
                                wb wbVar2 = (wb) arrayList7.get(i64);
                                ws d = io.d(wbVar2, 0, arrayList12, null);
                                wbVar2.T(arrayList12, 0, d);
                                d.b(arrayList12);
                            }
                        }
                        HashSet hashSet3 = L(2).a;
                        if (hashSet3 != null) {
                            Iterator it5 = hashSet3.iterator();
                            while (it5.hasNext()) {
                                io.d(((vw) it5.next()).d, 0, arrayList12, null);
                            }
                        }
                        HashSet hashSet4 = L(4).a;
                        if (hashSet4 != null) {
                            Iterator it6 = hashSet4.iterator();
                            while (it6.hasNext()) {
                                io.d(((vw) it6.next()).d, 0, arrayList12, null);
                            }
                        }
                        HashSet hashSet5 = L(7).a;
                        if (hashSet5 != null) {
                            Iterator it7 = hashSet5.iterator();
                            while (it7.hasNext()) {
                                io.d(((vw) it7.next()).d, 0, arrayList12, null);
                            }
                        }
                        if (arrayList10 != null) {
                            int size9 = arrayList10.size();
                            for (int i65 = 0; i65 < size9; i65++) {
                                io.d((vx) arrayList10.get(i65), 0, arrayList12, null);
                            }
                        }
                        if (arrayList8 != null) {
                            int size10 = arrayList8.size();
                            for (int i66 = 0; i66 < size10; i66++) {
                                io.d((wa) arrayList8.get(i66), 1, arrayList12, null);
                            }
                        }
                        if (arrayList9 != null) {
                            int size11 = arrayList9.size();
                            for (int i67 = 0; i67 < size11; i67++) {
                                wb wbVar3 = (wb) arrayList9.get(i67);
                                ws d2 = io.d(wbVar3, 1, arrayList12, null);
                                wbVar3.T(arrayList12, 1, d2);
                                d2.b(arrayList12);
                            }
                        }
                        HashSet hashSet6 = L(3).a;
                        if (hashSet6 != null) {
                            Iterator it8 = hashSet6.iterator();
                            while (it8.hasNext()) {
                                io.d(((vw) it8.next()).d, 1, arrayList12, null);
                            }
                        }
                        HashSet hashSet7 = L(6).a;
                        if (hashSet7 != null) {
                            Iterator it9 = hashSet7.iterator();
                            while (it9.hasNext()) {
                                io.d(((vw) it9.next()).d, 1, arrayList12, null);
                            }
                        }
                        HashSet hashSet8 = L(5).a;
                        if (hashSet8 != null) {
                            Iterator it10 = hashSet8.iterator();
                            while (it10.hasNext()) {
                                io.d(((vw) it10.next()).d, 1, arrayList12, null);
                            }
                        }
                        HashSet hashSet9 = L(7).a;
                        if (hashSet9 != null) {
                            Iterator it11 = hashSet9.iterator();
                            while (it11.hasNext()) {
                                io.d(((vw) it11.next()).d, 1, arrayList12, null);
                            }
                        }
                        if (arrayList11 != null) {
                            int size12 = arrayList11.size();
                            for (int i68 = 0; i68 < size12; i68++) {
                                io.d((vx) arrayList11.get(i68), 1, arrayList12, null);
                            }
                            i13 = 0;
                        } else {
                            i13 = 0;
                        }
                        while (i13 < size6) {
                            vx vxVar21 = (vx) arrayList5.get(i13);
                            int[] iArr4 = vxVar21.ap;
                            if (iArr4[0] == 3 && iArr4[1] == 3) {
                                ws e7 = io.e(arrayList12, vxVar21.an);
                                ws e8 = io.e(arrayList12, vxVar21.ao);
                                if (e7 != null && e8 != null) {
                                    e7.c(0, e8);
                                    e8.d = 2;
                                    arrayList12.remove(e7);
                                }
                            }
                            i13++;
                        }
                        if (arrayList12.size() <= 1) {
                            i5 = i60;
                            i4 = i62;
                            i3 = i59;
                            i2 = i61;
                            z = false;
                        } else {
                            if (N() == 2) {
                                int size13 = arrayList12.size();
                                wsVar = null;
                                int i69 = 0;
                                for (int i70 = 0; i70 < size13; i70++) {
                                    ws wsVar3 = (ws) arrayList12.get(i70);
                                    if (wsVar3.d != 1) {
                                        int a = wsVar3.a(this.aq, 0);
                                        if (a > i69) {
                                            wsVar = wsVar3;
                                        }
                                        if (a > i69) {
                                            i69 = a;
                                        }
                                    }
                                }
                                if (wsVar != null) {
                                    Q(1);
                                    D(i69);
                                    if (O() == 2) {
                                        int size14 = arrayList12.size();
                                        wsVar2 = null;
                                        int i71 = 0;
                                        for (int i72 = 0; i72 < size14; i72++) {
                                            ws wsVar4 = (ws) arrayList12.get(i72);
                                            if (wsVar4.d != 0) {
                                                int a2 = wsVar4.a(this.aq, 1);
                                                if (a2 > i71) {
                                                    wsVar2 = wsVar4;
                                                }
                                                if (a2 > i71) {
                                                    i71 = a2;
                                                }
                                            }
                                        }
                                        if (wsVar2 != null) {
                                            R(1);
                                            y(i71);
                                            if (wsVar == null || wsVar2 != null) {
                                                if (i61 != 2) {
                                                    i14 = i61;
                                                    i15 = i59;
                                                } else if (i59 >= j() || i59 <= 0) {
                                                    i15 = j();
                                                    i14 = 2;
                                                } else {
                                                    D(i59);
                                                    this.ay = true;
                                                    i15 = i59;
                                                    i14 = 2;
                                                }
                                                i16 = i62;
                                                if (i16 == 2) {
                                                    if (i60 >= h() || i60 <= 0) {
                                                        i17 = h();
                                                    } else {
                                                        y(i60);
                                                        this.az = true;
                                                        i17 = i60;
                                                    }
                                                    i16 = 2;
                                                } else {
                                                    i17 = i60;
                                                }
                                                i3 = i15;
                                                i5 = i17;
                                                i2 = i14;
                                                i4 = i16;
                                                z = true;
                                            } else {
                                                i5 = i60;
                                                i4 = i62;
                                                i3 = i59;
                                                i2 = i61;
                                            }
                                        }
                                    }
                                    wsVar2 = null;
                                    if (wsVar == null) {
                                    }
                                    if (i61 != 2) {
                                    }
                                    i16 = i62;
                                    if (i16 == 2) {
                                    }
                                    i3 = i15;
                                    i5 = i17;
                                    i2 = i14;
                                    i4 = i16;
                                    z = true;
                                }
                            }
                            wsVar = null;
                            if (O() == 2) {
                            }
                            wsVar2 = null;
                            if (wsVar == null) {
                            }
                            if (i61 != 2) {
                            }
                            i16 = i62;
                            if (i16 == 2) {
                            }
                            i3 = i15;
                            i5 = i17;
                            i2 = i14;
                            i4 = i16;
                            z = true;
                        }
                    }
                }
                int i322 = 64;
                if (!W(64)) {
                }
                vnVar = this.aq;
                vnVar.f = false;
                vnVar.g = false;
                if (this.ax != 0) {
                    vnVar.g = true;
                }
                ArrayList arrayList32 = this.aH;
                if (N() != 2) {
                }
                ab();
                i6 = 0;
                while (true) {
                    i7 = i;
                    if (i6 >= i7) {
                    }
                    i6++;
                    i = i7;
                }
                z2 = z;
                z3 = true;
                int i332 = 0;
                while (z3) {
                }
                this.aH = arrayList32;
                if (z2) {
                }
                u(this.aq.j);
            }
        }
        i = size2;
        i2 = i22;
        i3 = max5;
        i4 = i21;
        i5 = max6;
        z = false;
        int i3222 = 64;
        if (!W(64)) {
        }
        vnVar = this.aq;
        vnVar.f = false;
        vnVar.g = false;
        if (this.ax != 0) {
        }
        ArrayList arrayList322 = this.aH;
        if (N() != 2) {
        }
        ab();
        i6 = 0;
        while (true) {
            i7 = i;
            if (i6 >= i7) {
            }
            i6++;
            i = i7;
        }
        z2 = z;
        z3 = true;
        int i3322 = 0;
        while (z3) {
        }
        this.aH = arrayList322;
        if (z2) {
        }
        u(this.aq.j);
    }

    public final void U(int i) {
        this.ax = i;
        vn.a = W(512);
    }

    public final boolean V(boolean z, int i) {
        boolean z2;
        boolean z3;
        wj wjVar = this.b;
        boolean z4 = false;
        int M = wjVar.a.M(0);
        int M2 = wjVar.a.M(1);
        int k = wjVar.a.k();
        int l = wjVar.a.l();
        if (z) {
            if (M != 2) {
                if (M2 == 2) {
                    M2 = 2;
                }
            }
            ArrayList arrayList = wjVar.e;
            int size = arrayList.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    z3 = true;
                    break;
                }
                wt wtVar = (wt) arrayList.get(i2);
                if (wtVar.g == i && !wtVar.e()) {
                    z3 = false;
                    break;
                }
                i2++;
            }
            if (i == 0) {
                if (z3 && M == 2) {
                    wjVar.a.Q(1);
                    vy vyVar = wjVar.a;
                    vyVar.D(wjVar.a(vyVar, 0));
                    vy vyVar2 = wjVar.a;
                    vyVar2.h.f.c(vyVar2.j());
                }
            } else if (z3 && M2 == 2) {
                wjVar.a.R(1);
                vy vyVar3 = wjVar.a;
                vyVar3.y(wjVar.a(vyVar3, 1));
                vy vyVar4 = wjVar.a;
                vyVar4.i.f.c(vyVar4.h());
            }
        }
        if (i == 0) {
            vy vyVar5 = wjVar.a;
            int i3 = vyVar5.ap[0];
            if (i3 == 1 || i3 == 4) {
                int j = vyVar5.j() + k;
                wjVar.a.h.j.c(j);
                wjVar.a.h.f.c(j - k);
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            vy vyVar6 = wjVar.a;
            int i4 = vyVar6.ap[1];
            if (i4 == 1 || i4 == 4) {
                int h = vyVar6.h() + l;
                wjVar.a.i.j.c(h);
                wjVar.a.i.f.c(h - l);
                z2 = true;
            } else {
                z2 = false;
            }
        }
        wjVar.c();
        ArrayList arrayList2 = wjVar.e;
        int size2 = arrayList2.size();
        for (int i5 = 0; i5 < size2; i5++) {
            wt wtVar2 = (wt) arrayList2.get(i5);
            if (wtVar2.g == i && (wtVar2.d != wjVar.a || wtVar2.h)) {
                wtVar2.c();
            }
        }
        ArrayList arrayList3 = wjVar.e;
        int size3 = arrayList3.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size3) {
                z4 = true;
                break;
            }
            wt wtVar3 = (wt) arrayList3.get(i6);
            if (wtVar3.g == i && ((z2 || wtVar3.d != wjVar.a) && (!wtVar3.i.i || !wtVar3.j.i || (!(wtVar3 instanceof wh) && !wtVar3.f.i)))) {
                break;
            }
            i6++;
        }
        wjVar.a.Q(M);
        wjVar.a.R(M2);
        return z4;
    }

    public final boolean W(int i) {
        return (this.ax & i) == i;
    }

    public final void c() {
        this.b.b = true;
    }

    @Override // defpackage.we, defpackage.vx
    public final void s() {
        this.aq.k();
        this.ar = 0;
        this.as = 0;
        super.s();
    }

    final void a(vx vxVar, int i) {
        if (i == 0) {
            int i2 = this.at;
            vv[] vvVarArr = this.aw;
            int length = vvVarArr.length;
            if (i2 + 1 >= length) {
                this.aw = (vv[]) Arrays.copyOf(vvVarArr, length + length);
            }
            this.aw[this.at] = new vv(vxVar, 0, this.d);
            this.at++;
            return;
        }
        int i3 = this.au;
        vv[] vvVarArr2 = this.av;
        int length2 = vvVarArr2.length;
        if (i3 + 1 >= length2) {
            this.av = (vv[]) Arrays.copyOf(vvVarArr2, length2 + length2);
        }
        this.av[this.au] = new vv(vxVar, 1, this.d);
        this.au++;
    }
}
