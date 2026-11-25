package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BooleanProviderFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;

    public BooleanProviderFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean a() {
        GuavaOptional cocVar = (GuavaOptional) ((SingleCheckProvider) this.a).a;
        DaggerProviderInterface dnyVar = this.b;
        boolean z = false;
        if (cocVar.d() && ((Boolean) cocVar.a()).booleanValue() && ((Boolean) dnyVar.a()).booleanValue()) {
            z = true;
        }
        return Boolean.valueOf(IcuMessageFormat);
    }
}
