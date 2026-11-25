package defpackage;

import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class RegularImmutableMap extends ImmutableMapBase implements Map, j$.util.Map {
    public abstract RegularImmutableMap a();

    @Override // defpackage.ImmutableMapBase
    public final /* bridge */ /* synthetic */ ImmutableCollection b() {
        throw new AssertionError("should never be called");
    }

    @Override // defpackage.ImmutableMapBase, java.util.Map, j$.util.Map
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet values() {
        return a().keySet();
    }

    @Override // defpackage.ImmutableMapBase
    Object writeReplace() {
        return new RegularImmutableMapSerializedForm(this);
    }
}
