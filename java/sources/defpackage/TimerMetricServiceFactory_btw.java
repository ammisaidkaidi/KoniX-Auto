package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TimerMetricServiceFactory_btw implements DaggerProvider {
    private final DaggerProviderInterface a;

    public TimerMetricServiceFactory_btw(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Primes a() {
        return new Primes(((CrashMetricServiceFactory) this.a).a());
    }
}
