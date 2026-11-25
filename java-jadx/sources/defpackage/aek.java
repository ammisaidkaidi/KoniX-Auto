package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aek implements Runnable {
    final /* synthetic */ Runnable a;
    final /* synthetic */ ael b;

    public aek(ael aelVar, Runnable runnable) {
        this.b = aelVar;
        this.a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.a.run();
        } finally {
            this.b.a();
        }
    }
}
