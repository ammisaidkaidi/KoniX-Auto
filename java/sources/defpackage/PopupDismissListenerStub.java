package defpackage;

import android.widget.PopupWindow;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PopupDismissListenerStub implements PopupWindow.OnDismissListener {
    final /* synthetic */ MenuPopupHelper_ma a;

    public PopupDismissListenerStub(MenuPopupHelper_ma maVar) {
        this.a = maVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.a.c();
    }
}
