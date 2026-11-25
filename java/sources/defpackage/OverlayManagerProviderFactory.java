package defpackage;

import android.content.om.OverlayManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OverlayManagerProviderFactory implements DaggerProvider {
    private final DaggerProviderInterface a;

    public OverlayManagerProviderFactory(DaggerProviderInterface dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final OverlayManager a() {
        OverlayManager overlayManager = (OverlayManager) ((AppContextProviderFactory) this.a).a().getSystemService(OverlayManager.class);
        CommonObjectsAndPreconditionsUtil.m(overlayManager);
        return overlayManager;
    }
}
