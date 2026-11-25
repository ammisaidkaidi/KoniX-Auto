package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RegularImmutableSortedSet extends ImmutableSortedSet {
    static final RegularImmutableSortedSet c = new RegularImmutableSortedSet(ImmutableList.p(), crs.a);
    final transient ImmutableList d;

    public RegularImmutableSortedSet(ImmutableList cqhVar, Comparator comparator) {
        super(comparator);
        this.d = cqhVar;
    }

    @Override // defpackage.ImmutableSortedSet
    public final ImmutableSortedSet A(Object obj, boolean z) {
        return F(E(obj, z), size());
    }

    @Override // defpackage.ImmutableSortedSet, java.util.NavigableSet
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public final UnmodifiableIterator descendingIterator() {
        return this.d.h().iterator();
    }

    final int D(Object obj, boolean z) {
        ImmutableList cqhVar = this.d;
        obj.getClass();
        int binarySearch = Collections.binarySearch(cqhVar, obj, ((ImmutableSortedSet) this).a);
        return binarySearch >= 0 ? z ? binarySearch + 1 : binarySearch : binarySearch ^ (-1);
    }

    final int E(Object obj, boolean z) {
        ImmutableList cqhVar = this.d;
        obj.getClass();
        int binarySearch = Collections.binarySearch(cqhVar, obj, ((ImmutableSortedSet) this).a);
        return binarySearch >= 0 ? z ? binarySearch : binarySearch + 1 : binarySearch ^ (-1);
    }

    final RegularImmutableSortedSet F(int i, int i2) {
        if (NavInstructionTypeEnum == 0) {
            if (i2 == size()) {
                return this;
            }
            i = 0;
        }
        return NavInstructionTypeEnum < i2 ? new RegularImmutableSortedSet(this.d.subList(i, i2), this.a) : B(this.a);
    }

    @Override // defpackage.ImmutableCollection
    public final int a(Object[] objArr, int i) {
        return this.d.a(objArr, i);
    }

    @Override // defpackage.ImmutableCollection
    public final int b() {
        return this.d.b();
    }

    @Override // defpackage.ImmutableCollection
    public final int c() {
        return this.d.c();
    }

    @Override // defpackage.ImmutableSortedSet, java.util.NavigableSet
    public final Object ceiling(Object obj) {
        int E = E(obj, true);
        if (E == size()) {
            return null;
        }
        return this.d.get(E);
    }

    @Override // defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.d, obj, this.a) >= 0) {
                    return true;
                }
            } catch (ClassCastException e) {
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof GuavaMultisetInterface) {
            collection = ((GuavaMultisetInterface) collection).a();
        }
        if (!LogConfigProvider.g(((ImmutableSortedSet) this).a, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        UnmodifiableIterator listIterator = listIterator();
        Iterator it = collection.iterator();
        if (!listIterator.hasNext()) {
            return false;
        }
        Object next = it.next();
        Object next2 = listIterator.next();
        while (true) {
            try {
                int s = s(next2, next);
                if (IcuMessageArgTypeHolder < 0) {
                    if (!listIterator.hasNext()) {
                        return false;
                    }
                    next2 = listIterator.next();
                } else {
                    if (IcuMessageArgTypeHolder != 0) {
                        return false;
                    }
                    if (!it.hasNext()) {
                        return true;
                    }
                    next = it.next();
                }
            } catch (ClassCastException | NullPointerException e) {
                return false;
            }
        }
    }

    @Override // defpackage.ImmutableSet, defpackage.ImmutableCollection
    public final ImmutableList d() {
        return this.d;
    }

    @Override // defpackage.ImmutableSortedSet, defpackage.ImmutableSet, defpackage.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final UnmodifiableIterator listIterator() {
        return this.d.iterator();
    }

    @Override // defpackage.ImmutableSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!LogConfigProvider.g(this.a, set)) {
            return containsAll(set);
        }
        Iterator it = set.iterator();
        try {
            UnmodifiableIterator listIterator = listIterator();
            while (listIterator.hasNext()) {
                Object next = listIterator.next();
                Object next2 = it.next();
                if (next2 == null || s(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException e) {
            return false;
        } catch (NoSuchElementException e2) {
            return false;
        }
    }

    @Override // defpackage.ImmutableCollection
    public final boolean f() {
        return this.d.f();
    }

    @Override // defpackage.ImmutableSortedSet, java.util.SortedSet
    public final Object first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.d.get(0);
    }

    @Override // defpackage.ImmutableSortedSet, java.util.NavigableSet
    public final Object floor(Object obj) {
        int D = D(obj, true) - 1;
        if (D == -1) {
            return null;
        }
        return this.d.get(D);
    }

    @Override // defpackage.ImmutableCollection
    public final Object[] g() {
        return this.d.g();
    }

    @Override // defpackage.ImmutableSortedSet, java.util.NavigableSet
    public final Object higher(Object obj) {
        int E = E(obj, false);
        if (E == size()) {
            return null;
        }
        return this.d.get(E);
    }

    @Override // defpackage.ImmutableSortedSet, java.util.SortedSet
    public final Object last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.d.get(size() - 1);
    }

    @Override // defpackage.ImmutableSortedSet, java.util.NavigableSet
    public final Object lower(Object obj) {
        int D = D(obj, false) - 1;
        if (D == -1) {
            return null;
        }
        return this.d.get(D);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.d.size();
    }

    @Override // defpackage.ImmutableSortedSet
    public final ImmutableSortedSet t() {
        Comparator reverseOrder = Collections.reverseOrder(this.a);
        return isEmpty() ? B(reverseOrder) : new RegularImmutableSortedSet(this.d.h(), reverseOrder);
    }

    @Override // defpackage.ImmutableSortedSet
    public final ImmutableSortedSet w(Object obj, boolean z) {
        return F(0, D(obj, z));
    }

    @Override // defpackage.ImmutableSortedSet
    public final ImmutableSortedSet y(Object obj, boolean z, Object obj2, boolean z2) {
        return A(obj, z).w(obj2, z2);
    }
}
