package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class all implements Runnable {
    final /* synthetic */ ame a;

    public all(ame ameVar) {
        this.a = ameVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ame ameVar = this.a;
        ame h = ame.h();
        h.f(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        ameVar.g(h);
    }
}
