package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class iw implements View.OnClickListener {
    final /* synthetic */ jb a;

    public iw(jb jbVar) {
        this.a = jbVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        jb jbVar = this.a;
        jbVar.x.obtainMessage(1, jbVar.b).sendToTarget();
    }
}
