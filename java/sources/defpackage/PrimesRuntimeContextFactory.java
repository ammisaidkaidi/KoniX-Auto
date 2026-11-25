package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesRuntimeContextFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;

    public PrimesRuntimeContextFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PrimesRuntimeContext a() {
        String str = (String) this.a.a();
        PrimesAppContextHolder a = ((PrimesAppContextHolderFactory) this.b).a();
        return new PrimesRuntimeContext(str, a, this.d);
    }
}
