package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class pe implements Runnable {
    final /* synthetic */ pf a;

    public pe(pf pfVar) {
        this.a = pfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        pf pfVar = this.a;
        pfVar.b = null;
        pfVar.drawableStateChanged();
    }
}
