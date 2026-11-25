package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CompactHashMapEntry extends AbstractMapEntry {
    final /* synthetic */ CompactHashMap a;
    private final Object b;
    private int c;

    public CompactHashMapEntry(CompactHashMap cpiVar, int i) {
        this.a = cpiVar;
        this.b = cpiVar.e(NavInstructionTypeEnum);
        this.c = i;
    }

    private final void a() {
        int i = this.c;
        if (NavInstructionTypeEnum == -1 || i >= this.a.size() || !ew.t(this.b, this.a.e(this.c))) {
            this.c = this.a.d(this.b);
        }
    }

    @Override // defpackage.AbstractMapEntry, java.util.Map.Entry
    public final Object getKey() {
        return this.b;
    }

    @Override // defpackage.AbstractMapEntry, java.util.Map.Entry
    public final Object getValue() {
        Map j = this.a.j();
        if (ProtoMessageTwoIntsAndFlagValue != null) {
            return j.get(this.b);
        }
        a();
        int i = this.c;
        if (NavInstructionTypeEnum == -1) {
            return null;
        }
        return this.a.h(NavInstructionTypeEnum);
    }

    @Override // defpackage.AbstractMapEntry, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map j = this.a.j();
        if (ProtoMessageTwoIntsAndFlagValue != null) {
            return j.put(this.b, obj);
        }
        a();
        int i = this.c;
        if (NavInstructionTypeEnum == -1) {
            this.a.put(this.b, obj);
            return null;
        }
        Object h = this.a.h(NavInstructionTypeEnum);
        this.a.n(this.c, obj);
        return h;
    }
}
