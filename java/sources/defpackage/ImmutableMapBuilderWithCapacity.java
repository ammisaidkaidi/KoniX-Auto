package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ImmutableMapBuilderWithCapacity extends ImmutableMapBuilder {
    public ImmutableMapBuilderWithCapacity() {
    }

    @Override // defpackage.ImmutableMapBuilder
    /* renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final RegularImmutableMap c() {
        int i = this.b;
        return i == 0 ? cry.a : new RegularImmutableBiMap(this.a, i);
    }

    public final void d(Object obj, Object obj2) {
        super.f(obj, obj2);
    }

    public ImmutableMapBuilderWithCapacity(int i) {
        super(NavInstructionTypeEnum);
    }
}
