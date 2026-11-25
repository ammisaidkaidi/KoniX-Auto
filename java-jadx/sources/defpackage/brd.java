package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class brd implements Runnable {
    final /* synthetic */ brh a;
    final /* synthetic */ bre b;

    public brd(bre breVar, brh brhVar) {
        this.b = breVar;
        this.a = brhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.b.a) {
            brp brpVar = this.b.b;
            hr.d(this.a.a());
            brpVar.a.countDown();
        }
    }
}
