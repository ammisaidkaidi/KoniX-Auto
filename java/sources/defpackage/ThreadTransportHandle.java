package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ThreadTransportHandle implements TransportHandle {
    final /* synthetic */ Thread a;

    public ThreadTransportHandle(Thread thread) {
        this.a = thread;
    }

    @Override // defpackage.TransportHandle
    public final void a() {
        this.a.interrupt();
        this.a.join();
    }
}
