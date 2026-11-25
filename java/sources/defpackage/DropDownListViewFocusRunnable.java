package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DropDownListViewFocusRunnable implements Runnable {
    final /* synthetic */ DropDownListView a;

    public DropDownListViewFocusRunnable(DropDownListView pfVar) {
        this.a = pfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DropDownListView pfVar = this.a;
        pfVar.b = null;
        pfVar.drawableStateChanged();
    }
}
