package defpackage;

import android.content.om.OverlayManager;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ayg implements dhx {
    private final dny a;

    public ayg(dny dnyVar) {
        this.a = dnyVar;
    }

    @Override // defpackage.dny
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final OverlayManager a() {
        OverlayManager overlayManager = (OverlayManager) ((dhr) this.a).a().getSystemService(OverlayManager.class);
        dpx.m(overlayManager);
        return overlayManager;
    }
}
