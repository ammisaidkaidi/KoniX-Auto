package defpackage;

import android.view.View;
import android.widget.PopupWindow;

/* compiled from: PG */
/* loaded from: classes.dex */
final class jm extends hw {
    final /* synthetic */ jn a;

    public jm(jn jnVar) {
        this.a = jnVar;
    }

    @Override // defpackage.hw, defpackage.hv
    public final void b() {
        this.a.a.l.setVisibility(8);
        jw jwVar = this.a.a;
        PopupWindow popupWindow = jwVar.m;
        if (popupWindow != null) {
            popupWindow.dismiss();
        } else if (jwVar.l.getParent() instanceof View) {
            hs.t((View) this.a.a.l.getParent());
        }
        this.a.a.l.i();
        this.a.a.G.d(null);
        jw jwVar2 = this.a.a;
        jwVar2.G = null;
        hs.t(jwVar2.q);
    }
}
