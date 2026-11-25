package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DialogButtonClickListener implements View.OnClickListener {
    final /* synthetic */ AlertControllerConfig a;

    public DialogButtonClickListener(AlertControllerConfig jbVar) {
        this.a = jbVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AlertControllerConfig jbVar = this.a;
        jbVar.x.obtainMessage(1, jbVar.b).sendToTarget();
    }
}
