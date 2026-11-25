package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CrashDeviceIdSeederFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;

    public CrashDeviceIdSeederFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final CrashDeviceIdSeeder a() {
        DoubleCheckProvider.b(this.b);
        return new CrashDeviceIdSeeder(((AppContextProviderFactory) this.c).a());
    }
}
