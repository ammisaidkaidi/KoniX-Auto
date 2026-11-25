package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableSortedMapKeySet extends ImmutableSet {
    final /* synthetic */ ImmutableSortedMap a;

    public ImmutableSortedMapKeySet() {
    }

    @Override // defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
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

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final UnmodifiableIterator listIterator() {
        return d().iterator();
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        ImmutableSortedMap crdVar = this.a;
        return crdVar.a.f() || crdVar.b.f();
    }

    @Override // defpackage.ImmutableSet
    public final boolean h() {
        return false;
    }

    @Override // defpackage.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.ImmutableSet
    public final ImmutableList i() {
        return new ImmutableSortedMapValueList(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.size();
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection
    Object writeReplace() {
        return new ImmutableEntrySerializedForm(this.a);
    }

    public ImmutableSortedMapKeySet(ImmutableSortedMap crdVar) {
        this.a = crdVar;
    }
}
