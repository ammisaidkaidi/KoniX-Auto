package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DialogFragmentStateRunnable implements Runnable {
    final /* synthetic */ AndroidxDialogFragment a;

    public DialogFragmentStateRunnable(AndroidxDialogFragment bmVar) {
        this.a = bmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AndroidxDialogFragment bmVar = this.a;
        bmVar.a.onDismiss(bmVar.c);
    }
}
