package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CompactHashMapKeySet extends AbstractSet {
    final /* synthetic */ CompactHashMap a;

    public CompactHashMapKeySet(CompactHashMap cpiVar) {
        this.a = cpiVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        CompactHashMap cpiVar = this.a;
        Map j = cpiVar.j();
        return j != null ? j.keySet().iterator() : new CompactHashMapKeyIterator(cpiVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map j = this.a.j();
        return j != null ? j.keySet().remove(obj) : this.a.f(obj) != cpi.a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.size();
    }
}
