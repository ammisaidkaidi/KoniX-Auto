package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cqm extends cqw {
    final /* synthetic */ crd a;

    public cqm() {
    }

    @Override // defpackage.cqa, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.a.get(entry.getKey());
            if (obj2 != null && obj2.equals(entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.cqw, defpackage.cqa, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final cst listIterator() {
        return d().iterator();
    }

    @Override // defpackage.cqa
    public final boolean f() {
        crd crdVar = this.a;
        return crdVar.a.f() || crdVar.b.f();
    }

    @Override // defpackage.cqw
    public final boolean h() {
        return false;
    }

    @Override // defpackage.cqw, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.cqw
    public final cqh i() {
        return new cra(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.size();
    }

    @Override // defpackage.cqw, defpackage.cqa
    Object writeReplace() {
        return new cql(this.a);
    }

    public cqm(crd crdVar) {
        this.a = crdVar;
    }
}
