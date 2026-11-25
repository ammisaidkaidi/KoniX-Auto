package defpackage;

import j$.util.Map;
import j$.util.function.BiConsumer;
import j$.util.function.BiFunction;
import j$.util.function.Function;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class vb extends vi implements Map, j$.util.Map {
    uv a;
    ux b;
    uz c;

    public vb() {
    }

    final Object[] a(Object[] objArr, int i) {
        int i2 = this.j;
        if (objArr.length < i2) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i2);
        }
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = this.i[i3 + i3 + i];
        }
        if (objArr.length > i2) {
            objArr[i2] = null;
        }
        return objArr;
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
    public final Set entrySet() {
        uv uvVar = this.a;
        if (uvVar != null) {
            return uvVar;
        }
        uv uvVar2 = new uv(this);
        this.a = uvVar2;
        return uvVar2;
    }

    @Override // j$.util.Map
    public final /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map, j$.util.Map
    public final Set keySet() {
        ux uxVar = this.b;
        if (uxVar != null) {
            return uxVar;
        }
        ux uxVar2 = new ux(this);
        this.b = uxVar2;
        return uxVar2;
    }

    @Override // j$.util.Map
    public final /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final void putAll(java.util.Map map) {
        int size = this.j + map.size();
        int i = this.j;
        int[] iArr = this.h;
        if (iArr.length < size) {
            Object[] objArr = this.i;
            super.j(size);
            if (this.j > 0) {
                System.arraycopy(iArr, 0, this.h, 0, i);
                System.arraycopy(objArr, 0, this.i, 0, i + i);
            }
            vi.k(iArr, objArr, i);
        }
        if (this.j != i) {
            throw new ConcurrentModificationException();
        }
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // j$.util.Map
    public final /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.Map, j$.util.Map
    public final Collection values() {
        uz uzVar = this.c;
        if (uzVar != null) {
            return uzVar;
        }
        uz uzVar2 = new uz(this);
        this.c = uzVar2;
        return uzVar2;
    }

    public vb(int i) {
        super(i);
    }
}
