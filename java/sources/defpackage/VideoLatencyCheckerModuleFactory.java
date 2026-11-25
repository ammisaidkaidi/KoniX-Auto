package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class VideoLatencyCheckerModuleFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public VideoLatencyCheckerModuleFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final StackClassGetterBase a() {
        return new GservicesValueReader();
    }
}
