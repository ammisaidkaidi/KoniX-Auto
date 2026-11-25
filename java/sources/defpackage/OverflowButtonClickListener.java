package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OverflowButtonClickListener implements View.OnClickListener {
    final /* synthetic */ MenuPopupPresenterBase a;

    public OverflowButtonClickListener(MenuPopupPresenterBase koVar) {
        this.a = koVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.f();
    }
}
