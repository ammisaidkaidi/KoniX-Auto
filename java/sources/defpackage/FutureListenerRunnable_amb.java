package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureListenerRunnable_amb implements Runnable {
    final GuavaAbstractFuture_ame a;
    final ListenableFuture b;

    public FutureListenerRunnable_amb(GuavaAbstractFuture_ame ameVar, ListenableFuture dagVar) {
        this.a = ameVar;
        this.b = dagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.d != this) {
            return;
        }
        if (GuavaAbstractFuture_ame.b.d(this.a, this, GuavaAbstractFuture_ame.a(this.b))) {
            GuavaAbstractFuture_ame.c(this.a);
        }
    }
}
