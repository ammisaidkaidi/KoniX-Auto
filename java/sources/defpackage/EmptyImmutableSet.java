package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EmptyImmutableSet extends ImmutableSet {
    final transient Object a;

    public EmptyImmutableSet(Object obj) {
        obj.getClass();
        this.a = obj;
    }

    @Override // defpackage.ImmutableCollection
    public final int a(Object[] objArr, int i) {
        objArr[i] = this.a;
        return i + 1;
    }

    @Override // defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.equals(obj);
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection
    public final ImmutableList d() {
        return ImmutableList.q(this.a);
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final UnmodifiableIterator listIterator() {
        return new ArrayIterator(this.a);
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return false;
    }

    @Override // defpackage.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        String obj = this.a.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        StaggeredGridLayoutParams.append('[');
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append(']');
        return StaggeredGridLayoutParams.toString();
    }
}
