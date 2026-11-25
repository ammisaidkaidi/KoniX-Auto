package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ws {
    static int a = 0;
    public int c;
    public int d;
    final ArrayList b = new ArrayList();
    ArrayList e = null;
    private int f = -1;

    public ws(int i) {
        this.c = -1;
        this.d = 0;
        int i2 = a;
        a = i2 + 1;
        this.c = i2;
        this.d = i;
    }

    public final int a(vn vnVar, int i) {
        if (this.b.size() == 0) {
            return 0;
        }
        ArrayList arrayList = this.b;
        vx vxVar = ((vx) arrayList.get(0)).T;
        vnVar.k();
        vxVar.b(vnVar, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((vx) arrayList.get(i2)).b(vnVar, false);
        }
        if (i == 0) {
            vy vyVar = (vy) vxVar;
            if (vyVar.at > 0) {
                hr.c(vyVar, vnVar, arrayList, 0);
            }
        }
        if (i == 1) {
            vy vyVar2 = (vy) vxVar;
            if (vyVar2.au > 0) {
                hr.c(vyVar2, vnVar, arrayList, 1);
            }
        }
        try {
            vnVar.j();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.e = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.e.add(new ir((vx) arrayList.get(i3)));
        }
        if (i == 0) {
            vy vyVar3 = (vy) vxVar;
            int o = vn.o(vyVar3.J);
            int o2 = vn.o(vyVar3.L);
            vnVar.k();
            return o2 - o;
        }
        vy vyVar4 = (vy) vxVar;
        int o3 = vn.o(vyVar4.K);
        int o4 = vn.o(vyVar4.M);
        vnVar.k();
        return o4 - o3;
    }

    public final void b(ArrayList arrayList) {
        int size = this.b.size();
        if (this.f != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                ws wsVar = (ws) arrayList.get(i);
                if (this.f == wsVar.c) {
                    c(this.d, wsVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final void c(int i, ws wsVar) {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            vx vxVar = (vx) arrayList.get(i2);
            wsVar.d(vxVar);
            if (i == 0) {
                vxVar.an = wsVar.c;
            } else {
                vxVar.ao = wsVar.c;
            }
        }
        this.f = wsVar.c;
    }

    public final boolean d(vx vxVar) {
        if (this.b.contains(vxVar)) {
            return false;
        }
        this.b.add(vxVar);
        return true;
    }

    public final String toString() {
        int i = this.d;
        String str = i == 0 ? "Horizontal" : i == 1 ? "Vertical" : "Both";
        int i2 = this.c;
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append(str);
        sb.append(" [");
        sb.append(i2);
        sb.append("] <");
        String sb2 = sb.toString();
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            String str2 = ((vx) arrayList.get(i3)).ah;
            StringBuilder sb3 = new StringBuilder(sb2.length() + 1 + String.valueOf(str2).length());
            sb3.append(sb2);
            sb3.append(" ");
            sb3.append(str2);
            sb2 = sb3.toString();
        }
        return sb2.concat(" >");
    }
}
