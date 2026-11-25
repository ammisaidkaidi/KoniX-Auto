package defpackage;

import java.util.AbstractMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableSortedMapValueList extends ImmutableList {
    final /* synthetic */ ImmutableSortedMapKeySet a;

    public ImmutableSortedMapValueList(ImmutableSortedMapKeySet cqmVar) {
        this.a = cqmVar;
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return true;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return new AbstractMap.SimpleImmutableEntry(this.a.a.a.d.get(NavInstructionTypeEnum), this.a.a.b.get(NavInstructionTypeEnum));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.a.size();
    }
}
