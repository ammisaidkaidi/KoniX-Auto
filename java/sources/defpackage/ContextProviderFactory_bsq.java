package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ContextProviderFactory_bsq implements DaggerProvider {
    private final DaggerProviderInterface a;

    public ContextProviderFactory_bsq(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AppContextModule a() {
        return new AppContextModule((Context) ((SingleCheckProvider) this.a).a);
    }
}
