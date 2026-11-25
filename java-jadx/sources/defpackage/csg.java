package defpackage;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class csg extends crh {
    static final csg c = new csg(cqh.p(), crs.a);
    final transient cqh d;

    public csg(cqh cqhVar, Comparator comparator) {
        super(comparator);
        this.d = cqhVar;
    }

    @Override // defpackage.crh
    public final crh A(Object obj, boolean z) {
        return F(E(obj, z), size());
    }

    @Override // defpackage.crh, java.util.NavigableSet
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public final cst descendingIterator() {
        return this.d.h().iterator();
    }

    final int D(Object obj, boolean z) {
        cqh cqhVar = this.d;
        obj.getClass();
        int binarySearch = Collections.binarySearch(cqhVar, obj, ((crh) this).a);
        return binarySearch >= 0 ? z ? binarySearch + 1 : binarySearch : binarySearch ^ (-1);
    }

    final int E(Object obj, boolean z) {
        cqh cqhVar = this.d;
        obj.getClass();
        int binarySearch = Collections.binarySearch(cqhVar, obj, ((crh) this).a);
        return binarySearch >= 0 ? z ? binarySearch : binarySearch + 1 : binarySearch ^ (-1);
    }

    final csg F(int i, int i2) {
        if (i == 0) {
            if (i2 == size()) {
                return this;
            }
            i = 0;
        }
        return i < i2 ? new csg(this.d.subList(i, i2), this.a) : B(this.a);
    }

    @Override // defpackage.cqa
    public final int a(Object[] objArr, int i) {
        return this.d.a(objArr, i);
    }

    @Override // defpackage.cqa
    public final int b() {
        return this.d.b();
    }

    @Override // defpackage.cqa
    public final int c() {
        return this.d.c();
    }

    @Override // defpackage.crh, java.util.NavigableSet
    public final Object ceiling(Object obj) {
        int E = E(obj, true);
        if (E == size()) {
            return null;
        }
        return this.d.get(E);
    }

    @Override // defpackage.cqa, java.util.AbstractCollection, java.util.Collection
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
        if (collection instanceof crr) {
            collection = ((crr) collection).a();
        }
        if (!cvs.g(((crh) this).a, collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        cst listIterator = listIterator();
        Iterator it = collection.iterator();
        if (!listIterator.hasNext()) {
            return false;
        }
        Object next = it.next();
        Object next2 = listIterator.next();
        while (true) {
            try {
                int s = s(next2, next);
                if (s < 0) {
                    if (!listIterator.hasNext()) {
                        return false;
                    }
                    next2 = listIterator.next();
                } else {
                    if (s != 0) {
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

    @Override // defpackage.cqw, defpackage.cqa
    public final cqh d() {
        return this.d;
    }

    @Override // defpackage.crh, defpackage.cqw, defpackage.cqa, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public final cst listIterator() {
        return this.d.iterator();
    }

    @Override // defpackage.cqw, java.util.Collection, java.util.Set
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
        if (!cvs.g(this.a, set)) {
            return containsAll(set);
        }
        Iterator it = set.iterator();
        try {
            cst listIterator = listIterator();
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

    @Override // defpackage.cqa
    public final boolean f() {
        return this.d.f();
    }

    @Override // defpackage.crh, java.util.SortedSet
    public final Object first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.d.get(0);
    }

    @Override // defpackage.crh, java.util.NavigableSet
    public final Object floor(Object obj) {
        int D = D(obj, true) - 1;
        if (D == -1) {
            return null;
        }
        return this.d.get(D);
    }

    @Override // defpackage.cqa
    public final Object[] g() {
        return this.d.g();
    }

    @Override // defpackage.crh, java.util.NavigableSet
    public final Object higher(Object obj) {
        int E = E(obj, false);
        if (E == size()) {
            return null;
        }
        return this.d.get(E);
    }

    @Override // defpackage.crh, java.util.SortedSet
    public final Object last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.d.get(size() - 1);
    }

    @Override // defpackage.crh, java.util.NavigableSet
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

    @Override // defpackage.crh
    public final crh t() {
        Comparator reverseOrder = Collections.reverseOrder(this.a);
        return isEmpty() ? B(reverseOrder) : new csg(this.d.h(), reverseOrder);
    }

    @Override // defpackage.crh
    public final crh w(Object obj, boolean z) {
        return F(0, D(obj, z));
    }

    @Override // defpackage.crh
    public final crh y(Object obj, boolean z, Object obj2, boolean z2) {
        return A(obj, z).w(obj2, z2);
    }
}
