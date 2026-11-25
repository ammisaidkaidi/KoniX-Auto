package defpackage;

import j$.util.Map;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class crd extends cre implements NavigableMap, Map {
    private static final crd c = new crd(crh.B(crs.a), cqh.p());
    private static final long serialVersionUID = 0;
    public final transient csg a;
    public final transient cqh b;
    private transient crd d;

    public crd(csg csgVar, cqh cqhVar) {
        this(csgVar, cqhVar, null);
    }

    public crd(csg csgVar, cqh cqhVar, crd crdVar) {
        this.a = csgVar;
        this.b = cqhVar;
        this.d = crdVar;
    }

    static crd a(Comparator comparator) {
        return crs.a.equals(comparator) ? c : new crd(crh.B(comparator), cqh.p());
    }

    private final crd o(int i, int i2) {
        if (i == 0) {
            if (i2 == size()) {
                return this;
            }
            i = 0;
        }
        return i == i2 ? a(comparator()) : new crd(this.a.F(i, i2), this.b.subList(i, i2));
    }

    @Override // defpackage.cqk
    public final cqa b() {
        throw new AssertionError("should never be called");
    }

    @Override // defpackage.cqk
    /* renamed from: c */
    public final cqa values() {
        return this.b;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return fv.D(ceilingEntry(obj));
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return ((crh) this.a).a;
    }

    @Override // java.util.NavigableMap
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final crd headMap(Object obj, boolean z) {
        csg csgVar = this.a;
        obj.getClass();
        return o(0, csgVar.D(obj, z));
    }

    @Override // java.util.NavigableMap
    public final /* bridge */ /* synthetic */ NavigableSet descendingKeySet() {
        return this.a.descendingSet();
    }

    @Override // java.util.NavigableMap
    public final /* bridge */ /* synthetic */ NavigableMap descendingMap() {
        crd crdVar = this.d;
        if (crdVar != null) {
            return crdVar;
        }
        if (!isEmpty()) {
            return new crd((csg) this.a.descendingSet(), this.b.h(), this);
        }
        Comparator comparator = comparator();
        return a((comparator instanceof crt ? (crt) comparator : new cpl(comparator)).a());
    }

    @Override // defpackage.cqk, java.util.Map, j$.util.Map
    public final /* bridge */ /* synthetic */ Set entrySet() {
        return entrySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) entrySet().d().get(0);
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return this.a.first();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        return headMap(obj, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        return fv.D(floorEntry(obj));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        return tailMap(obj, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        return fv.D(higherEntry(obj));
    }

    @Override // defpackage.cqk
    public final cqw i() {
        return isEmpty() ? csf.a : new cqm(this);
    }

    @Override // defpackage.cqk
    public final cqw j() {
        throw new AssertionError("should never be called");
    }

    @Override // defpackage.cqk, java.util.Map, j$.util.Map
    public final /* synthetic */ Set keySet() {
        return this.a;
    }

    @Override // defpackage.cqk
    /* renamed from: l */
    public final /* synthetic */ cqw keySet() {
        return this.a;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) entrySet().d().get(size() - 1);
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return this.a.last();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        return headMap(obj, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        return fv.D(lowerEntry(obj));
    }

    @Override // java.util.NavigableMap
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final crd subMap(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        ex.p(comparator().compare(obj, obj2) <= 0, "expected fromKey <= toKey but %s > %s", obj, obj2);
        return headMap(obj2, z2).tailMap(obj, z);
    }

    @Override // java.util.NavigableMap
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final crd tailMap(Object obj, boolean z) {
        csg csgVar = this.a;
        obj.getClass();
        return o(csgVar.E(obj, z), size());
    }

    @Override // java.util.NavigableMap
    public final /* synthetic */ NavigableSet navigableKeySet() {
        return this.a;
    }

    @Override // java.util.NavigableMap
    @Deprecated
    public final Map.Entry pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    @Deprecated
    public final Map.Entry pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final int size() {
        return this.b.size();
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // defpackage.cqk, java.util.Map, j$.util.Map
    public final /* synthetic */ Collection values() {
        return this.b;
    }

    @Override // defpackage.cqk
    Object writeReplace() {
        return new crc(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000f, code lost:
    
        if (r4 < 0) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // defpackage.cqk, java.util.Map, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        int i;
        csg csgVar = this.a;
        if (obj == null) {
            i = -1;
        } else {
            try {
                i = Collections.binarySearch(csgVar.d, obj, csgVar.a);
            } catch (ClassCastException e) {
            }
        }
        if (i != -1) {
            return null;
        }
        return this.b.get(i);
        i = -1;
        if (i != -1) {
        }
    }
}
