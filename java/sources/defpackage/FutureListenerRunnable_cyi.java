package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureListenerRunnable_cyi implements Runnable {
    final GuavaAbstractFuture_cyp a;
    final ListenableFuture b;

    public FutureListenerRunnable_cyi(GuavaAbstractFuture_cyp cypVar, ListenableFuture dagVar) {
        this.a = cypVar;
        this.b = dagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GuavaAbstractFuture_cyp cypVar = this.a;
        boolean z = cyp.d;
        if (cypVar.value != this) {
            return;
        }
        if (GuavaAbstractFuture_cyp.e.d(this.a, this, GuavaAbstractFuture_cyp.f(this.b))) {
            GuavaAbstractFuture_cyp.h(this.a);
        }
    }
}
