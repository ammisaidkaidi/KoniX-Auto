package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cpd extends AbstractSet {
    final /* synthetic */ cpi a;

    public cpd(cpi cpiVar) {
        this.a = cpiVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map j = this.a.j();
        if (j != null) {
            return j.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int d = this.a.d(entry.getKey());
            if (d != -1 && ew.t(this.a.h(d), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return this.a.i();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map j = this.a.j();
        if (j != null) {
            return j.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.a.o()) {
            return false;
        }
        int c = this.a.c();
        int u = ez.u(entry.getKey(), entry.getValue(), c, this.a.g(), this.a.p(), this.a.q(), this.a.r());
        if (u == -1) {
            return false;
        }
        this.a.m(u, c);
        r10.f--;
        this.a.k();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.size();
    }
}
