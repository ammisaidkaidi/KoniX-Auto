package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClusterDisplayAvailabilityFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public ClusterDisplayAvailabilityFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    public static ClusterDisplayAvailability c() {
        return new ClusterDisplayAvailability();
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ClusterDisplayAvailability a() {
        ClusterDisplayAvailability c = c();
        c.a = ((ClusterDisplayProviderFactory) this.a).a();
        return c;
    }
}
