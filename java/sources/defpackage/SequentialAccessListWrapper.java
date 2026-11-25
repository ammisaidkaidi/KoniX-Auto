package defpackage;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SequentialAccessListWrapper extends AbstractSequentialList implements Serializable {
    private static final long serialVersionUID = 0;
    final List a;
    final GuavaFunction b;

    public SequentialAccessListWrapper(List list, GuavaFunction cnyVar) {
        list.getClass();
        this.a = list;
        this.b = cnyVar;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.a.clear();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new SequentialListListIterator(this, this.a.listIterator(NavInstructionTypeEnum));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.size();
    }
}
