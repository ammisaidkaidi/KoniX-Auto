package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class JankConfigHolderFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public JankConfigHolderFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final JankConfigHolder a() {
        return new JankConfigHolder();
    }
}
