package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ForegroundWorkStartRunnable implements Runnable {
    final /* synthetic */ GuavaAbstractFuture_ame a;

    public ForegroundWorkStartRunnable(GuavaAbstractFuture_ame ameVar) {
        this.a = ameVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GuavaAbstractFuture_ame ameVar = this.a;
        GuavaAbstractFuture_ame h = GuavaAbstractFuture_ame.h();
        h.f(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        ameVar.g(ProtoMessageSingleEnumFieldH);
    }
}
