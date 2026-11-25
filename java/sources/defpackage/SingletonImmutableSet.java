package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SingletonImmutableSet extends ImmutableSet {
    private final transient ImmutableMapBase a;
    private final transient ImmutableList b;

    public SingletonImmutableSet(ImmutableMapBase cqkVar, ImmutableList cqhVar) {
        this.a = cqkVar;
        this.b = cqhVar;
    }

    @Override // defpackage.ImmutableCollection
    public final int a(Object[] objArr, int i) {
        return this.b.a(objArr, i);
    }

    @Override // defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.get(obj) != null;
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection
    public final ImmutableList d() {
        return this.b;
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final UnmodifiableIterator listIterator() {
        return this.b.iterator();
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.size();
    }
}
