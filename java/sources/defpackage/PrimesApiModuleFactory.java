package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesApiModuleFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public PrimesApiModuleFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PrimesApiProvider a() {
        return new PrimesApiProvider((GuavaOptional) ((SingleCheckProvider) this.a).a);
    }
}
