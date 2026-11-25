package defpackage;

import android.widget.PopupWindow;

/* compiled from: PG */
/* loaded from: classes.dex */
final class lz implements PopupWindow.OnDismissListener {
    final /* synthetic */ ma a;

    public lz(ma maVar) {
        this.a = maVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.a.c();
    }
}
