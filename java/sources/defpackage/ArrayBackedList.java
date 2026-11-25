package defpackage;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ArrayBackedList extends AbstractList implements RandomAccess, Serializable {
    private static final long serialVersionUID = 0;
    final List a;
    final GuavaFunction b;

    public ArrayBackedList(List list, GuavaFunction cnyVar) {
        list.getClass();
        this.a = list;
        this.b = cnyVar;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.b.a(this.a.get(NavInstructionTypeEnum));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new ArrayListListIterator(this, this.a.listIterator(NavInstructionTypeEnum));
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        return this.b.a(this.a.remove(NavInstructionTypeEnum));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.size();
    }
}
