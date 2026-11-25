package defpackage;

import java.util.HashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SafeIterableMapEntryList extends SafeIterableMap {
    public final HashMap a = new HashMap();

    @Override // defpackage.SafeIterableMap
    public final SafeIterableMapEntry a(Object obj) {
        return (SafeIterableMapEntry) this.a.get(obj);
    }

    @Override // defpackage.SafeIterableMap
    public final Object b(Object obj) {
        Object b = super.b(obj);
        this.a.remove(obj);
        return b;
    }

    public final boolean c(Object obj) {
        return this.a.containsKey(obj);
    }
}
