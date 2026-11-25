package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class jl extends hw {
    final /* synthetic */ jw a;

    public jl(jw jwVar) {
        this.a = jwVar;
    }

    @Override // defpackage.hw, defpackage.hv
    public final void b() {
        this.a.l.setAlpha(1.0f);
        this.a.G.d(null);
        this.a.G = null;
    }

    @Override // defpackage.hw, defpackage.hv
    public final void c() {
        this.a.l.setVisibility(0);
        this.a.l.sendAccessibilityEvent(32);
        if (this.a.l.getParent() instanceof View) {
            hs.t((View) this.a.l.getParent());
        }
    }
}
