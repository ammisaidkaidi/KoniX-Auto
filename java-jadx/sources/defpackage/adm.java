package defpackage;

import android.os.Bundle;
import android.view.View;
import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
final class adm extends gh {
    final /* synthetic */ adn b;

    public adm(adn adnVar) {
        this.b = adnVar;
    }

    @Override // defpackage.gh
    public final void c(View view, ik ikVar) {
        Preference d;
        this.b.e.c(view, ikVar);
        int b = this.b.d.b(view);
        qq e = this.b.d.e();
        if ((e instanceof adg) && (d = ((adg) e).d(b)) != null) {
            d.onInitializeAccessibilityNodeInfo(ikVar);
        }
    }

    @Override // defpackage.gh
    public final boolean i(View view, int i, Bundle bundle) {
        return this.b.e.i(view, i, bundle);
    }
}
