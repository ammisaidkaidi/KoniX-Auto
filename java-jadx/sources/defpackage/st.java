package defpackage;

import android.view.View;
import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class st implements View.OnClickListener {
    final ky a;
    final /* synthetic */ sv b;

    public st(sv svVar) {
        this.b = svVar;
        this.a = new ky(svVar.a.getContext(), svVar.b);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        sv svVar = this.b;
        Window.Callback callback = svVar.c;
        if (callback == null || !svVar.d) {
            return;
        }
        callback.onMenuItemSelected(0, this.a);
    }
}
