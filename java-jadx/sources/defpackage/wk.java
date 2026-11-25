package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class wk implements wi {
    final wt d;
    int e;
    public int f;
    public wi a = null;
    public boolean b = false;
    public boolean c = false;
    int l = 1;
    int g = 1;
    wl h = null;
    public boolean i = false;
    final List j = new ArrayList();
    final List k = new ArrayList();

    public wk(wt wtVar) {
        this.d = wtVar;
    }

    public final void a(wi wiVar) {
        this.j.add(wiVar);
        if (this.i) {
            wiVar.f();
        }
    }

    public final void b() {
        this.k.clear();
        this.j.clear();
        this.i = false;
        this.f = 0;
        this.c = false;
        this.b = false;
    }

    public void c(int i) {
        if (this.i) {
            return;
        }
        this.i = true;
        this.f = i;
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            ((wi) it.next()).f();
        }
    }

    @Override // defpackage.wi
    public final void f() {
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            if (!((wk) it.next()).i) {
                return;
            }
        }
        this.c = true;
        wi wiVar = this.a;
        if (wiVar != null) {
            wiVar.f();
        }
        if (this.b) {
            this.d.f();
            return;
        }
        wk wkVar = null;
        int i = 0;
        for (wk wkVar2 : this.k) {
            if (!(wkVar2 instanceof wl)) {
                i++;
                wkVar = wkVar2;
            }
        }
        if (wkVar != null && i == 1 && wkVar.i) {
            wl wlVar = this.h;
            if (wlVar != null) {
                if (!wlVar.i) {
                    return;
                } else {
                    this.e = this.g * wlVar.f;
                }
            }
            c(wkVar.f + this.e);
        }
        wi wiVar2 = this.a;
        if (wiVar2 != null) {
            wiVar2.f();
        }
    }

    public final String toString() {
        String str;
        String str2 = this.d.d.ah;
        switch (this.l) {
            case 1:
                str = "UNKNOWN";
                break;
            case 2:
                str = "HORIZONTAL_DIMENSION";
                break;
            case 3:
                str = "VERTICAL_DIMENSION";
                break;
            case 4:
                str = "LEFT";
                break;
            case 5:
                str = "RIGHT";
                break;
            case 6:
                str = "TOP";
                break;
            case 7:
                str = "BOTTOM";
                break;
            case 8:
                str = "BASELINE";
                break;
            default:
                str = "null";
                break;
        }
        String obj = (this.i ? Integer.valueOf(this.f) : "unresolved").toString();
        int size = this.k.size();
        int size2 = this.j.size();
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 33 + str.length() + obj.length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        sb.append("(");
        sb.append(obj);
        sb.append(") <t=");
        sb.append(size);
        sb.append(":d=");
        sb.append(size2);
        sb.append(">");
        return sb.toString();
    }
}
