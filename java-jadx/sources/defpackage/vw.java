package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class vw {
    public int b;
    public boolean c;
    public final vx d;
    public vw e;
    public vs h;
    public final int i;
    public HashSet a = null;
    public int f = 0;
    int g = Integer.MIN_VALUE;

    public vw(vx vxVar, int i) {
        this.d = vxVar;
        this.i = i;
    }

    public final int a() {
        if (this.c) {
            return this.b;
        }
        return 0;
    }

    public final int b() {
        vw vwVar;
        if (this.d.ag == 8) {
            return 0;
        }
        int i = this.g;
        return (i == Integer.MIN_VALUE || (vwVar = this.e) == null || vwVar.d.ag != 8) ? this.f : i;
    }

    public final void c(int i, ArrayList arrayList, ws wsVar) {
        HashSet hashSet = this.a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                io.d(((vw) it.next()).d, i, arrayList, wsVar);
            }
        }
    }

    public final void d() {
        HashSet hashSet;
        vw vwVar = this.e;
        if (vwVar != null && (hashSet = vwVar.a) != null) {
            hashSet.remove(this);
            if (this.e.a.size() == 0) {
                this.e.a = null;
            }
        }
        this.a = null;
        this.e = null;
        this.f = 0;
        this.g = Integer.MIN_VALUE;
        this.c = false;
        this.b = 0;
    }

    public final void e(int i) {
        this.b = i;
        this.c = true;
    }

    public final boolean f() {
        vw vwVar;
        HashSet hashSet = this.a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            vw vwVar2 = (vw) it.next();
            switch (vwVar2.i - 1) {
                case 1:
                    vwVar = vwVar2.d.L;
                    break;
                case 2:
                    vwVar = vwVar2.d.M;
                    break;
                case 3:
                    vwVar = vwVar2.d.J;
                    break;
                case 4:
                    vwVar = vwVar2.d.K;
                    break;
                default:
                    vwVar = null;
                    break;
            }
            if (vwVar.h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean g() {
        HashSet hashSet = this.a;
        return hashSet != null && hashSet.size() > 0;
    }

    public final boolean h() {
        return this.e != null;
    }

    public final void i() {
        vs vsVar = this.h;
        if (vsVar == null) {
            this.h = new vs(1);
        } else {
            vsVar.c();
        }
    }

    public final void j(vw vwVar, int i, int i2) {
        if (vwVar == null) {
            d();
            return;
        }
        this.e = vwVar;
        if (vwVar.a == null) {
            vwVar.a = new HashSet();
        }
        HashSet hashSet = this.e.a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.f = i;
        this.g = i2;
    }

    public final String toString() {
        String str;
        String str2 = this.d.ah;
        switch (this.i) {
            case 2:
                str = "LEFT";
                break;
            case 3:
                str = "TOP";
                break;
            case 4:
                str = "RIGHT";
                break;
            case 5:
                str = "BOTTOM";
                break;
            case 6:
                str = "BASELINE";
                break;
            case 7:
                str = "CENTER";
                break;
            case 8:
                str = "CENTER_X";
                break;
            default:
                str = "CENTER_Y";
                break;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + str.length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }
}
