package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class brf implements Runnable {
    final /* synthetic */ brh a;
    final /* synthetic */ bre b;

    public brf(bre breVar, brh brhVar, byte[] bArr) {
        this.b = breVar;
        this.a = brhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.b.a) {
            brp brpVar = this.b.b;
            this.a.b();
            brpVar.a.countDown();
        }
    }
}
