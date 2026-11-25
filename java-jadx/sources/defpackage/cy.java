package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cy {
    public final ArrayList a = new ArrayList();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public ct d;

    final br a(String str) {
        cx cxVar = (cx) this.b.get(str);
        if (cxVar != null) {
            return cxVar.c;
        }
        return null;
    }

    final br b(String str) {
        for (cx cxVar : this.b.values()) {
            if (cxVar != null) {
                br brVar = cxVar.c;
                if (!str.equals(brVar.m)) {
                    brVar = brVar.C.a.b(str);
                }
                if (brVar != null) {
                    return brVar;
                }
            }
        }
        return null;
    }

    final cv c(String str, cv cvVar) {
        return cvVar != null ? (cv) this.c.put(str, cvVar) : (cv) this.c.remove(str);
    }

    final cx d(String str) {
        return (cx) this.b.get(str);
    }

    final List e() {
        ArrayList arrayList = new ArrayList();
        for (cx cxVar : this.b.values()) {
            if (cxVar != null) {
                arrayList.add(cxVar);
            }
        }
        return arrayList;
    }

    final List f() {
        ArrayList arrayList;
        if (this.a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.a) {
            arrayList = new ArrayList(this.a);
        }
        return arrayList;
    }

    final void g(br brVar) {
        if (this.a.contains(brVar)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Fragment already added: ");
            sb.append(brVar);
            throw new IllegalStateException("Fragment already added: ".concat(String.valueOf(brVar)));
        }
        synchronized (this.a) {
            this.a.add(brVar);
        }
        brVar.s = true;
    }

    final void h() {
        this.b.values().removeAll(Collections.singleton(null));
    }

    final void i(cx cxVar) {
        br brVar = cxVar.c;
        if (l(brVar.m)) {
            return;
        }
        this.b.put(brVar.m, cxVar);
        boolean z = brVar.K;
        if (cr.R(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Added fragment to active set ");
            sb.append(brVar);
        }
    }

    final void j(cx cxVar) {
        br brVar = cxVar.c;
        if (brVar.J) {
            this.d.d(brVar);
        }
        if (((cx) this.b.put(brVar.m, null)) != null && cr.R(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Removed fragment from active set ");
            sb.append(brVar);
        }
    }

    final void k(br brVar) {
        synchronized (this.a) {
            this.a.remove(brVar);
        }
        brVar.s = false;
    }

    final boolean l(String str) {
        return this.b.get(str) != null;
    }
}
