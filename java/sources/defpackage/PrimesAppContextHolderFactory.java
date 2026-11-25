package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesAppContextHolderFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public PrimesAppContextHolderFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PrimesAppContextHolder a() {
        return new PrimesAppContextHolder(((AppContextProviderFactory) this.a).a());
    }
}
