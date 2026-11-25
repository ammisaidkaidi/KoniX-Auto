package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ProtoMapEntry implements Map.Entry {
    public final Map.Entry a;

    public ProtoMapEntry(Map.Entry entry) {
        this.a = entry;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((ProtoMapField) this.a.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof MessageLite)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        ProtoMapField ddzVar = (ProtoMapField) this.a.getValue();
        MessageLite derVar = ddzVar.a;
        ddzVar.b = null;
        ddzVar.a = (MessageLite) obj;
        return derVar;
    }
}
