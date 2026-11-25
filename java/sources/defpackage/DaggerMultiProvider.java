package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DaggerMultiProvider implements StingActivityComponentInterface, dhg, dhs {
    private final AareceiverAppComponent a;
    private DaggerProviderInterface b;
    private final DaggerMultiProvider c;

    public DaggerMultiProvider() {
    }

    @Override // defpackage.StingServiceScopeInterface
    public final StingEmptyComponentHolder a() {
        return (StingEmptyComponentHolder) this.b.a();
    }

    @Override // defpackage.StingActivityComponentInterface
    public final AppComponentWithAudioDeps b() {
        return new AppComponentWithAudioDeps(this.a, this.c);
    }

    public DaggerMultiProvider(AareceiverAppComponent atjVar) {
        this.c = this;
        this.a = atjVar;
        this.b = DoubleCheckProvider.c(dhj.a);
    }
}
