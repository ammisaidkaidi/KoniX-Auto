package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cqh extends cqa implements List, RandomAccess {
    private static final csu a = new cqd(crz.a, 0);

    public static cqc j() {
        return new cqc();
    }

    static cqh k(Object[] objArr) {
        return l(objArr, objArr.length);
    }

    static cqh l(Object[] objArr, int i) {
        return i == 0 ? crz.a : new crz(objArr, i);
    }

    public static cqh m(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return n((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return crz.a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return q(next);
        }
        cqc cqcVar = new cqc();
        cqcVar.g(next);
        cqcVar.i(it);
        return cqcVar.f();
    }

    public static cqh n(Collection collection) {
        if (!(collection instanceof cqa)) {
            return w(collection.toArray());
        }
        cqh d = ((cqa) collection).d();
        return d.f() ? k(d.toArray()) : d;
    }

    public static cqh o(Object[] objArr) {
        return objArr.length == 0 ? crz.a : w((Object[]) objArr.clone());
    }

    public static cqh p() {
        return crz.a;
    }

    public static cqh q(Object obj) {
        return w(obj);
    }

    public static cqh r(Object obj, Object obj2) {
        return w(obj, obj2);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static cqh s(Object obj, Object obj2, Object obj3, Object obj4) {
        return w(obj, obj2, obj3, obj4);
    }

    public static cqh t(Comparator comparator, Iterable iterable) {
        Collection collection;
        if (iterable instanceof Collection) {
            collection = (Collection) iterable;
        } else {
            Iterator it = iterable.iterator();
            ArrayList E = fv.E();
            it.getClass();
            while (it.hasNext()) {
                E.add(it.next());
            }
            collection = E;
        }
        Object[] array = collection.toArray();
        fw.p(array);
        Arrays.sort(array, comparator);
        return k(array);
    }

    private static cqh w(Object... objArr) {
        fw.p(objArr);
        return k(objArr);
    }

    @Override // defpackage.cqa
    public int a(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.cqa, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // defpackage.cqa
    @Deprecated
    public final cqh d() {
        return this;
    }

    @Override // defpackage.cqa
    /* renamed from: e */
    public final cst listIterator() {
        return iterator();
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        return fv.G(this, obj);
    }

    public cqh h() {
        return size() <= 1 ? this : new cqe(this);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.List
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public cqh subList(int i, int i2) {
        ex.q(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? crz.a : new cqg(this, i, i3);
    }

    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* renamed from: u, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final csu listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final csu listIterator(int i) {
        ex.w(i, size());
        return isEmpty() ? a : new cqd(this, i);
    }

    @Override // defpackage.cqa
    Object writeReplace() {
        return new cqf(toArray());
    }
}
