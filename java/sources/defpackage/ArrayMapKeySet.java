package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ArrayMapKeySet extends AbstractSet {
    final /* synthetic */ DesugaredArrayMap a;

    public ArrayMapKeySet(DesugaredArrayMap vbVar) {
        this.a = vbVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new ArrayMapMapIterator(this.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.a.j;
    }
}
