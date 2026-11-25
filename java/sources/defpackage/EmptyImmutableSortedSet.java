package defpackage;

import java.util.Collection;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EmptyImmutableSortedSet extends ImmutableSet {
    private final transient ImmutableMapBuilderImpl a;

    public EmptyImmutableSortedSet(ImmutableMapBuilderImpl cqzVar) {
        this.a = cqzVar;
    }

    @Override // defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            ImmutableMapBuilderImpl cqzVar = this.a;
            Object key = entry.getKey();
            Object value = entry.getValue();
            Collection collection = (Collection) cqzVar.a().get(key);
            if (collection != null && collection.contains(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final UnmodifiableIterator listIterator() {
        return new ForwardingMapEntryIterator(this.a);
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.c;
    }
}
