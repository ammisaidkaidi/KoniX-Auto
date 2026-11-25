package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ddx implements Map.Entry {
    public final Map.Entry a;

    public ddx(Map.Entry entry) {
        this.a = entry;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((ddz) this.a.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof der)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        ddz ddzVar = (ddz) this.a.getValue();
        der derVar = ddzVar.a;
        ddzVar.b = null;
        ddzVar.a = (der) obj;
        return derVar;
    }
}
