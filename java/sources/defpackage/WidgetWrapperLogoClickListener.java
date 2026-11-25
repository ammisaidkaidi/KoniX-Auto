package defpackage;

import android.view.View;
import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WidgetWrapperLogoClickListener implements View.OnClickListener {
    final MenuItemWrapperApi26 a;
    final /* synthetic */ ToolbarWidgetWrapper b;

    public WidgetWrapperLogoClickListener(ToolbarWidgetWrapper svVar) {
        this.b = svVar;
        this.a = new MenuItemWrapperApi26(svVar.a.getContext(), svVar.b);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ToolbarWidgetWrapper svVar = this.b;
        Window.Callback callback = svVar.c;
        if (callback == null || !svVar.d) {
            return;
        }
        callback.onMenuItemSelected(0, this.a);
    }
}
