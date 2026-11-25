package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VideoLatencyCheckerFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public VideoLatencyCheckerFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final VideoLatencyChecker a() {
        ((VideoLatencyCheckerModuleFactory) this.a).a();
        return new VideoLatencyChecker();
    }
}
