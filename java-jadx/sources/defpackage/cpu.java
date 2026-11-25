package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cpu extends cpv implements Map {
    protected cpu() {
    }

    @Override // defpackage.cpv
    protected /* bridge */ /* synthetic */ Object b() {
        throw null;
    }

    protected abstract Map c();

    @Override // java.util.Map
    public final void clear() {
        c().clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return c().containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return c().containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return c().entrySet();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return obj == this || c().equals(obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return c().get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return c().hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return c().isEmpty();
    }

    @Override // java.util.Map
    public final Set keySet() {
        return c().keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return c().put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        c().putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return c().remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        return c().size();
    }

    @Override // java.util.Map
    public final Collection values() {
        return c().values();
    }
}
