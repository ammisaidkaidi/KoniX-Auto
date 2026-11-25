package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ImmutableSortedSet extends ImmutableSortedSetBase implements NavigableSet, csq {
    final transient Comparator a;
    transient ImmutableSortedSet b;

    public ImmutableSortedSet(Comparator comparator) {
        this.a = comparator;
    }

    static RegularImmutableSortedSet B(Comparator comparator) {
        return ReverseOrdering.a.equals(comparator) ? csg.c : new RegularImmutableSortedSet(ImmutableList.p(), comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public abstract ImmutableSortedSet A(Object obj, boolean z);

    @Override // java.util.NavigableSet
    /* renamed from: C */
    public abstract UnmodifiableIterator descendingIterator();

    @Override // java.util.NavigableSet
    public Object ceiling(Object obj) {
        return GuavaCollectPreconditionsUtil.K(tailSet(obj, true));
    }

    @Override // java.util.SortedSet, defpackage.SortedIterableInterface
    public final Comparator comparator() {
        return this.a;
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public abstract UnmodifiableIterator listIterator();

    @Override // java.util.SortedSet
    public Object first() {
        return listIterator().next();
    }

    @Override // java.util.NavigableSet
    public Object floor(Object obj) {
        return GuavaCollectPreconditionsUtil.H(headSet(obj, true).descendingIterator());
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    public Object higher(Object obj) {
        return GuavaCollectPreconditionsUtil.K(tailSet(obj, false));
    }

    @Override // java.util.SortedSet
    public Object last() {
        return descendingIterator().next();
    }

    @Override // java.util.NavigableSet
    public Object lower(Object obj) {
        return GuavaCollectPreconditionsUtil.H(headSet(obj, false).descendingIterator());
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final Object pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @Deprecated
    public final Object pollLast() {
        throw new UnsupportedOperationException();
    }

    final int s(Object obj, Object obj2) {
        return this.a.compare(obj, obj2);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    public abstract ImmutableSortedSet t();

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedSet descendingSet() {
        ImmutableSortedSet crhVar = this.b;
        if (crhVar != null) {
            return crhVar;
        }
        ImmutableSortedSet t = t();
        this.b = t;
        t.b = this;
        return t;
    }

    @Override // java.util.NavigableSet
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedSet headSet(Object obj, boolean z) {
        obj.getClass();
        return w(obj, z);
    }

    public abstract ImmutableSortedSet w(Object obj, boolean z);

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection
    Object writeReplace() {
        return new ImmutableSortedSetSerializedForm(this.a, toArray());
    }

    @Override // java.util.NavigableSet
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        ex.l(this.a.compare(obj, obj2) <= 0);
        return y(obj, z, obj2, z2);
    }

    public abstract ImmutableSortedSet y(Object obj, boolean z, Object obj2, boolean z2);

    @Override // java.util.NavigableSet
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedSet tailSet(Object obj, boolean z) {
        obj.getClass();
        return A(obj, z);
    }
}
