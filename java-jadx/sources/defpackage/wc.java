package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class wc {
    static final boolean[] a = new boolean[3];

    static void a(vy vyVar, vn vnVar, vx vxVar) {
        vxVar.p = -1;
        vxVar.q = -1;
        if (vyVar.ap[0] != 2 && vxVar.ap[0] == 4) {
            int i = vxVar.J.f;
            int j = vyVar.j() - vxVar.L.f;
            vw vwVar = vxVar.J;
            vwVar.h = vnVar.b(vwVar);
            vw vwVar2 = vxVar.L;
            vwVar2.h = vnVar.b(vwVar2);
            vnVar.f(vxVar.J.h, i);
            vnVar.f(vxVar.L.h, j);
            vxVar.p = 2;
            vxVar.Y = i;
            int i2 = j - i;
            vxVar.U = i2;
            int i3 = vxVar.ab;
            if (i2 < i3) {
                vxVar.U = i3;
            }
        }
        if (vyVar.ap[1] == 2 || vxVar.ap[1] != 4) {
            return;
        }
        int i4 = vxVar.K.f;
        int h = vyVar.h() - vxVar.M.f;
        vw vwVar3 = vxVar.K;
        vwVar3.h = vnVar.b(vwVar3);
        vw vwVar4 = vxVar.M;
        vwVar4.h = vnVar.b(vwVar4);
        vnVar.f(vxVar.K.h, i4);
        vnVar.f(vxVar.M.h, h);
        if (vxVar.aa > 0 || vxVar.ag == 8) {
            vw vwVar5 = vxVar.N;
            vwVar5.h = vnVar.b(vwVar5);
            vnVar.f(vxVar.N.h, vxVar.aa + i4);
        }
        vxVar.q = 2;
        vxVar.Z = i4;
        int i5 = h - i4;
        vxVar.V = i5;
        int i6 = vxVar.ac;
        if (i5 < i6) {
            vxVar.V = i6;
        }
    }

    public static final boolean b(int i, int i2) {
        return (i & i2) == i2;
    }
}
