package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Comparator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class crh extends cri implements NavigableSet, csq {
    final transient Comparator a;
    transient crh b;

    public crh(Comparator comparator) {
        this.a = comparator;
    }

    static csg B(Comparator comparator) {
        return crs.a.equals(comparator) ? csg.c : new csg(cqh.p(), comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public abstract crh A(Object obj, boolean z);

    @Override // java.util.NavigableSet
    /* renamed from: C */
    public abstract cst descendingIterator();

    @Override // java.util.NavigableSet
    public Object ceiling(Object obj) {
        return fv.K(tailSet(obj, true));
    }

    @Override // java.util.SortedSet, defpackage.csq
    public final Comparator comparator() {
        return this.a;
    }

    @Override // defpackage.cqw, defpackage.cqa, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: e */
    public abstract cst listIterator();

    @Override // java.util.SortedSet
    public Object first() {
        return listIterator().next();
    }

    @Override // java.util.NavigableSet
    public Object floor(Object obj) {
        return fv.H(headSet(obj, true).descendingIterator());
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    public Object higher(Object obj) {
        return fv.K(tailSet(obj, false));
    }

    @Override // java.util.SortedSet
    public Object last() {
        return descendingIterator().next();
    }

    @Override // java.util.NavigableSet
    public Object lower(Object obj) {
        return fv.H(headSet(obj, false).descendingIterator());
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

    public abstract crh t();

    @Override // java.util.NavigableSet, java.util.SortedSet
    public final /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // java.util.NavigableSet
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final crh descendingSet() {
        crh crhVar = this.b;
        if (crhVar != null) {
            return crhVar;
        }
        crh t = t();
        this.b = t;
        t.b = this;
        return t;
    }

    @Override // java.util.NavigableSet
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final crh headSet(Object obj, boolean z) {
        obj.getClass();
        return w(obj, z);
    }

    public abstract crh w(Object obj, boolean z);

    @Override // defpackage.cqw, defpackage.cqa
    Object writeReplace() {
        return new crg(this.a, toArray());
    }

    @Override // java.util.NavigableSet
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final crh subSet(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        ex.l(this.a.compare(obj, obj2) <= 0);
        return y(obj, z, obj2, z2);
    }

    public abstract crh y(Object obj, boolean z, Object obj2, boolean z2);

    @Override // java.util.NavigableSet
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final crh tailSet(Object obj, boolean z) {
        obj.getClass();
        return A(obj, z);
    }
}
