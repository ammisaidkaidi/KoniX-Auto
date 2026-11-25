package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApplicationExitInfoProviderFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public ApplicationExitInfoProviderFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ApplicationExitInfoProvider a() {
        return new ApplicationExitInfoProvider(((AppContextProviderFactory) this.a).a());
    }
}
