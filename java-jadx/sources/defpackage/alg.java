package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class alg implements Runnable {
    final alh a;
    final Runnable b;

    public alg(alh alhVar, Runnable runnable) {
        this.a = alhVar;
        this.b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.b.run();
        } finally {
            this.a.a();
        }
    }
}
