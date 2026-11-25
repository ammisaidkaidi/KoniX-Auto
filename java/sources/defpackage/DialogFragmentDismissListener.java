package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DialogFragmentDismissListener implements DialogInterface.OnDismissListener {
    final /* synthetic */ AndroidxDialogFragment a;

    public DialogFragmentDismissListener(AndroidxDialogFragment bmVar) {
        this.a = bmVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        AndroidxDialogFragment bmVar = this.a;
        Dialog dialog = bmVar.c;
        if (dialog != null) {
            bmVar.onDismiss(dialog);
        }
    }
}
