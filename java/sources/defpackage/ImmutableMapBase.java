package defpackage;

import j$.util.Map;
import j$.util.function.BiConsumer;
import j$.util.function.BiFunction;
import j$.util.function.Function;
import java.io.Serializable;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ImmutableMapBase implements Map, Serializable, j$.util.Map {
    private transient ImmutableSet a;
    private transient ImmutableSet b;
    private transient ImmutableCollection c;

    public static ImmutableMapBuilder e() {
        return new ImmutableMapBuilder();
    }

    public static ImmutableMapBuilder f(int i) {
        ez.C(i, "expectedSize");
        return new ImmutableMapBuilder(NavInstructionTypeEnum);
    }

    public static ImmutableMapBase g(Object obj, Object obj2) {
        ez.A(obj, obj2);
        return ImmutableMapFromEntries.a(1, new Object[]{obj, obj2});
    }

    public static ImmutableMapBase h(Object obj, Object obj2, Object obj3, Object obj4) {
        ez.A(obj, obj2);
        ez.A(obj3, obj4);
        return ImmutableMapFromEntries.a(2, new Object[]{obj, obj2, obj3, obj4});
    }

    public abstract ImmutableCollection b();

    @Override // java.util.Map, j$.util.Map
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public ImmutableCollection values() {
        ImmutableCollection cqaVar = this.c;
        if (cqaVar != null) {
            return cqaVar;
        }
        ImmutableCollection b = b();
        this.c = b;
        return b;
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.Map
    public final /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // j$.util.Map
    public final /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // j$.util.Map
    public final /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map, j$.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof java.util.Map) {
            return entrySet().equals(((java.util.Map) obj).entrySet());
        }
        return false;
    }

    @Override // j$.util.Map
    public final /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map, j$.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map, j$.util.Map
    public final int hashCode() {
        return WorkDataEnumConverters.j(entrySet());
    }

    public abstract ImmutableSet i();

    @Override // java.util.Map, j$.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract ImmutableSet j();

    @Override // java.util.Map, j$.util.Map
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet entrySet() {
        ImmutableSet cqwVar = this.a;
        if (cqwVar != null) {
            return cqwVar;
        }
        ImmutableSet i = i();
        this.a = i;
        return i;
    }

    @Override // java.util.Map, j$.util.Map
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public ImmutableSet keySet() {
        ImmutableSet cqwVar = this.b;
        if (cqwVar != null) {
            return cqwVar;
        }
        ImmutableSet j = j();
        this.b = j;
        return j;
    }

    @Override // j$.util.Map
    public final /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final void putAll(java.util.Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    @Deprecated
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ boolean remove(Object obj, Object obj2) {
        return Map.CC.$default$remove(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, j$.util.Map
    public final /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }

    @Override // j$.util.Map
    public final /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    public final String toString() {
        int size = size();
        ez.C(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        StaggeredGridLayoutParams.append('{');
        boolean z = true;
        for (Map.Entry entry : entrySet()) {
            if (!z) {
                StaggeredGridLayoutParams.append(", ");
            }
            StaggeredGridLayoutParams.append(entry.getKey());
            StaggeredGridLayoutParams.append('=');
            StaggeredGridLayoutParams.append(entry.getValue());
            z = false;
        }
        StaggeredGridLayoutParams.append('}');
        return StaggeredGridLayoutParams.toString();
    }

    Object writeReplace() {
        return new ImmutableMapSerializedForm(this);
    }
}
