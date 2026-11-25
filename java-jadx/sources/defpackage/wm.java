package defpackage;

import java.util.HashSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class wm {
    public static final wf a = new wf();
    public static int b = 0;
    public static int c = 0;

    /* JADX WARN: Removed duplicated region for block: B:48:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(vx vxVar) {
        boolean z;
        int N = vxVar.N();
        int O = vxVar.O();
        vx vxVar2 = vxVar.T;
        if (vxVar2 == null) {
            vxVar2 = null;
        }
        if (vxVar2 != null) {
            vxVar2.N();
        }
        if (vxVar2 != null) {
            vxVar2.O();
        }
        if (N != 1 && !vxVar.e() && N != 2) {
            if (N == 3) {
                if (vxVar.s != 0 || vxVar.W != 0.0f) {
                    N = 3;
                } else if (vxVar.G(0)) {
                    N = 3;
                } else {
                    N = 3;
                }
            }
            z = N == 3 && vxVar.s == 1 && vxVar.H(0, vxVar.j());
            boolean z2 = (O != 1 || vxVar.f() || O == 2 || (O == 3 && vxVar.t == 0 && vxVar.W == 0.0f && vxVar.G(1))) ? true : N == 3 && vxVar.t == 1 && vxVar.H(1, vxVar.h());
            if (vxVar.W > 0.0f) {
                if (z || z2) {
                    return true;
                }
                z2 = false;
                z = false;
            }
            return !z && z2;
        }
        z = true;
        if (O != 1) {
        }
        if (vxVar.W > 0.0f) {
        }
        if (z) {
        }
    }

    public static void b(int i, vx vxVar, wz wzVar, boolean z) {
        vw vwVar;
        vw vwVar2;
        vw vwVar3;
        vw vwVar4;
        vw vwVar5;
        if (vxVar.n) {
            return;
        }
        b++;
        if (!(vxVar instanceof vy) && vxVar.K() && a(vxVar)) {
            vy.X(vxVar, wzVar, new wf());
        }
        vw L = vxVar.L(2);
        vw L2 = vxVar.L(4);
        int a2 = L.a();
        int a3 = L2.a();
        HashSet hashSet = L.a;
        float f = 0.0f;
        if (hashSet != null && L.c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                vw vwVar6 = (vw) it.next();
                vx vxVar2 = vwVar6.d;
                int i2 = i + 1;
                boolean a4 = a(vxVar2);
                if (vxVar2.K() && a4) {
                    vy.X(vxVar2, wzVar, new wf());
                }
                if (vxVar2.N() != 3 || a4) {
                    if (vxVar2.K()) {
                        f = 0.0f;
                    } else {
                        vw vwVar7 = vxVar2.J;
                        if (vwVar6 == vwVar7 && vxVar2.L.e == null) {
                            int b2 = vwVar7.b() + a2;
                            vxVar2.w(b2, vxVar2.j() + b2);
                            b(i2, vxVar2, wzVar, z);
                        } else {
                            vw vwVar8 = vxVar2.L;
                            if (vwVar6 == vwVar8 && vwVar7.e == null) {
                                int b3 = a2 - vwVar8.b();
                                vxVar2.w(b3 - vxVar2.j(), b3);
                                b(i2, vxVar2, wzVar, z);
                            } else if (vwVar6 == vwVar7) {
                                vw vwVar9 = vwVar8.e;
                                if (vwVar9 == null || !vwVar9.c) {
                                    f = 0.0f;
                                } else if (vxVar2.I()) {
                                    f = 0.0f;
                                } else {
                                    e(i2, wzVar, vxVar2, z);
                                    f = 0.0f;
                                }
                            }
                            f = 0.0f;
                        }
                    }
                } else if (vxVar2.N() == 3 && vxVar2.w >= 0 && vxVar2.v >= 0 && (vxVar2.ag == 8 || (vxVar2.s == 0 && vxVar2.W == f))) {
                    if (!vxVar2.I() && ((vwVar6 == (vwVar3 = vxVar2.J) && (vwVar5 = vxVar2.L.e) != null && vwVar5.c) || (vwVar6 == vxVar2.L && (vwVar4 = vwVar3.e) != null && vwVar4.c))) {
                        if (!vxVar2.I()) {
                            f(i2, vxVar, wzVar, vxVar2, z);
                        }
                    }
                }
            }
        }
        if (vxVar instanceof wa) {
            return;
        }
        HashSet hashSet2 = L2.a;
        if (hashSet2 != null && L2.c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                vw vwVar10 = (vw) it2.next();
                vx vxVar3 = vwVar10.d;
                int i3 = i + 1;
                boolean a5 = a(vxVar3);
                if (vxVar3.K() && a5) {
                    vy.X(vxVar3, wzVar, new wf());
                }
                vw vwVar11 = vxVar3.J;
                boolean z2 = false;
                if (vwVar10 == vwVar11 && (vwVar2 = vxVar3.L.e) != null && vwVar2.c) {
                    z2 = true;
                } else if (vwVar10 == vxVar3.L && (vwVar = vwVar11.e) != null && vwVar.c) {
                    z2 = true;
                }
                if (vxVar3.N() == 3 && !a5) {
                    if (vxVar3.N() == 3 && vxVar3.w >= 0 && vxVar3.v >= 0) {
                        if (vxVar3.ag != 8) {
                            if (vxVar3.s == 0) {
                                if (vxVar3.W == 0.0f) {
                                }
                            }
                        }
                        if (!vxVar3.I() && z2 && !vxVar3.I()) {
                            f(i3, vxVar, wzVar, vxVar3, z);
                        }
                    }
                }
                if (!vxVar3.K()) {
                    vw vwVar12 = vxVar3.J;
                    if (vwVar10 == vwVar12 && vxVar3.L.e == null) {
                        int b4 = vwVar12.b() + a3;
                        vxVar3.w(b4, vxVar3.j() + b4);
                        b(i3, vxVar3, wzVar, z);
                    } else {
                        vw vwVar13 = vxVar3.L;
                        if (vwVar10 == vwVar13 && vwVar12.e == null) {
                            int b5 = a3 - vwVar13.b();
                            vxVar3.w(b5 - vxVar3.j(), b5);
                            b(i3, vxVar3, wzVar, z);
                        } else if (z2 && !vxVar3.I()) {
                            e(i3, wzVar, vxVar3, z);
                        }
                    }
                }
            }
        }
        vxVar.n = true;
    }

    public static void c(int i, vx vxVar, wz wzVar) {
        vw vwVar;
        vw vwVar2;
        vw vwVar3;
        vw vwVar4;
        vw vwVar5;
        vw vwVar6;
        if (vxVar.o) {
            return;
        }
        c++;
        if (!(vxVar instanceof vy) && vxVar.K() && a(vxVar)) {
            vy.X(vxVar, wzVar, new wf());
        }
        vw L = vxVar.L(3);
        vw L2 = vxVar.L(5);
        int a2 = L.a();
        int a3 = L2.a();
        HashSet hashSet = L.a;
        if (hashSet != null && L.c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                vw vwVar7 = (vw) it.next();
                vx vxVar2 = vwVar7.d;
                int i2 = i + 1;
                boolean a4 = a(vxVar2);
                if (vxVar2.K() && a4) {
                    vy.X(vxVar2, wzVar, new wf());
                }
                if (vxVar2.O() != 3 || a4) {
                    if (!vxVar2.K()) {
                        vw vwVar8 = vxVar2.K;
                        if (vwVar7 == vwVar8 && vxVar2.M.e == null) {
                            int b2 = vwVar8.b() + a2;
                            vxVar2.x(b2, vxVar2.h() + b2);
                            c(i2, vxVar2, wzVar);
                        } else {
                            vw vwVar9 = vxVar2.M;
                            if (vwVar7 == vwVar9 && vwVar9.e == null) {
                                int b3 = a2 - vwVar9.b();
                                vxVar2.x(b3 - vxVar2.h(), b3);
                                c(i2, vxVar2, wzVar);
                            } else if (vwVar7 == vwVar8 && (vwVar3 = vwVar9.e) != null && vwVar3.c) {
                                g(i2, wzVar, vxVar2);
                            }
                        }
                    }
                } else if (vxVar2.O() == 3 && vxVar2.z >= 0 && vxVar2.y >= 0 && (vxVar2.ag == 8 || (vxVar2.t == 0 && vxVar2.W == 0.0f))) {
                    if (!vxVar2.J() && ((vwVar7 == (vwVar4 = vxVar2.K) && (vwVar6 = vxVar2.M.e) != null && vwVar6.c) || (vwVar7 == vxVar2.M && (vwVar5 = vwVar4.e) != null && vwVar5.c))) {
                        if (!vxVar2.J()) {
                            h(i2, vxVar, wzVar, vxVar2);
                        }
                    }
                }
            }
        }
        if (vxVar instanceof wa) {
            return;
        }
        HashSet hashSet2 = L2.a;
        if (hashSet2 != null && L2.c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                vw vwVar10 = (vw) it2.next();
                vx vxVar3 = vwVar10.d;
                int i3 = i + 1;
                boolean a5 = a(vxVar3);
                if (vxVar3.K() && a5) {
                    vy.X(vxVar3, wzVar, new wf());
                }
                vw vwVar11 = vxVar3.K;
                boolean z = false;
                if (vwVar10 == vwVar11 && (vwVar2 = vxVar3.M.e) != null && vwVar2.c) {
                    z = true;
                } else if (vwVar10 == vxVar3.M && (vwVar = vwVar11.e) != null && vwVar.c) {
                    z = true;
                }
                if (vxVar3.O() != 3 || a5) {
                    if (!vxVar3.K()) {
                        vw vwVar12 = vxVar3.K;
                        if (vwVar10 == vwVar12 && vxVar3.M.e == null) {
                            int b4 = vwVar12.b() + a3;
                            vxVar3.x(b4, vxVar3.h() + b4);
                            c(i3, vxVar3, wzVar);
                        } else {
                            vw vwVar13 = vxVar3.M;
                            if (vwVar10 == vwVar13 && vwVar12.e == null) {
                                int b5 = a3 - vwVar13.b();
                                vxVar3.x(b5 - vxVar3.h(), b5);
                                c(i3, vxVar3, wzVar);
                            } else if (z && !vxVar3.J()) {
                                g(i3, wzVar, vxVar3);
                            }
                        }
                    }
                } else if (vxVar3.O() == 3 && vxVar3.z >= 0 && vxVar3.y >= 0 && (vxVar3.ag == 8 || (vxVar3.t == 0 && vxVar3.W == 0.0f))) {
                    if (!vxVar3.J() && z && !vxVar3.J()) {
                        h(i3, vxVar, wzVar, vxVar3);
                    }
                }
            }
        }
        vw L3 = vxVar.L(6);
        if (L3.a != null && L3.c) {
            int a6 = L3.a();
            Iterator it3 = L3.a.iterator();
            while (it3.hasNext()) {
                vw vwVar14 = (vw) it3.next();
                vx vxVar4 = vwVar14.d;
                int i4 = i + 1;
                boolean a7 = a(vxVar4);
                if (vxVar4.K() && a7) {
                    vy.X(vxVar4, wzVar, new wf());
                }
                if (vxVar4.O() != 3 || a7) {
                    if (!vxVar4.K() && vwVar14 == vxVar4.N) {
                        int b6 = vwVar14.b() + a6;
                        if (vxVar4.F) {
                            int i5 = b6 - vxVar4.aa;
                            int i6 = vxVar4.V;
                            vxVar4.Z = i5;
                            vxVar4.K.e(i5);
                            vxVar4.M.e(i5 + i6);
                            vxVar4.N.e(b6);
                            vxVar4.m = true;
                        }
                        c(i4, vxVar4, wzVar);
                    }
                }
            }
        }
        vxVar.o = true;
    }

    public static void d(vu vuVar, wz wzVar, int i, boolean z) {
        if (vuVar.c()) {
            if (i == 0) {
                b(1, vuVar, wzVar, z);
            } else {
                c(1, vuVar, wzVar);
            }
        }
    }

    private static void e(int i, wz wzVar, vx vxVar, boolean z) {
        float f = vxVar.ad;
        int a2 = vxVar.J.e.a();
        int a3 = vxVar.L.e.a();
        int b2 = vxVar.J.b() + a2;
        int b3 = a3 - vxVar.L.b();
        if (a2 == a3) {
            b3 = a3;
        }
        if (a2 == a3) {
            b2 = a2;
        }
        if (a2 == a3) {
            f = 0.5f;
        }
        int j = vxVar.j();
        int i2 = (b3 - b2) - j;
        if (b2 > b3) {
            i2 = (b2 - b3) - j;
        }
        int i3 = (i2 > 0 ? (int) ((f * i2) + 0.5f) : (int) (f * i2)) + b2;
        int i4 = i3 + j;
        if (b2 > b3) {
            i4 = i3 - j;
        }
        vxVar.w(i3, i4);
        b(i + 1, vxVar, wzVar, z);
    }

    private static void f(int i, vx vxVar, wz wzVar, vx vxVar2, boolean z) {
        float f = vxVar2.ad;
        int a2 = vxVar2.J.e.a() + vxVar2.J.b();
        int a3 = vxVar2.L.e.a() - vxVar2.L.b();
        if (a3 >= a2) {
            int j = vxVar2.j();
            if (vxVar2.ag != 8) {
                int i2 = vxVar2.s;
                if (i2 == 2) {
                    j = (int) (vxVar2.ad * 0.5f * (vxVar instanceof vy ? vxVar.j() : vxVar.T.j()));
                } else if (i2 == 0) {
                    j = a3 - a2;
                }
                j = Math.max(vxVar2.v, j);
                int i3 = vxVar2.w;
                if (i3 > 0) {
                    j = Math.min(i3, j);
                }
            }
            int i4 = a2 + ((int) ((f * ((a3 - a2) - j)) + 0.5f));
            vxVar2.w(i4, j + i4);
            b(i + 1, vxVar2, wzVar, z);
        }
    }

    private static void g(int i, wz wzVar, vx vxVar) {
        float f = vxVar.ae;
        int a2 = vxVar.K.e.a();
        int a3 = vxVar.M.e.a();
        int b2 = vxVar.K.b() + a2;
        int b3 = a3 - vxVar.M.b();
        if (a2 == a3) {
            b3 = a3;
        }
        if (a2 == a3) {
            b2 = a2;
        }
        if (a2 == a3) {
            f = 0.5f;
        }
        int h = vxVar.h();
        int i2 = (b3 - b2) - h;
        if (b2 > b3) {
            i2 = (b2 - b3) - h;
        }
        int i3 = i2 > 0 ? (int) ((f * i2) + 0.5f) : (int) (f * i2);
        int i4 = b2 + i3;
        int i5 = i4 + h;
        if (b2 > b3) {
            i4 = b2 - i3;
            i5 = i4 - h;
        }
        vxVar.x(i4, i5);
        c(i + 1, vxVar, wzVar);
    }

    private static void h(int i, vx vxVar, wz wzVar, vx vxVar2) {
        float f = vxVar2.ae;
        int a2 = vxVar2.K.e.a() + vxVar2.K.b();
        int a3 = vxVar2.M.e.a() - vxVar2.M.b();
        if (a3 >= a2) {
            int h = vxVar2.h();
            if (vxVar2.ag != 8) {
                int i2 = vxVar2.t;
                if (i2 == 2) {
                    h = (int) (f * 0.5f * (vxVar instanceof vy ? vxVar.h() : vxVar.T.h()));
                } else if (i2 == 0) {
                    h = a3 - a2;
                }
                h = Math.max(vxVar2.y, h);
                int i3 = vxVar2.z;
                if (i3 > 0) {
                    h = Math.min(i3, h);
                }
            }
            int i4 = a2 + ((int) ((f * ((a3 - a2) - h)) + 0.5f));
            vxVar2.x(i4, h + i4);
            c(i + 1, vxVar2, wzVar);
        }
    }
}
