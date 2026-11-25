package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CrashMetricServiceFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public CrashMetricServiceFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PrimesLifecycleCallbackInterface a() {
        DaggerProviderInterface dnyVar = this.a;
        int i = btz.b;
        return ((StartupMetricServiceFactory) dnyVar).a();
    }
}
