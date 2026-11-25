package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OverlayableResourcesFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;

    public OverlayableResourcesFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2) {
        this.a = dnyVar;
        this.b = dnyVar2;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final OverlayManagerHolder a() {
        Context a = ((AppContextProviderFactory) this.a).a();
        return new OverlayManagerHolder(a, null);
    }
}
