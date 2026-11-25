package defpackage;

import androidx.preference.Preference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ConstraintWidget {
    public float A;
    int B;
    float C;
    public final int[] D;
    public float E;
    public boolean F;
    public boolean G;
    public int H;
    public int I;
    public final ConstraintAnchor J;
    public final ConstraintAnchor K;
    public final ConstraintAnchor L;
    public final ConstraintAnchor M;
    public final ConstraintAnchor N;
    final ConstraintAnchor O;
    final ConstraintAnchor P;
    public final ConstraintAnchor Q;
    public final ConstraintAnchor[] R;
    protected final ArrayList S;
    public ConstraintWidget T;
    int U;
    public int V;
    public float W;
    public int X;
    public int Y;
    public int Z;
    public int aa;
    public int ab;
    public int ac;
    public float ad;
    public float ae;
    public Object af;
    public int ag;
    public String ah;
    public int ai;
    public int aj;
    public final float[] ak;
    public final ConstraintWidget[] al;
    public final ConstraintWidget[] am;
    public int an;
    public int ao;
    public final int[] ap;
    private boolean b;
    private final boolean[] c;
    public ChainRun f;
    public ChainRun g;
    public boolean m;
    public boolean n;
    public boolean o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public final int[] u;
    public int v;
    public int w;
    public float x;
    public int y;
    public int z;
    public boolean e = false;
    public HorizontalWidgetRun h = null;
    public VerticalWidgetRun i = null;
    public final boolean[] j = {true, true};
    private boolean a = true;
    public int k = -1;
    public int l = -1;

    public ConstraintWidget() {
        new HashMap();
        this.b = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = -1;
        this.q = -1;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = new int[2];
        this.v = 0;
        this.w = 0;
        this.x = 1.0f;
        this.y = 0;
        this.z = 0;
        this.A = 1.0f;
        this.B = -1;
        this.C = 1.0f;
        this.D = new int[]{Preference.DEFAULT_ORDER, Preference.DEFAULT_ORDER};
        this.E = 0.0f;
        this.F = false;
        this.G = false;
        this.H = 0;
        this.I = 0;
        ConstraintAnchor vwVar = new ConstraintAnchor(this, 2);
        this.J = vwVar;
        ConstraintAnchor vwVar2 = new ConstraintAnchor(this, 3);
        this.K = vwVar2;
        ConstraintAnchor vwVar3 = new ConstraintAnchor(this, 4);
        this.L = vwVar3;
        ConstraintAnchor vwVar4 = new ConstraintAnchor(this, 5);
        this.M = vwVar4;
        ConstraintAnchor vwVar5 = new ConstraintAnchor(this, 6);
        this.N = vwVar5;
        ConstraintAnchor vwVar6 = new ConstraintAnchor(this, 8);
        this.O = vwVar6;
        ConstraintAnchor vwVar7 = new ConstraintAnchor(this, 9);
        this.P = vwVar7;
        ConstraintAnchor vwVar8 = new ConstraintAnchor(this, 7);
        this.Q = vwVar8;
        this.R = new ConstraintAnchor[]{vwVar, vwVar3, vwVar2, vwVar4, vwVar5, vwVar8};
        ArrayList arrayList = new ArrayList();
        this.S = arrayList;
        this.c = new boolean[2];
        this.ap = new int[]{1, 1};
        this.T = null;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.aa = 0;
        this.ad = 0.5f;
        this.ae = 0.5f;
        this.ag = 0;
        this.ah = null;
        this.ai = 0;
        this.aj = 0;
        this.ak = new float[]{-1.0f, -1.0f};
        this.al = new ConstraintWidget[]{null, null};
        this.am = new ConstraintWidget[]{null, null};
        this.an = -1;
        this.ao = -1;
        arrayList.add(vwVar);
        arrayList.add(vwVar2);
        arrayList.add(vwVar3);
        arrayList.add(vwVar4);
        arrayList.add(vwVar6);
        arrayList.add(vwVar7);
        arrayList.add(vwVar8);
        arrayList.add(vwVar5);
    }

    private final boolean a(int i) {
        ConstraintAnchor vwVar;
        ConstraintAnchor vwVar2;
        int i2 = i + i;
        ConstraintAnchor[] vwVarArr = this.R;
        ConstraintAnchor vwVar3 = vwVarArr[i2];
        ConstraintAnchor vwVar4 = vwVar3.e;
        return (vwVar4 == null || vwVar4.e == vwVar3 || (vwVar2 = (vwVar = vwVarArr[i2 + 1]).e) == null || vwVar2.e != vwVar) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:169:0x04c1  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0533  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void c(LinearSystemSolver vnVar, boolean z, boolean z2, boolean z3, boolean z4, SolverVariable vsVar, SolverVariable vsVar2, int i, boolean z5, ConstraintAnchor vwVar, ConstraintAnchor vwVar2, int i2, int i3, int i4, int i5, float f, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i6, int i7, int i8, int i9, float f2, boolean z11) {
        boolean z12;
        SolverVariable vsVar3;
        int i10;
        int i11;
        boolean z13;
        SolverVariable vsVar4;
        SolverVariable vsVar5;
        SolverVariable vsVar6;
        SolverVariable vsVar7;
        SolverVariable vsVar8;
        SolverVariable vsVar9;
        boolean z14;
        int i12;
        char c;
        int i13;
        ConstraintAnchor vwVar3;
        SolverVariable vsVar10;
        SolverVariable vsVar11;
        boolean z15;
        boolean z16;
        int i14;
        SolverVariable vsVar12;
        int i15;
        int i16;
        int i17;
        boolean z17;
        boolean z18;
        boolean z19;
        int i18;
        int i19;
        boolean z20;
        SolverVariable vsVar13;
        int i20;
        ConstraintWidget vxVar;
        SolverVariable vsVar14;
        SolverVariable vsVar15;
        boolean z21;
        ConstraintWidget vxVar2;
        int i21;
        SolverVariable vsVar16;
        boolean z22;
        int i22;
        SolverVariable vsVar17;
        int i23;
        boolean z23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        boolean z24;
        boolean z25;
        boolean z26;
        int i30;
        int i31 = i8;
        int i32 = i9;
        SolverVariable b = vnVar.b(vwVar);
        SolverVariable b2 = vnVar.b(vwVar2);
        SolverVariable b3 = vnVar.b(vwVar.e);
        SolverVariable b4 = vnVar.b(vwVar2.e);
        boolean h = vwVar.h();
        boolean h2 = vwVar2.h();
        boolean h3 = this.Q.h();
        int i33 = h ? 1 : 0;
        if (h2) {
            i33++;
        }
        if (h3) {
            i33++;
        }
        int i34 = i33;
        int i35 = true == z6 ? 3 : i6;
        int i36 = i - 1;
        if (NavInstructionTypeEnum == 0) {
            throw null;
        }
        switch (i36) {
            case 2:
                if (i35 != 4) {
                    z12 = true;
                    break;
                }
            case 0:
            case 1:
            case 3:
                z12 = false;
                break;
            default:
                z12 = false;
                break;
        }
        int i37 = this.k;
        if (i37 == -1 || !z) {
            i37 = i3;
        } else {
            this.k = -1;
            z12 = false;
        }
        int i38 = i37;
        int i39 = this.l;
        if (i39 == -1 || z) {
            i39 = i38;
        } else {
            this.l = -1;
            z12 = false;
        }
        int i40 = this.ag;
        int i41 = i39;
        boolean z27 = (i40 != 8) & z12;
        int i42 = i40 == 8 ? 0 : i41;
        if (!z11) {
            vsVar3 = b4;
        } else if (!h && !h2 && !h3) {
            vnVar.f(b, i2);
            vsVar3 = b4;
        } else if (!h || h2) {
            vsVar3 = b4;
        } else {
            vsVar3 = b4;
            vnVar.m(b, b3, vwVar.b(), 8);
        }
        if (z27) {
            i10 = i34;
            if (i10 != 2 && !z6) {
                if (i35 != 1) {
                    if (i35 == 0) {
                        i35 = 0;
                    }
                }
                int max = Math.max(i31, i42);
                if (i32 > 0) {
                    max = Math.min(i32, max);
                }
                vnVar.m(b2, b, max, 8);
                z13 = z4;
                z27 = false;
            }
            if (i31 == -2) {
                i31 = i42;
            }
            if (i32 == -2) {
                i32 = i42;
            }
            if (i42 > 0 && i35 != 1) {
                i42 = 0;
            }
            if (i31 > 0) {
                vnVar.g(b2, b, i31, 8);
                i42 = Math.max(i42, i31);
            }
            if (i32 > 0) {
                if (z2 && i35 == 1) {
                    i11 = 1;
                } else {
                    vnVar.h(b2, b, i32, 8);
                    i11 = i35;
                }
                i42 = Math.min(i42, i32);
            } else {
                i11 = i35;
            }
            if (i35 == 1) {
                if (z2) {
                    vnVar.m(b2, b, i42, 8);
                } else if (z8) {
                    vnVar.m(b2, b, i42, 5);
                    vnVar.h(b2, b, i42, 8);
                } else {
                    vnVar.m(b2, b, i42, 5);
                    vnVar.h(b2, b, i42, 8);
                }
                z13 = z4;
                i35 = i11;
            } else if (i35 == 2) {
                int i43 = vwVar.i;
                if (i43 != 3 && i43 != 5) {
                    vsVar4 = vnVar.b(this.T.L(2));
                    vsVar5 = vnVar.b(this.T.L(4));
                    SolverArrayRow a = vnVar.a();
                    a.g(b2, b, vsVar5, vsVar4, f2);
                    vnVar.e(SingleStringProtoMessage);
                    z27 = !z2;
                    z13 = z4;
                    i35 = i11;
                }
                vsVar4 = vnVar.b(this.T.L(3));
                vsVar5 = vnVar.b(this.T.L(5));
                SolverArrayRow a2 = vnVar.a();
                a2.g(b2, b, vsVar5, vsVar4, f2);
                vnVar.e(a2);
                z27 = !z2;
                z13 = z4;
                i35 = i11;
            } else {
                i35 = i11;
                z13 = true;
            }
        } else {
            if (z5) {
                vnVar.m(b2, b, 0, 3);
                if (i4 > 0) {
                    i30 = 8;
                    vnVar.g(b2, b, i4, 8);
                } else {
                    i30 = 8;
                }
                if (i5 < Integer.MAX_VALUE) {
                    vnVar.h(b2, b, i5, i30);
                }
            } else {
                vnVar.m(b2, b, i42, 8);
            }
            z13 = z4;
            i10 = i34;
        }
        if (!z11) {
            vsVar6 = vsVar;
            vsVar7 = vsVar2;
            vsVar8 = b2;
            vsVar9 = b;
            z14 = z13;
            i12 = 3;
            c = 1;
            i13 = 0;
        } else {
            if (!z8) {
                if (!h && !h2 && !h3) {
                    z16 = z2;
                    vsVar11 = b2;
                    z15 = z13;
                    vsVar10 = vsVar3;
                    i14 = 5;
                } else if (ProtoMessageSingleEnumFieldH && !h2) {
                    i14 = (z2 && (vwVar.e.d instanceof BarrierWidget)) ? 8 : 5;
                    z16 = z2;
                    vsVar11 = b2;
                    z15 = z13;
                    vsVar10 = vsVar3;
                } else if (ProtoMessageSingleEnumFieldH || !h2) {
                    vsVar10 = vsVar3;
                    if (ProtoMessageSingleEnumFieldH && h2) {
                        ConstraintWidget vxVar3 = vwVar.e.d;
                        ConstraintWidget vxVar4 = vwVar2.e.d;
                        ConstraintWidget vxVar5 = this.T;
                        int i44 = 6;
                        if (z27) {
                            if (i35 == 0) {
                                if (i32 != 0 || i31 != 0) {
                                    i27 = i31;
                                    i28 = 5;
                                    i29 = 5;
                                    z24 = true;
                                    z25 = false;
                                    z26 = true;
                                } else if (!b3.g) {
                                    i28 = 8;
                                    i29 = 8;
                                    i27 = 0;
                                    z24 = false;
                                    z25 = true;
                                    z26 = false;
                                } else {
                                    if (vsVar10.g) {
                                        vnVar.m(b, b3, vwVar.b(), 8);
                                        vnVar.m(b2, vsVar10, -vwVar2.b(), 8);
                                        return;
                                    }
                                    i28 = 8;
                                    i29 = 8;
                                    i27 = 0;
                                    z24 = false;
                                    z25 = true;
                                    z26 = false;
                                }
                                int i45 = i28;
                                if (vxVar3 instanceof BarrierWidget) {
                                    i16 = i45;
                                    vsVar12 = vsVar2;
                                    z15 = z13;
                                    z18 = z25;
                                    z19 = z26;
                                    i18 = i35;
                                    i15 = i27;
                                    z17 = z24;
                                    i19 = 6;
                                    i17 = 4;
                                } else if (vxVar4 instanceof BarrierWidget) {
                                    i16 = i45;
                                    vsVar12 = vsVar2;
                                    z15 = z13;
                                    z18 = z25;
                                    z19 = z26;
                                    i18 = i35;
                                    i15 = i27;
                                    z17 = z24;
                                    i19 = 6;
                                    i17 = 4;
                                } else {
                                    i16 = i45;
                                    z15 = z13;
                                    z18 = z25;
                                    z19 = z26;
                                    i18 = i35;
                                    i15 = i27;
                                    z17 = z24;
                                    i19 = 6;
                                    i17 = i29;
                                    vsVar12 = vsVar2;
                                }
                            } else {
                                if (i35 == 2) {
                                    if ((vxVar3 instanceof BarrierWidget) || (vxVar4 instanceof BarrierWidget)) {
                                        vsVar12 = vsVar2;
                                        i15 = i31;
                                        z15 = z13;
                                        i16 = 5;
                                    } else {
                                        vsVar12 = vsVar2;
                                        i15 = i31;
                                        z15 = z13;
                                        i16 = 5;
                                        i17 = 5;
                                        z17 = true;
                                        z18 = false;
                                        z19 = true;
                                        i18 = i35;
                                        i19 = 6;
                                    }
                                } else if (i35 == 1) {
                                    vsVar12 = vsVar2;
                                    i15 = i31;
                                    z15 = z13;
                                    i16 = 8;
                                } else if (i35 == 3) {
                                    if (this.B == -1) {
                                        if (z9) {
                                            vsVar12 = vsVar2;
                                            i15 = i31;
                                            z15 = z13;
                                            i16 = 8;
                                            i19 = z2 ? 5 : 4;
                                        } else {
                                            vsVar12 = vsVar2;
                                            i15 = i31;
                                            z15 = z13;
                                            i16 = 8;
                                            i19 = 8;
                                        }
                                    } else if (z6) {
                                        if (i7 != 2 && i7 != 1) {
                                            i25 = 5;
                                            i26 = 8;
                                            i15 = i31;
                                            i17 = i25;
                                            z15 = z13;
                                            i16 = i26;
                                            i19 = 6;
                                            i18 = 3;
                                            z17 = true;
                                            z18 = true;
                                            z19 = true;
                                            vsVar12 = vsVar2;
                                        }
                                        i25 = 4;
                                        i26 = 5;
                                        i15 = i31;
                                        i17 = i25;
                                        z15 = z13;
                                        i16 = i26;
                                        i19 = 6;
                                        i18 = 3;
                                        z17 = true;
                                        z18 = true;
                                        z19 = true;
                                        vsVar12 = vsVar2;
                                    } else if (i32 > 0) {
                                        vsVar12 = vsVar2;
                                        i15 = i31;
                                        z15 = z13;
                                        i16 = 5;
                                        i19 = 6;
                                    } else if (i32 == 0 && i31 == 0) {
                                        if (z9) {
                                            i16 = (vxVar3 == vxVar5 || vxVar4 == vxVar5) ? 5 : 4;
                                            vsVar12 = vsVar2;
                                            z15 = z13;
                                            i19 = 6;
                                            i18 = 3;
                                            i17 = 4;
                                        } else {
                                            vsVar12 = vsVar2;
                                            z15 = z13;
                                            i16 = 5;
                                            i19 = 6;
                                            i18 = 3;
                                            i17 = 8;
                                        }
                                        z17 = true;
                                        i15 = 0;
                                        z18 = true;
                                        z19 = true;
                                    } else {
                                        vsVar12 = vsVar2;
                                        i15 = i31;
                                        z15 = z13;
                                        i16 = 5;
                                        i19 = 6;
                                        i18 = 3;
                                        i17 = 4;
                                        z17 = true;
                                        z18 = true;
                                        z19 = true;
                                    }
                                    i18 = 3;
                                    i17 = 5;
                                    z17 = true;
                                    z18 = true;
                                    z19 = true;
                                } else {
                                    vsVar12 = vsVar2;
                                    i15 = i31;
                                    z15 = z13;
                                    i16 = 5;
                                    i17 = 4;
                                    z17 = false;
                                    z18 = false;
                                    z19 = false;
                                    i18 = i35;
                                    i19 = 6;
                                }
                                i17 = 4;
                                z17 = true;
                                z18 = false;
                                z19 = true;
                                i18 = i35;
                                i19 = 6;
                            }
                        } else {
                            if (b3.g && vsVar10.g) {
                                vnVar.d(b, b3, vwVar.b(), f, vsVar10, b2, vwVar2.b(), 8);
                                if (z2 && z13) {
                                    int b5 = vwVar2.e != null ? vwVar2.b() : 0;
                                    if (vsVar10 != vsVar2) {
                                        vnVar.g(vsVar2, b2, b5, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            vsVar12 = vsVar2;
                            i15 = i31;
                            z15 = z13;
                            i16 = 5;
                            i17 = 4;
                            z17 = true;
                            z18 = false;
                            z19 = true;
                            i18 = i35;
                            i19 = 6;
                        }
                        if (z19 && b3 == vsVar10 && vxVar3 != vxVar5) {
                            z20 = false;
                            z19 = false;
                        } else {
                            z20 = true;
                        }
                        if (z17) {
                            if (z27 || z7 || z9) {
                                vsVar17 = vsVar;
                            } else {
                                vsVar17 = vsVar;
                                if (b3 == vsVar17 && vsVar10 == vsVar12) {
                                    z16 = false;
                                    i24 = 8;
                                    z23 = false;
                                    i23 = 8;
                                    i20 = i18;
                                    vsVar13 = b2;
                                    vsVar15 = b;
                                    vxVar = vxVar5;
                                    vsVar14 = b3;
                                    vnVar.d(b, b3, vwVar.b(), f, vsVar10, vsVar13, vwVar2.b(), i23);
                                    i16 = i24;
                                    z21 = z23;
                                }
                            }
                            z16 = z2;
                            i23 = i19;
                            z23 = z20;
                            i24 = i16;
                            i20 = i18;
                            vsVar13 = b2;
                            vsVar15 = b;
                            vxVar = vxVar5;
                            vsVar14 = b3;
                            vnVar.d(b, b3, vwVar.b(), f, vsVar10, vsVar13, vwVar2.b(), i23);
                            i16 = i24;
                            z21 = z23;
                        } else {
                            vsVar13 = b2;
                            i20 = i18;
                            vxVar = vxVar5;
                            vsVar14 = b3;
                            vsVar15 = b;
                            z16 = z2;
                            z21 = z20;
                        }
                        if (this.ag == 8 && !vwVar2.g()) {
                            return;
                        }
                        if (z19) {
                            if (z16 && vsVar14 != vsVar10 && !z27) {
                                if (vxVar3 instanceof BarrierWidget) {
                                    i16 = 6;
                                } else if (vxVar4 instanceof BarrierWidget) {
                                    i16 = 6;
                                }
                            }
                            vnVar.g(vsVar15, vsVar14, vwVar.b(), i16);
                            vsVar11 = vsVar13;
                            vnVar.h(vsVar11, vsVar10, -vwVar2.b(), i16);
                        } else {
                            vsVar11 = vsVar13;
                        }
                        if (!z16 || !z10 || (vxVar3 instanceof BarrierWidget) || (vxVar4 instanceof BarrierWidget)) {
                            vxVar2 = vxVar;
                        } else {
                            vxVar2 = vxVar;
                            if (vxVar4 != vxVar2) {
                                i16 = 6;
                                i21 = 6;
                                z21 = true;
                                if (z21) {
                                    if (z18) {
                                        z22 = z9;
                                        if (!z22 || z3) {
                                            if (vxVar3 != vxVar2 && vxVar4 != vxVar2) {
                                                i44 = i21;
                                            }
                                            if (vxVar3 instanceof ContainerWidget) {
                                                i44 = 5;
                                            } else if (vxVar4 instanceof ContainerWidget) {
                                                i44 = 5;
                                            }
                                            if (vxVar3 instanceof BarrierWidget) {
                                                i44 = 5;
                                            } else if (vxVar4 instanceof BarrierWidget) {
                                                i44 = 5;
                                            }
                                            i21 = Math.max(true == z22 ? 5 : i44, i21);
                                        }
                                    } else {
                                        z22 = z9;
                                    }
                                    if (z16) {
                                        int min = Math.min(i16, i21);
                                        if (z6 && !z22) {
                                            if (vxVar3 == vxVar2) {
                                                i22 = 4;
                                            } else if (vxVar4 == vxVar2) {
                                                i22 = 4;
                                            }
                                        }
                                        i22 = min;
                                    } else {
                                        i22 = i21;
                                    }
                                    vnVar.m(vsVar15, vsVar14, vwVar.b(), i22);
                                    vnVar.m(vsVar11, vsVar10, -vwVar2.b(), i22);
                                }
                                if (z16) {
                                    vsVar16 = vsVar15;
                                } else {
                                    vsVar16 = vsVar15;
                                    int b6 = vsVar == vsVar14 ? vwVar.b() : 0;
                                    if (vsVar14 != vsVar) {
                                        vnVar.g(vsVar16, vsVar, b6, 5);
                                    }
                                }
                                if (!z16 && z27 && i4 == 0 && i15 == 0) {
                                    if (i20 == 3) {
                                        vnVar.g(vsVar11, vsVar16, 0, 8);
                                        i14 = 5;
                                    } else {
                                        vnVar.g(vsVar11, vsVar16, 0, 5);
                                    }
                                }
                                i14 = 5;
                            }
                        }
                        i21 = i17;
                        if (z21) {
                        }
                        if (z16) {
                        }
                        if (!z16) {
                        }
                        i14 = 5;
                    } else {
                        vsVar11 = b2;
                        z15 = z13;
                        z16 = z2;
                        i14 = 5;
                    }
                } else {
                    vsVar10 = vsVar3;
                    vnVar.m(b2, vsVar10, -vwVar2.b(), 8);
                    if (z2) {
                        vnVar.g(b, vsVar, 0, 5);
                    }
                    z16 = z2;
                    vsVar11 = b2;
                    z15 = z13;
                    i14 = 5;
                }
                if (z16 && z15) {
                    int b7 = vwVar2.e != null ? vwVar2.b() : 0;
                    if (vsVar10 != vsVar2) {
                        vnVar.g(vsVar2, vsVar11, b7, i14);
                        return;
                    }
                    return;
                }
                return;
            }
            vsVar6 = vsVar;
            vsVar7 = vsVar2;
            vsVar8 = b2;
            vsVar9 = b;
            z14 = z13;
            i12 = 3;
            c = 1;
            i13 = 0;
        }
        if (i10 < 2 && z2 && z14) {
            vnVar.g(vsVar9, vsVar6, i13, 8);
            boolean z28 = !z ? this.N.e == null : true;
            if (!z && (vwVar3 = this.N.e) != null) {
                ConstraintWidget vxVar6 = vwVar3.d;
                if (vxVar6.W == 0.0f) {
                    return;
                }
                int[] iArr = vxVar6.ap;
                if (iArr[i13] != i12 || iArr[c] != i12) {
                    return;
                }
            } else if (!z28) {
                return;
            }
            vnVar.g(vsVar7, vsVar8, i13, 8);
        }
    }

    public final void A(int i, int i2) {
        this.H = i;
        this.I = i2;
        this.a = false;
    }

    public final void B(int i) {
        if (NavInstructionTypeEnum < 0) {
            this.ac = 0;
        } else {
            this.ac = i;
        }
    }

    public final void C(int i) {
        if (NavInstructionTypeEnum < 0) {
            this.ab = 0;
        } else {
            this.ab = i;
        }
    }

    public final void D(int i) {
        this.U = i;
        int i2 = this.ab;
        if (NavInstructionTypeEnum < i2) {
            this.U = i2;
        }
    }

    public void E(boolean z, boolean z2) {
        int i;
        int i2;
        HorizontalWidgetRun wpVar = this.h;
        boolean z3 = z & wpVar.h;
        VerticalWidgetRun wrVar = this.i;
        boolean z4 = z2 & wrVar.h;
        int i3 = wpVar.i.f;
        int i4 = wrVar.i.f;
        int i5 = wpVar.j.f;
        int i6 = wrVar.j.f;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE) {
            i5 = 0;
            i6 = 0;
            i3 = 0;
            i4 = 0;
        } else if (i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i6 = 0;
            i3 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (z3) {
            this.Y = i3;
        }
        if (z4) {
            this.Z = i4;
        }
        if (this.ag == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        if (z3) {
            if (this.ap[0] == 1 && i8 < (i2 = this.U)) {
                i8 = i2;
            }
            this.U = i8;
            int i10 = this.ab;
            if (i8 < i10) {
                this.U = i10;
            }
        }
        if (z4) {
            if (this.ap[1] == 1 && i9 < (NavInstructionTypeEnum = this.V)) {
                i9 = i;
            }
            this.V = i9;
            int i11 = this.ac;
            if (i9 < i11) {
                this.V = i11;
            }
        }
    }

    final boolean F() {
        return (this instanceof ConstraintHelperWidget) || (this instanceof ContainerWidget);
    }

    public final boolean G(int i) {
        if (NavInstructionTypeEnum == 0) {
            return (this.J.e != null ? 1 : 0) + (this.L.e != null ? 1 : 0) < 2;
        }
        return ((this.K.e != null ? 1 : 0) + (this.M.e != null ? 1 : 0)) + (this.N.e != null ? 1 : 0) < 2;
    }

    public final boolean H(int i, int i2) {
        ConstraintAnchor vwVar;
        ConstraintAnchor vwVar2;
        if (NavInstructionTypeEnum == 0) {
            ConstraintAnchor vwVar3 = this.J.e;
            return vwVar3 != null && vwVar3.c && (vwVar2 = this.L.e) != null && vwVar2.c && (vwVar2.a() - this.L.b()) - (this.J.e.a() + this.J.b()) >= i2;
        }
        ConstraintAnchor vwVar4 = this.K.e;
        return vwVar4 != null && vwVar4.c && (vwVar = this.M.e) != null && vwVar.c && (vwVar.a() - this.M.b()) - (this.K.e.a() + this.K.b()) >= i2;
        return false;
    }

    public final boolean I() {
        ConstraintAnchor vwVar = this.J;
        ConstraintAnchor vwVar2 = vwVar.e;
        if (vwVar2 != null && vwVar2.e == vwVar) {
            return true;
        }
        ConstraintAnchor vwVar3 = this.L;
        ConstraintAnchor vwVar4 = vwVar3.e;
        return vwVar4 != null && vwVar4.e == vwVar3;
    }

    public final boolean J() {
        ConstraintAnchor vwVar = this.K;
        ConstraintAnchor vwVar2 = vwVar.e;
        if (vwVar2 != null && vwVar2.e == vwVar) {
            return true;
        }
        ConstraintAnchor vwVar3 = this.M;
        ConstraintAnchor vwVar4 = vwVar3.e;
        return vwVar4 != null && vwVar4.e == vwVar3;
    }

    public final boolean K() {
        return this.a && this.ag != 8;
    }

    public ConstraintAnchor L(int i) {
        switch (NavInstructionTypeEnum - 1) {
            case 1:
                return this.J;
            case 2:
                return this.K;
            case 3:
                return this.L;
            case 4:
                return this.M;
            case 5:
                return this.N;
            default:
                return this.Q;
        }
    }

    public final int M(int i) {
        return i == 0 ? N() : O();
    }

    public final int N() {
        return this.ap[0];
    }

    public final int O() {
        return this.ap[1];
    }

    public final void P(int i, ConstraintWidget vxVar, int i2, int i3, int i4) {
        L(NavInstructionTypeEnum).j(vxVar.L(i2), i3, i4);
    }

    public final void Q(int i) {
        this.ap[0] = i;
    }

    public final void R(int i) {
        this.ap[1] = i;
    }

    public void S(boolean z) {
        int i;
        VerticalWidgetRun wrVar;
        HorizontalWidgetRun wpVar;
        int o = LinearSystemSolver.o(this.J);
        int o2 = LinearSystemSolver.o(this.K);
        int o3 = LinearSystemSolver.o(this.L);
        int o4 = LinearSystemSolver.o(this.M);
        if (IcuMessageFormat && (wpVar = this.h) != null) {
            DimensionDependencyNode wkVar = wpVar.i;
            if (wkVar.i) {
                DimensionDependencyNode wkVar2 = wpVar.j;
                if (wkVar2.i) {
                    o = wkVar.f;
                    o3 = wkVar2.f;
                }
            }
        }
        if (IcuMessageFormat && (wrVar = this.i) != null) {
            DimensionDependencyNode wkVar3 = wrVar.i;
            if (wkVar3.i) {
                DimensionDependencyNode wkVar4 = wrVar.j;
                if (wkVar4.i) {
                    o2 = wkVar3.f;
                    o4 = wkVar4.f;
                }
            }
        }
        int i2 = o4 - o2;
        if (o3 - IcuConfigApostropheModeAction < 0 || i2 < 0 || o == Integer.MIN_VALUE || o == Integer.MAX_VALUE || o2 == Integer.MIN_VALUE || o2 == Integer.MAX_VALUE || o3 == Integer.MIN_VALUE || o3 == Integer.MAX_VALUE || o4 == Integer.MIN_VALUE) {
            o = 0;
            o2 = 0;
            o3 = 0;
            o4 = 0;
        } else if (o4 == Integer.MAX_VALUE) {
            o = 0;
            o2 = 0;
            o3 = 0;
            o4 = 0;
        }
        int i3 = o3 - o;
        int i4 = o4 - o2;
        this.Y = o;
        this.Z = o2;
        if (this.ag == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        int[] iArr = this.ap;
        int i5 = iArr[0];
        if (i5 == 1) {
            int i6 = this.U;
            if (i3 < i6) {
                i3 = i6;
                i5 = 1;
            } else {
                i5 = 1;
            }
        }
        if (iArr[1] == 1 && i4 < (NavInstructionTypeEnum = this.V)) {
            i4 = i;
        }
        this.U = i3;
        this.V = i4;
        int i7 = this.ac;
        if (i4 < i7) {
            this.V = i7;
        }
        int i8 = this.ab;
        if (i3 < i8) {
            this.U = i8;
        } else {
            i8 = i3;
        }
        int i9 = this.w;
        if (i9 > 0 && i5 == 3) {
            this.U = Math.min(i8, i9);
        }
        int i10 = this.z;
        if (i10 > 0 && this.ap[1] == 3) {
            this.V = Math.min(this.V, i10);
        }
        int i11 = this.U;
        if (i3 != i11) {
            this.k = i11;
        }
        int i12 = this.V;
        if (i4 != i12) {
            this.l = i12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
    
        if (r51.m != false) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x06e0  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0711  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0707  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0687  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x05d4  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x028d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(LinearSystemSolver vnVar, boolean z) {
        boolean z2;
        boolean z3;
        ConstraintWidget vxVar;
        ConstraintWidget vxVar2;
        boolean z4;
        boolean z5;
        int i;
        int i2;
        int i3;
        int i4;
        float f;
        int i5;
        SolverVariable vsVar;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z6;
        boolean z7;
        boolean z8;
        SolverVariable vsVar2;
        SolverVariable vsVar3;
        SolverVariable vsVar4;
        SolverVariable vsVar5;
        SolverVariable vsVar6;
        int i11;
        int i12;
        char c;
        ConstraintWidget vxVar3;
        LinearSystemSolver vnVar2;
        SolverVariable vsVar7;
        SolverVariable vsVar8;
        SolverVariable vsVar9;
        boolean z9;
        SolverVariable vsVar10;
        SolverVariable vsVar11;
        boolean z10;
        ConstraintWidget vxVar4;
        HorizontalWidgetRun wpVar;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean I;
        boolean J;
        HorizontalWidgetRun wpVar2;
        VerticalWidgetRun wrVar;
        DimensionDependencyNode wkVar;
        SolverVariable b = vnVar.b(this.J);
        SolverVariable b2 = vnVar.b(this.L);
        SolverVariable b3 = vnVar.b(this.K);
        SolverVariable b4 = vnVar.b(this.M);
        SolverVariable b5 = vnVar.b(this.N);
        ConstraintWidget vxVar5 = this.T;
        if (vxVar5 != null) {
            int[] iArr = vxVar5.ap;
            boolean z11 = iArr[0] == 2;
            boolean z12 = iArr[1] == 2;
            switch (this.r) {
                case 1:
                    z3 = z11;
                    z2 = false;
                    break;
                case 2:
                    z2 = z12;
                    z3 = false;
                    break;
                case 3:
                    break;
                default:
                    z2 = z12;
                    z3 = z11;
                    break;
            }
            if (this.ag == 8) {
                int size = this.S.size();
                int i18 = 0;
                while (true) {
                    if (i18 >= size) {
                        boolean[] zArr = this.c;
                        if (!zArr[0] && !zArr[1]) {
                            return;
                        }
                    } else if (!((ConstraintAnchor) this.S.get(i18)).g()) {
                        i18++;
                    }
                }
            }
            if (!this.b) {
                vnVar.f(b, this.Y);
                vnVar.f(b2, this.Y + this.U);
                if (z3 && (vxVar = this.T) != null) {
                    ConstraintAnchor vwVar = this.J;
                    ConstraintWidgetContainer vyVar = (ConstraintWidgetContainer) vxVar;
                    WeakReference weakReference = vyVar.aB;
                    if (weakReference == null || weakReference.get() == null || vwVar.a() > ((ConstraintAnchor) vyVar.aB.get()).a()) {
                        vyVar.aB = new WeakReference(vwVar);
                    }
                    ConstraintAnchor vwVar2 = this.L;
                    WeakReference weakReference2 = vyVar.aD;
                    if (weakReference2 == null || weakReference2.get() == null || vwVar2.a() > ((ConstraintAnchor) vyVar.aD.get()).a()) {
                        vyVar.aD = new WeakReference(vwVar2);
                    }
                }
            }
            if (this.m) {
                vnVar.f(b3, this.Z);
                vnVar.f(b4, this.Z + this.V);
                if (this.N.g()) {
                    vnVar.f(b5, this.Z + this.aa);
                }
                if (z2 && (vxVar2 = this.T) != null) {
                    ConstraintAnchor vwVar3 = this.K;
                    ConstraintWidgetContainer vyVar2 = (ConstraintWidgetContainer) vxVar2;
                    WeakReference weakReference3 = vyVar2.aA;
                    if (weakReference3 == null || weakReference3.get() == null || vwVar3.a() > ((ConstraintAnchor) vyVar2.aA.get()).a()) {
                        vyVar2.aA = new WeakReference(vwVar3);
                    }
                    ConstraintAnchor vwVar4 = this.M;
                    WeakReference weakReference4 = vyVar2.aC;
                    if (weakReference4 == null || weakReference4.get() == null || vwVar4.a() > ((ConstraintAnchor) vyVar2.aC.get()).a()) {
                        vyVar2.aC = new WeakReference(vwVar4);
                    }
                }
            }
            if (this.b && this.m) {
                this.b = false;
                this.m = false;
                return;
            }
            if (IcuMessageFormat && (wpVar2 = this.h) != null && (wrVar = this.i) != null) {
                wkVar = wpVar2.i;
                if (wkVar.i && wpVar2.j.i && wrVar.i.i && wrVar.j.i) {
                    vnVar.f(b, wkVar.f);
                    vnVar.f(b2, this.h.j.f);
                    vnVar.f(b3, this.i.i.f);
                    vnVar.f(b4, this.i.j.f);
                    vnVar.f(b5, this.i.a.f);
                    if (this.T != null) {
                        if (z3 && this.j[0] && !I()) {
                            vnVar.g(vnVar.b(this.T.L), b2, 0, 8);
                        }
                        if (z2 && this.j[1] && !J()) {
                            vnVar.g(vnVar.b(this.T.M), b4, 0, 8);
                        }
                    }
                    this.b = false;
                    this.m = false;
                    return;
                }
            }
            if (this.T == null) {
                if (a(0)) {
                    ((ConstraintWidgetContainer) this.T).a(this, 0);
                    I = true;
                } else {
                    I = I();
                }
                if (a(1)) {
                    ((ConstraintWidgetContainer) this.T).a(this, 1);
                    J = true;
                } else {
                    J = J();
                }
                if (!I && z3 && this.ag != 8 && this.J.e == null && this.L.e == null) {
                    vnVar.g(vnVar.b(this.T.L), b2, 0, 1);
                }
                if (!J && z2 && this.ag != 8 && this.K.e == null && this.M.e == null && this.N == null) {
                    vnVar.g(vnVar.b(this.T.M), b4, 0, 1);
                }
                z5 = I;
                z4 = J;
            } else {
                z4 = false;
                z5 = false;
            }
            i = this.U;
            i2 = this.ab;
            if (NavInstructionTypeEnum >= i2) {
                i2 = i;
            }
            i3 = this.V;
            i4 = this.ac;
            if (i3 >= i4) {
                i4 = i3;
            }
            int[] iArr2 = this.ap;
            int i19 = iArr2[0];
            int i20 = iArr2[1];
            int i21 = this.X;
            this.B = i21;
            f = this.W;
            this.C = f;
            int i22 = this.s;
            int i23 = i2;
            int i24 = this.t;
            if (NavManeuverTypeEnum <= 0.0f) {
                i5 = i4;
                if (this.ag != 8) {
                    if (i19 != 3) {
                        i13 = i19;
                    } else if (i22 == 0) {
                        i22 = 3;
                        i13 = 3;
                    } else {
                        i13 = 3;
                    }
                    if (i20 != 3) {
                        i14 = i20;
                    } else if (i24 == 0) {
                        i24 = 3;
                        i14 = 3;
                    } else {
                        i14 = 3;
                    }
                    if (i13 == 3) {
                        vsVar = b5;
                        i15 = i14;
                        if (i15 == 3 && i22 == 3) {
                            if (i24 != 3) {
                                i16 = 3;
                                if (i13 == 3 || i16 != 3) {
                                    if (i15 == 3 || i24 != 3) {
                                        i6 = i24;
                                        i7 = i22;
                                        i8 = i21;
                                        i9 = i23;
                                        i10 = i5;
                                    } else {
                                        this.B = 1;
                                        if (i21 == -1) {
                                            f = 1.0f / f;
                                            this.C = f;
                                        }
                                        int i25 = (int) (NavManeuverTypeEnum * i);
                                        if (i13 != 3) {
                                            i10 = i25;
                                            i7 = i22;
                                            i9 = i23;
                                            i8 = 1;
                                            i21 = 1;
                                            z6 = false;
                                            i6 = 4;
                                        } else {
                                            i6 = i24;
                                            i10 = i25;
                                            i7 = i22;
                                            i9 = i23;
                                            i8 = 1;
                                            i21 = 1;
                                        }
                                    }
                                    z6 = true;
                                } else {
                                    this.B = 0;
                                    int i26 = (int) (NavManeuverTypeEnum * i3);
                                    i6 = i24;
                                    if (i15 != 3) {
                                        i10 = i5;
                                        i21 = 0;
                                        z6 = false;
                                        i7 = 4;
                                    } else {
                                        i7 = i22;
                                        i10 = i5;
                                        i21 = 0;
                                        z6 = true;
                                    }
                                    i9 = i26;
                                    i8 = 0;
                                }
                                int[] iArr3 = this.u;
                                iArr3[0] = i7;
                                iArr3[1] = i6;
                                if (z6) {
                                }
                                z7 = false;
                                if (z6) {
                                }
                                z8 = false;
                                if (this.ap[0] != 2) {
                                }
                                if (true != r9) {
                                }
                                boolean z13 = !this.Q.h();
                                boolean[] zArr2 = this.c;
                                boolean z14 = zArr2[0];
                                boolean z15 = zArr2[1];
                                if (this.p != 2) {
                                }
                                vsVar2 = b4;
                                vsVar3 = b2;
                                vsVar4 = b;
                                vsVar5 = b3;
                                vsVar6 = vsVar;
                                if (IcuMessageFormat) {
                                }
                                z9 = true;
                                if (vxVar3.q == 2) {
                                }
                                if (z6) {
                                }
                                if (vxVar4.Q.h()) {
                                }
                                this.b = false;
                                this.m = false;
                            }
                            if (i21 != -1) {
                                if (i21 != 0) {
                                    i17 = 1;
                                    if (this.B == i17) {
                                    }
                                }
                                if (this.K.h()) {
                                }
                                this.B = 1;
                            } else if (i19 == 3 || i20 != 3) {
                                if (i19 == 3 && i20 != 3) {
                                    this.B = 1;
                                    this.C = 1.0f / f;
                                }
                                i17 = 1;
                                if (this.B == i17 && (!this.J.h() || !this.L.h())) {
                                    this.B = 0;
                                }
                            } else {
                                this.B = 0;
                                if (this.K.h() || !this.M.h()) {
                                    this.B = 1;
                                } else {
                                    i17 = 1;
                                    if (this.B == i17) {
                                        this.B = 0;
                                    }
                                }
                            }
                            if (this.B == -1 && (!this.K.h() || !this.M.h() || !this.J.h() || !this.L.h())) {
                                if (this.K.h() && this.M.h()) {
                                    this.B = 0;
                                } else if (this.J.h() && this.L.h()) {
                                    this.C = 1.0f / this.C;
                                    this.B = 1;
                                }
                            }
                            i8 = this.B;
                            if (i8 == -1) {
                                int i27 = this.v;
                                if (i27 > 0 && this.y == 0) {
                                    this.B = 0;
                                    i6 = i24;
                                    i7 = i22;
                                    i9 = i23;
                                    i10 = i5;
                                    i8 = 0;
                                    i21 = 0;
                                    z6 = true;
                                    int[] iArr32 = this.u;
                                    iArr32[0] = i7;
                                    iArr32[1] = i6;
                                    if (z6) {
                                    }
                                    z7 = false;
                                    if (z6) {
                                    }
                                    z8 = false;
                                    if (this.ap[0] != 2) {
                                    }
                                    if (true != r9) {
                                    }
                                    boolean z132 = !this.Q.h();
                                    boolean[] zArr22 = this.c;
                                    boolean z142 = zArr22[0];
                                    boolean z152 = zArr22[1];
                                    if (this.p != 2) {
                                    }
                                    vsVar2 = b4;
                                    vsVar3 = b2;
                                    vsVar4 = b;
                                    vsVar5 = b3;
                                    vsVar6 = vsVar;
                                    if (IcuMessageFormat) {
                                    }
                                    z9 = true;
                                    if (vxVar3.q == 2) {
                                    }
                                    if (z6) {
                                    }
                                    if (vxVar4.Q.h()) {
                                    }
                                    this.b = false;
                                    this.m = false;
                                }
                                if (i27 == 0 && this.y > 0) {
                                    this.C = 1.0f / this.C;
                                    this.B = 1;
                                    i6 = i24;
                                    i7 = i22;
                                    i9 = i23;
                                    i10 = i5;
                                    i8 = 1;
                                    i21 = 1;
                                    z6 = true;
                                    int[] iArr322 = this.u;
                                    iArr322[0] = i7;
                                    iArr322[1] = i6;
                                    if (z6) {
                                        if (i21 == 0) {
                                            z7 = true;
                                        } else if (i21 == -1) {
                                            z7 = true;
                                        }
                                        if (z6) {
                                            if (i8 == 1) {
                                                z8 = true;
                                            } else if (i8 == -1) {
                                                z8 = true;
                                            }
                                            boolean z16 = this.ap[0] != 2 && (this instanceof ConstraintWidgetContainer);
                                            int i28 = true != z16 ? i9 : 0;
                                            boolean z1322 = !this.Q.h();
                                            boolean[] zArr222 = this.c;
                                            boolean z1422 = zArr222[0];
                                            boolean z1522 = zArr222[1];
                                            if (this.p != 2 || this.b) {
                                                vsVar2 = b4;
                                                vsVar3 = b2;
                                                vsVar4 = b;
                                                vsVar5 = b3;
                                                vsVar6 = vsVar;
                                            } else {
                                                if (IcuMessageFormat && (wpVar = this.h) != null) {
                                                    DimensionDependencyNode wkVar2 = wpVar.i;
                                                    if (wkVar2.i && wpVar.j.i) {
                                                        vnVar.f(b, wkVar2.f);
                                                        vnVar.f(b2, this.h.j.f);
                                                        if (this.T == null || !z3 || !this.j[0]) {
                                                            vsVar2 = b4;
                                                            vsVar3 = b2;
                                                            vsVar4 = b;
                                                            vsVar5 = b3;
                                                            vsVar6 = vsVar;
                                                        } else if (I()) {
                                                            vsVar2 = b4;
                                                            vsVar3 = b2;
                                                            vsVar4 = b;
                                                            vsVar5 = b3;
                                                            vsVar6 = vsVar;
                                                        } else {
                                                            vnVar.g(vnVar.b(this.T.L), b2, 0, 8);
                                                            vsVar2 = b4;
                                                            vsVar3 = b2;
                                                            vsVar4 = b;
                                                            vsVar5 = b3;
                                                            vsVar6 = vsVar;
                                                        }
                                                    }
                                                }
                                                ConstraintWidget vxVar6 = this.T;
                                                SolverVariable b6 = vxVar6 != null ? vnVar.b(vxVar6.L) : null;
                                                ConstraintWidget vxVar7 = this.T;
                                                SolverVariable b7 = vxVar7 != null ? vnVar.b(vxVar7.J) : null;
                                                boolean z17 = this.j[0];
                                                int[] iArr4 = this.ap;
                                                vsVar6 = vsVar;
                                                vsVar2 = b4;
                                                vsVar5 = b3;
                                                vsVar3 = b2;
                                                vsVar4 = b;
                                                c(vnVar, true, z3, z2, z17, b7, b6, iArr4[0], z16, this.J, this.L, this.Y, i28, this.ab, this.D[0], this.ad, z7, iArr4[1] == 3, z5, z4, z1422, i7, i6, this.v, this.w, this.x, z1322);
                                            }
                                            if (IcuMessageFormat) {
                                                vxVar3 = this;
                                                VerticalWidgetRun wrVar2 = vxVar3.i;
                                                if (wrVar2 != null) {
                                                    DimensionDependencyNode wkVar3 = wrVar2.i;
                                                    if (wkVar3.i && wrVar2.j.i) {
                                                        vnVar2 = vnVar;
                                                        vsVar9 = vsVar5;
                                                        vnVar2.f(vsVar9, wkVar3.f);
                                                        vsVar8 = vsVar2;
                                                        vnVar2.f(vsVar8, vxVar3.i.j.f);
                                                        vsVar7 = vsVar6;
                                                        vnVar2.f(vsVar7, vxVar3.i.a.f);
                                                        ConstraintWidget vxVar8 = vxVar3.T;
                                                        if (vxVar8 == null || z4 || !z2) {
                                                            i11 = 8;
                                                            i12 = 0;
                                                            c = 1;
                                                        } else {
                                                            c = 1;
                                                            if (vxVar3.j[1]) {
                                                                i11 = 8;
                                                                i12 = 0;
                                                                vnVar2.g(vnVar2.b(vxVar8.M), vsVar8, 0, 8);
                                                                z9 = false;
                                                                if (vxVar3.q == 2) {
                                                                    vsVar10 = vsVar8;
                                                                    vsVar11 = vsVar9;
                                                                } else if (!z9 || vxVar3.m) {
                                                                    vsVar10 = vsVar8;
                                                                    vsVar11 = vsVar9;
                                                                } else {
                                                                    boolean z18 = vxVar3.ap[c] == 2 && (vxVar3 instanceof ConstraintWidgetContainer);
                                                                    if (PhenotypeFlagMessage == z18) {
                                                                        i10 = 0;
                                                                    }
                                                                    ConstraintWidget vxVar9 = vxVar3.T;
                                                                    SolverVariable b8 = vxVar9 != null ? vnVar2.b(vxVar9.M) : null;
                                                                    ConstraintWidget vxVar10 = vxVar3.T;
                                                                    SolverVariable b9 = vxVar10 != null ? vnVar2.b(vxVar10.K) : null;
                                                                    int i29 = vxVar3.aa;
                                                                    if (i29 > 0 || vxVar3.ag == i11) {
                                                                        ConstraintAnchor vwVar5 = vxVar3.N;
                                                                        if (vwVar5.e != null) {
                                                                            vnVar2.m(vsVar7, vsVar9, i29, i11);
                                                                            vnVar2.m(vsVar7, vnVar2.b(vxVar3.N.e), vxVar3.N.b(), i11);
                                                                            if (z2) {
                                                                                vnVar2.g(b8, vnVar2.b(vxVar3.M), i12, 5);
                                                                                z10 = false;
                                                                            } else {
                                                                                z10 = false;
                                                                            }
                                                                            boolean z19 = vxVar3.j[c];
                                                                            int[] iArr5 = vxVar3.ap;
                                                                            vsVar10 = vsVar8;
                                                                            vsVar11 = vsVar9;
                                                                            c(vnVar, false, z2, z3, z19, b9, b8, iArr5[c], z18, vxVar3.K, vxVar3.M, vxVar3.Z, i10, vxVar3.ac, vxVar3.D[c], vxVar3.ae, z8, iArr5[i12] != 3, z4, z5, z1522, i6, i7, vxVar3.y, vxVar3.z, vxVar3.A, z10);
                                                                        } else if (vxVar3.ag == i11) {
                                                                            vnVar2.m(vsVar7, vsVar9, vwVar5.b(), i11);
                                                                        } else {
                                                                            vnVar2.m(vsVar7, vsVar9, i29, i11);
                                                                        }
                                                                    }
                                                                    z10 = z1322;
                                                                    boolean z192 = vxVar3.j[c];
                                                                    int[] iArr52 = vxVar3.ap;
                                                                    vsVar10 = vsVar8;
                                                                    vsVar11 = vsVar9;
                                                                    c(vnVar, false, z2, z3, z192, b9, b8, iArr52[c], z18, vxVar3.K, vxVar3.M, vxVar3.Z, i10, vxVar3.ac, vxVar3.D[c], vxVar3.ae, z8, iArr52[i12] != 3, z4, z5, z1522, i6, i7, vxVar3.y, vxVar3.z, vxVar3.A, z10);
                                                                }
                                                                if (z6) {
                                                                    vxVar4 = this;
                                                                    if (vxVar4.B == 1) {
                                                                        vnVar.n(vsVar10, vsVar11, vsVar3, vsVar4, vxVar4.C);
                                                                    } else {
                                                                        vnVar.n(vsVar3, vsVar4, vsVar10, vsVar11, vxVar4.C);
                                                                    }
                                                                } else {
                                                                    vxVar4 = this;
                                                                }
                                                                if (vxVar4.Q.h()) {
                                                                    ConstraintWidget vxVar11 = vxVar4.Q.e.d;
                                                                    double radians = Math.toRadians(vxVar4.E + 90.0f);
                                                                    int b10 = vxVar4.Q.b();
                                                                    SolverVariable b11 = vnVar.b(vxVar4.L(2));
                                                                    SolverVariable b12 = vnVar.b(vxVar4.L(3));
                                                                    SolverVariable b13 = vnVar.b(vxVar4.L(4));
                                                                    SolverVariable b14 = vnVar.b(vxVar4.L(5));
                                                                    SolverVariable b15 = vnVar.b(vxVar11.L(2));
                                                                    SolverVariable b16 = vnVar.b(vxVar11.L(3));
                                                                    SolverVariable b17 = vnVar.b(vxVar11.L(4));
                                                                    SolverVariable b18 = vnVar.b(vxVar11.L(5));
                                                                    SolverArrayRow a = vnVar.a();
                                                                    double d = (float) radians;
                                                                    double d2 = b10;
                                                                    double sin = Math.sin(ProtoMsgIntStringInt);
                                                                    Double.isNaN(d2);
                                                                    a.j(b12, b14, b16, b18, (float) (sin * d2));
                                                                    vnVar.e(SingleStringProtoMessage);
                                                                    SolverArrayRow a2 = vnVar.a();
                                                                    double cos = Math.cos(ProtoMsgIntStringInt);
                                                                    Double.isNaN(d2);
                                                                    a2.j(b11, b13, b15, b17, (float) (GuavaUncheckedException * d2));
                                                                    vnVar.e(a2);
                                                                }
                                                                this.b = false;
                                                                this.m = false;
                                                            }
                                                            i11 = 8;
                                                            i12 = 0;
                                                        }
                                                        z9 = false;
                                                        if (vxVar3.q == 2) {
                                                        }
                                                        if (z6) {
                                                        }
                                                        if (vxVar4.Q.h()) {
                                                        }
                                                        this.b = false;
                                                        this.m = false;
                                                    }
                                                }
                                                vnVar2 = vnVar;
                                                vsVar7 = vsVar6;
                                                vsVar8 = vsVar2;
                                                vsVar9 = vsVar5;
                                                i11 = 8;
                                                i12 = 0;
                                                c = 1;
                                            } else {
                                                i11 = 8;
                                                i12 = 0;
                                                c = 1;
                                                vxVar3 = this;
                                                vnVar2 = vnVar;
                                                vsVar7 = vsVar6;
                                                vsVar8 = vsVar2;
                                                vsVar9 = vsVar5;
                                            }
                                            z9 = true;
                                            if (vxVar3.q == 2) {
                                            }
                                            if (z6) {
                                            }
                                            if (vxVar4.Q.h()) {
                                            }
                                            this.b = false;
                                            this.m = false;
                                        }
                                        z8 = false;
                                        if (this.ap[0] != 2) {
                                        }
                                        if (true != z16) {
                                        }
                                        boolean z13222 = !this.Q.h();
                                        boolean[] zArr2222 = this.c;
                                        boolean z14222 = zArr2222[0];
                                        boolean z15222 = zArr2222[1];
                                        if (this.p != 2) {
                                        }
                                        vsVar2 = b4;
                                        vsVar3 = b2;
                                        vsVar4 = b;
                                        vsVar5 = b3;
                                        vsVar6 = vsVar;
                                        if (IcuMessageFormat) {
                                        }
                                        z9 = true;
                                        if (vxVar3.q == 2) {
                                        }
                                        if (z6) {
                                        }
                                        if (vxVar4.Q.h()) {
                                        }
                                        this.b = false;
                                        this.m = false;
                                    }
                                    z7 = false;
                                    if (z6) {
                                    }
                                    z8 = false;
                                    if (this.ap[0] != 2) {
                                    }
                                    if (true != z16) {
                                    }
                                    boolean z132222 = !this.Q.h();
                                    boolean[] zArr22222 = this.c;
                                    boolean z142222 = zArr22222[0];
                                    boolean z152222 = zArr22222[1];
                                    if (this.p != 2) {
                                    }
                                    vsVar2 = b4;
                                    vsVar3 = b2;
                                    vsVar4 = b;
                                    vsVar5 = b3;
                                    vsVar6 = vsVar;
                                    if (IcuMessageFormat) {
                                    }
                                    z9 = true;
                                    if (vxVar3.q == 2) {
                                    }
                                    if (z6) {
                                    }
                                    if (vxVar4.Q.h()) {
                                    }
                                    this.b = false;
                                    this.m = false;
                                }
                            }
                            i21 = i8;
                            i6 = i24;
                            i7 = i22;
                            i9 = i23;
                            i10 = i5;
                            z6 = true;
                            int[] iArr3222 = this.u;
                            iArr3222[0] = i7;
                            iArr3222[1] = i6;
                            if (z6) {
                            }
                            z7 = false;
                            if (z6) {
                            }
                            z8 = false;
                            if (this.ap[0] != 2) {
                            }
                            if (true != z16) {
                            }
                            boolean z1322222 = !this.Q.h();
                            boolean[] zArr222222 = this.c;
                            boolean z1422222 = zArr222222[0];
                            boolean z1522222 = zArr222222[1];
                            if (this.p != 2) {
                            }
                            vsVar2 = b4;
                            vsVar3 = b2;
                            vsVar4 = b;
                            vsVar5 = b3;
                            vsVar6 = vsVar;
                            if (IcuMessageFormat) {
                            }
                            z9 = true;
                            if (vxVar3.q == 2) {
                            }
                            if (z6) {
                            }
                            if (vxVar4.Q.h()) {
                            }
                            this.b = false;
                            this.m = false;
                        }
                    } else {
                        vsVar = b5;
                        i15 = i14;
                    }
                    i16 = i22;
                    if (i13 == 3) {
                    }
                    if (i15 == 3) {
                    }
                    i6 = i24;
                    i7 = i22;
                    i8 = i21;
                    i9 = i23;
                    i10 = i5;
                    z6 = true;
                    int[] iArr32222 = this.u;
                    iArr32222[0] = i7;
                    iArr32222[1] = i6;
                    if (z6) {
                    }
                    z7 = false;
                    if (z6) {
                    }
                    z8 = false;
                    if (this.ap[0] != 2) {
                    }
                    if (true != z16) {
                    }
                    boolean z13222222 = !this.Q.h();
                    boolean[] zArr2222222 = this.c;
                    boolean z14222222 = zArr2222222[0];
                    boolean z15222222 = zArr2222222[1];
                    if (this.p != 2) {
                    }
                    vsVar2 = b4;
                    vsVar3 = b2;
                    vsVar4 = b;
                    vsVar5 = b3;
                    vsVar6 = vsVar;
                    if (IcuMessageFormat) {
                    }
                    z9 = true;
                    if (vxVar3.q == 2) {
                    }
                    if (z6) {
                    }
                    if (vxVar4.Q.h()) {
                    }
                    this.b = false;
                    this.m = false;
                }
            } else {
                i5 = i4;
            }
            vsVar = b5;
            i6 = i24;
            i7 = i22;
            i8 = i21;
            i9 = i23;
            i10 = i5;
            z6 = false;
            int[] iArr322222 = this.u;
            iArr322222[0] = i7;
            iArr322222[1] = i6;
            if (z6) {
            }
            z7 = false;
            if (z6) {
            }
            z8 = false;
            if (this.ap[0] != 2) {
            }
            if (true != z16) {
            }
            boolean z132222222 = !this.Q.h();
            boolean[] zArr22222222 = this.c;
            boolean z142222222 = zArr22222222[0];
            boolean z152222222 = zArr22222222[1];
            if (this.p != 2) {
            }
            vsVar2 = b4;
            vsVar3 = b2;
            vsVar4 = b;
            vsVar5 = b3;
            vsVar6 = vsVar;
            if (IcuMessageFormat) {
            }
            z9 = true;
            if (vxVar3.q == 2) {
            }
            if (z6) {
            }
            if (vxVar4.Q.h()) {
            }
            this.b = false;
            this.m = false;
        }
        z2 = false;
        z3 = false;
        if (this.ag == 8) {
        }
        if (!this.b) {
        }
        if (this.m) {
        }
        if (this.b) {
            this.b = false;
            this.m = false;
            return;
        }
        if (IcuMessageFormat) {
            wkVar = wpVar2.i;
            if (wkVar.i) {
                vnVar.f(b, wkVar.f);
                vnVar.f(b2, this.h.j.f);
                vnVar.f(b3, this.i.i.f);
                vnVar.f(b4, this.i.j.f);
                vnVar.f(b5, this.i.a.f);
                if (this.T != null) {
                }
                this.b = false;
                this.m = false;
                return;
            }
        }
        if (this.T == null) {
        }
        i = this.U;
        i2 = this.ab;
        if (NavInstructionTypeEnum >= i2) {
        }
        i3 = this.V;
        i4 = this.ac;
        if (i3 >= i4) {
        }
        int[] iArr22 = this.ap;
        int i192 = iArr22[0];
        int i202 = iArr22[1];
        int i212 = this.X;
        this.B = i212;
        f = this.W;
        this.C = f;
        int i222 = this.s;
        int i232 = i2;
        int i242 = this.t;
        if (NavManeuverTypeEnum <= 0.0f) {
        }
        vsVar = b5;
        i6 = i242;
        i7 = i222;
        i8 = i212;
        i9 = i232;
        i10 = i5;
        z6 = false;
        int[] iArr3222222 = this.u;
        iArr3222222[0] = i7;
        iArr3222222[1] = i6;
        if (z6) {
        }
        z7 = false;
        if (z6) {
        }
        z8 = false;
        if (this.ap[0] != 2) {
        }
        if (true != z16) {
        }
        boolean z1322222222 = !this.Q.h();
        boolean[] zArr222222222 = this.c;
        boolean z1422222222 = zArr222222222[0];
        boolean z1522222222 = zArr222222222[1];
        if (this.p != 2) {
        }
        vsVar2 = b4;
        vsVar3 = b2;
        vsVar4 = b;
        vsVar5 = b3;
        vsVar6 = vsVar;
        if (IcuMessageFormat) {
        }
        z9 = true;
        if (vxVar3.q == 2) {
        }
        if (z6) {
        }
        if (vxVar4.Q.h()) {
        }
        this.b = false;
        this.m = false;
    }

    public boolean d() {
        return this.ag != 8;
    }

    public boolean e() {
        return this.b || (this.J.c && this.L.c);
    }

    public boolean f() {
        return this.m || (this.K.c && this.M.c);
    }

    public final int g() {
        return l() + this.V;
    }

    public final int h() {
        if (this.ag == 8) {
            return 0;
        }
        return this.V;
    }

    public final int i() {
        return k() + this.U;
    }

    public final int j() {
        if (this.ag == 8) {
            return 0;
        }
        return this.U;
    }

    public final int k() {
        ConstraintWidget vxVar = this.T;
        return vxVar != null ? ((ConstraintWidgetContainer) vxVar).ar + this.Y : this.Y;
    }

    public final int l() {
        ConstraintWidget vxVar = this.T;
        return vxVar != null ? ((ConstraintWidgetContainer) vxVar).as + this.Z : this.Z;
    }

    public final ConstraintWidget m(int i) {
        ConstraintAnchor vwVar;
        ConstraintAnchor vwVar2;
        if (NavInstructionTypeEnum != 0) {
            if (NavInstructionTypeEnum == 1 && (vwVar2 = (vwVar = this.M).e) != null && vwVar2.e == vwVar) {
                return vwVar2.d;
            }
            return null;
        }
        ConstraintAnchor vwVar3 = this.L;
        ConstraintAnchor vwVar4 = vwVar3.e;
        if (vwVar4 == null || vwVar4.e != vwVar3) {
            return null;
        }
        return vwVar4.d;
    }

    public final ConstraintWidget n(int i) {
        ConstraintAnchor vwVar;
        ConstraintAnchor vwVar2;
        if (NavInstructionTypeEnum != 0) {
            if (NavInstructionTypeEnum == 1 && (vwVar2 = (vwVar = this.K).e) != null && vwVar2.e == vwVar) {
                return vwVar2.d;
            }
            return null;
        }
        ConstraintAnchor vwVar3 = this.J;
        ConstraintAnchor vwVar4 = vwVar3.e;
        if (vwVar4 == null || vwVar4.e != vwVar3) {
            return null;
        }
        return vwVar4.d;
    }

    public final WidgetRun o(int i) {
        if (NavInstructionTypeEnum == 0) {
            return this.h;
        }
        if (NavInstructionTypeEnum == 1) {
            return this.i;
        }
        return null;
    }

    public final void p(ConstraintWidgetContainer vyVar, LinearSystemSolver vnVar, HashSet hashSet, int i, boolean z) {
        if (IcuMessageFormat) {
            if (!hashSet.contains(this)) {
                return;
            }
            ConstraintWidgetDimensionHolder.a(vyVar, vnVar, this);
            hashSet.remove(this);
            b(vnVar, vyVar.W(64));
        }
        if (NavInstructionTypeEnum == 0) {
            HashSet hashSet2 = this.J.a;
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    ((ConstraintAnchor) it.next()).d.p(vyVar, vnVar, hashSet, 0, true);
                }
            }
            HashSet hashSet3 = this.L.a;
            if (hashSet3 != null) {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    ((ConstraintAnchor) it2.next()).d.p(vyVar, vnVar, hashSet, 0, true);
                }
                return;
            }
            return;
        }
        HashSet hashSet4 = this.K.a;
        if (hashSet4 != null) {
            Iterator it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                ((ConstraintAnchor) it3.next()).d.p(vyVar, vnVar, hashSet, 1, true);
            }
        }
        HashSet hashSet5 = this.M.a;
        if (hashSet5 != null) {
            Iterator it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                ((ConstraintAnchor) it4.next()).d.p(vyVar, vnVar, hashSet, 1, true);
            }
        }
        HashSet hashSet6 = this.N.a;
        if (hashSet6 != null) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                ((ConstraintAnchor) it5.next()).d.p(vyVar, vnVar, hashSet, 1, true);
            }
        }
    }

    public final void q(LinearSystemSolver vnVar) {
        vnVar.b(this.J);
        vnVar.b(this.K);
        vnVar.b(this.L);
        vnVar.b(this.M);
        if (this.aa > 0) {
            vnVar.b(this.N);
        }
    }

    public final void r() {
        if (this.h == null) {
            this.h = new HorizontalWidgetRun(this);
        }
        if (this.i == null) {
            this.i = new VerticalWidgetRun(this);
        }
    }

    public void s() {
        this.J.d();
        this.K.d();
        this.L.d();
        this.M.d();
        this.N.d();
        this.O.d();
        this.P.d();
        this.Q.d();
        this.T = null;
        this.E = 0.0f;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.aa = 0;
        this.ab = 0;
        this.ac = 0;
        this.ad = 0.5f;
        this.ae = 0.5f;
        int[] iArr = this.ap;
        iArr[0] = 1;
        iArr[1] = 1;
        this.af = null;
        this.ag = 0;
        this.ai = 0;
        this.aj = 0;
        float[] fArr = this.ak;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.p = -1;
        this.q = -1;
        int[] iArr2 = this.D;
        iArr2[0] = Integer.MAX_VALUE;
        iArr2[1] = Integer.MAX_VALUE;
        this.s = 0;
        this.t = 0;
        this.x = 1.0f;
        this.A = 1.0f;
        this.w = Preference.DEFAULT_ORDER;
        this.z = Preference.DEFAULT_ORDER;
        this.v = 0;
        this.y = 0;
        this.B = -1;
        this.C = 1.0f;
        boolean[] zArr = this.j;
        zArr[0] = true;
        zArr[1] = true;
        this.G = false;
        boolean[] zArr2 = this.c;
        zArr2[0] = false;
        zArr2[1] = false;
        this.a = true;
        int[] iArr3 = this.u;
        iArr3[0] = 0;
        iArr3[1] = 0;
        this.k = -1;
        this.l = -1;
    }

    public final void t() {
        this.b = false;
        this.m = false;
        this.n = false;
        this.o = false;
        int size = this.S.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ConstraintAnchor vwVar = (ConstraintAnchor) this.S.get(NavInstructionTypeEnum);
            vwVar.c = false;
            vwVar.b = 0;
        }
    }

    public String toString() {
        String str;
        String str2 = this.ah;
        if (str2 != null) {
            StringBuilder sb = new StringBuilder(str2.length() + 5);
            StaggeredGridLayoutParams.append("id: ");
            StaggeredGridLayoutParams.append(str2);
            StaggeredGridLayoutParams.append(" ");
            str = StaggeredGridLayoutParams.toString();
        } else {
            str = "";
        }
        int i = this.Y;
        int i2 = this.Z;
        int i3 = this.U;
        int i4 = this.V;
        StringBuilder sb2 = new StringBuilder(str.length() + 56);
        sb2.append("");
        sb2.append(str);
        sb2.append("(");
        sb2.append(NavInstructionTypeEnum);
        sb2.append(", ");
        sb2.append(i2);
        sb2.append(") - (");
        sb2.append(i3);
        sb2.append(" x ");
        sb2.append(i4);
        sb2.append(")");
        return sb2.toString();
    }

    public void u(SolverCache vmVar) {
        this.J.i();
        this.K.i();
        this.L.i();
        this.M.i();
        this.N.i();
        this.Q.i();
        this.O.i();
        this.P.i();
    }

    public final void v(int i) {
        this.aa = i;
        this.F = i > 0;
    }

    public final void w(int i, int i2) {
        if (this.b) {
            return;
        }
        this.J.e(NavInstructionTypeEnum);
        this.L.e(i2);
        this.Y = i;
        this.U = i2 - i;
        this.b = true;
    }

    public final void x(int i, int i2) {
        if (this.m) {
            return;
        }
        this.K.e(NavInstructionTypeEnum);
        this.M.e(i2);
        this.Z = i;
        this.V = i2 - i;
        if (this.F) {
            this.N.e(NavInstructionTypeEnum + this.aa);
        }
        this.m = true;
    }

    public final void y(int i) {
        this.V = i;
        int i2 = this.ac;
        if (NavInstructionTypeEnum < i2) {
            this.V = i2;
        }
    }

    protected final void z(int i, boolean z) {
        this.c[i] = z;
    }
}
