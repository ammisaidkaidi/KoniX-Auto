package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bj implements DialogInterface.OnDismissListener {
    final /* synthetic */ bm a;

    public bj(bm bmVar) {
        this.a = bmVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        bm bmVar = this.a;
        Dialog dialog = bmVar.c;
        if (dialog != null) {
            bmVar.onDismiss(dialog);
        }
    }
}
