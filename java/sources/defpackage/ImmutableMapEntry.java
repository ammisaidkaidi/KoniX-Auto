package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ImmutableMapEntry extends AbstractMapEntry implements Serializable {
    private static final long serialVersionUID = 0;
    final Object a;
    final Object b;

    public ImmutableMapEntry(Object obj, Object obj2) {
        this.a = obj;
        this.b = obj2;
    }

    @Override // defpackage.AbstractMapEntry, java.util.Map.Entry
    public final Object getKey() {
        return this.a;
    }

    @Override // defpackage.AbstractMapEntry, java.util.Map.Entry
    public final Object getValue() {
        return this.b;
    }

    @Override // defpackage.AbstractMapEntry, java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
