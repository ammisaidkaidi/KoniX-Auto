package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bqz implements Runnable {
    final /* synthetic */ bre a;

    public bqz(bre breVar, byte[] bArr) {
        this.a = breVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.a.a) {
            this.a.b.a.countDown();
        }
    }
}
