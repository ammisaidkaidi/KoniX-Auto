package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DelegatingProviderWrapper implements DaggerProviderInterface {
    private final DaggerProviderInterface a;
    private final /* synthetic */ int b;

    private DelegatingProviderWrapper(DaggerProviderInterface dnyVar, int i, byte[] bArr) {
        this.b = i;
        dnyVar.getClass();
        this.a = dnyVar;
    }

    public static DaggerProviderInterface c(DaggerProviderInterface dnyVar) {
        return new DelegatingProviderWrapper(dnyVar, 0);
    }

    public static DaggerProviderInterface d(DaggerProviderInterface dnyVar) {
        return new DelegatingProviderWrapper(dnyVar, 1, null);
    }

    private DelegatingProviderWrapper(DaggerProviderInterface dnyVar, int i) {
        this.b = i;
        dnyVar.getClass();
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.b) {
        }
        return b();
    }

    public final GuavaOptional b() {
        switch (this.b) {
            case 0:
                return GuavaOptional.e(this.a);
            default:
                return GuavaOptional.e(this.a.a());
        }
    }
}
