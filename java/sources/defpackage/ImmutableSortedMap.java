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
public final class ImmutableSortedMap extends ImmutableSortedMapBase implements NavigableMap, Map {
    private static final ImmutableSortedMap c = new ImmutableSortedMap(ImmutableSortedSet.B(crs.a), ImmutableList.p());
    private static final long serialVersionUID = 0;
    public final transient RegularImmutableSortedSet a;
    public final transient ImmutableList b;
    private transient ImmutableSortedMap d;

    public ImmutableSortedMap(RegularImmutableSortedSet csgVar, ImmutableList cqhVar) {
        this(csgVar, cqhVar, null);
    }

    public ImmutableSortedMap(RegularImmutableSortedSet csgVar, ImmutableList cqhVar, ImmutableSortedMap crdVar) {
        this.a = csgVar;
        this.b = cqhVar;
        this.d = crdVar;
    }

    static ImmutableSortedMap a(Comparator comparator) {
        return ReverseOrdering.a.equals(comparator) ? c : new ImmutableSortedMap(ImmutableSortedSet.B(comparator), ImmutableList.p());
    }

    private final ImmutableSortedMap o(int i, int i2) {
        if (NavInstructionTypeEnum == 0) {
            if (i2 == size()) {
                return this;
            }
            i = 0;
        }
        return i == i2 ? a(comparator()) : new ImmutableSortedMap(this.a.F(i, i2), this.b.subList(i, i2));
    }

    @Override // defpackage.ImmutableMapBase
    public final ImmutableCollection b() {
        throw new AssertionError("should never be called");
    }

    @Override // defpackage.ImmutableMapBase
    /* renamed from: c */
    public final ImmutableCollection values() {
        return this.b;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        return GuavaCollectPreconditionsUtil.D(ceilingEntry(obj));
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return ((ImmutableSortedSet) this.a).a;
    }

    @Override // java.util.NavigableMap
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedMap headMap(Object obj, boolean z) {
        RegularImmutableSortedSet csgVar = this.a;
        obj.getClass();
        return o(0, csgVar.D(obj, z));
    }

    @Override // java.util.NavigableMap
    public final /* bridge */ /* synthetic */ NavigableSet descendingKeySet() {
        return this.a.descendingSet();
    }

    @Override // java.util.NavigableMap
    public final /* bridge */ /* synthetic */ NavigableMap descendingMap() {
        ImmutableSortedMap crdVar = this.d;
        if (crdVar != null) {
            return crdVar;
        }
        if (!isEmpty()) {
            return new ImmutableSortedMap((RegularImmutableSortedSet) this.a.descendingSet(), this.b.h(), this);
        }
        Comparator comparator = comparator();
        return a((comparator instanceof GuavaOrdering ? (GuavaOrdering) comparator : new NaturalOrdering(comparator)).a());
    }

    @Override // defpackage.ImmutableMapBase, java.util.Map, j$.util.Map
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
        return GuavaCollectPreconditionsUtil.D(floorEntry(obj));
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
        return GuavaCollectPreconditionsUtil.D(higherEntry(obj));
    }

    @Override // defpackage.ImmutableMapBase
    public final ImmutableSet i() {
        return isEmpty() ? csf.a : new ImmutableSortedMapKeySet(this);
    }

    @Override // defpackage.ImmutableMapBase
    public final ImmutableSet j() {
        throw new AssertionError("should never be called");
    }

    @Override // defpackage.ImmutableMapBase, java.util.Map, j$.util.Map
    public final /* synthetic */ Set keySet() {
        return this.a;
    }

    @Override // defpackage.ImmutableMapBase
    /* renamed from: l */
    public final /* synthetic */ ImmutableSet keySet() {
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
        return GuavaCollectPreconditionsUtil.D(lowerEntry(obj));
    }

    @Override // java.util.NavigableMap
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        ex.p(comparator().compare(obj, obj2) <= 0, "expected fromKey <= toKey but %s > %s", obj, obj2);
        return headMap(obj2, z2).tailMap(obj, z);
    }

    @Override // java.util.NavigableMap
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final ImmutableSortedMap tailMap(Object obj, boolean z) {
        RegularImmutableSortedSet csgVar = this.a;
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

    @Override // defpackage.ImmutableMapBase, java.util.Map, j$.util.Map
    public final /* synthetic */ Collection values() {
        return this.b;
    }

    @Override // defpackage.ImmutableMapBase
    Object writeReplace() {
        return new ImmutableBiMapSerializedForm(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000f, code lost:
    
        if (r4 < 0) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // defpackage.ImmutableMapBase, java.util.Map, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        int i;
        RegularImmutableSortedSet csgVar = this.a;
        if (obj == null) {
            i = -1;
        } else {
            try {
                i = Collections.binarySearch(csgVar.d, obj, csgVar.a);
            } catch (ClassCastException e) {
            }
        }
        if (NavInstructionTypeEnum != -1) {
            return null;
        }
        return this.b.get(NavInstructionTypeEnum);
        i = -1;
        if (NavInstructionTypeEnum != -1) {
        }
    }
}
