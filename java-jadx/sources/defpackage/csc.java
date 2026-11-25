package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class csc extends cqw {
    private final transient cqk a;
    private final transient cqh b;

    public csc(cqk cqkVar, cqh cqhVar) {
        this.a = cqkVar;
        this.b = cqhVar;
    }

    @Override // defpackage.cqa
    public final int a(Object[] objArr, int i) {
        return this.b.a(objArr, i);
    }

    @Override // defpackage.cqa, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.get(obj) != null;
    }

    @Override // defpackage.cqw, defpackage.cqa
    public final cqh d() {
        return this.b;
    }

    @Override // defpackage.cqw, defpackage.cqa, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final cst listIterator() {
        return this.b.iterator();
    }

    @Override // defpackage.cqa
    public final boolean f() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.size();
    }
}
