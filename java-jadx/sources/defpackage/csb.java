package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class csb extends cqw {
    public final transient Object[] a;
    public final transient int b;
    public final transient int c;
    private final transient cqk d;

    public csb(cqk cqkVar, Object[] objArr, int i, int i2) {
        this.d = cqkVar;
        this.a = objArr;
        this.b = i;
        this.c = i2;
    }

    @Override // defpackage.cqa
    public final int a(Object[] objArr, int i) {
        return d().a(objArr, i);
    }

    @Override // defpackage.cqa, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.d.get(key))) {
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
        return true;
    }

    @Override // defpackage.cqw
    public final cqh i() {
        return new csa(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.c;
    }
}
