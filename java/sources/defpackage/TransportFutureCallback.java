package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TransportFutureCallback {
    final /* synthetic */ Runnable a;
    final /* synthetic */ SettableFuture b;
    final /* synthetic */ ProjectionSession c;

    public TransportFutureCallback(ProjectionSession bblVar, Runnable runnable, SettableFuture dasVar) {
        this.c = bblVar;
        this.a = runnable;
        this.b = dasVar;
    }

    public final void a(GalTransportConnection clzVar) {
        ProjectionSession bblVar = this.c;
        TelemetryTracker bdeVar = bblVar.w;
        ProjectionTransportType awpVar = bblVar.g;
        ProjectionTransportType awpVar2 = ProjectionTransportType.USB;
        ProjectionCloseReason clyVar = ProjectionCloseReason.CONNECTION_TERMINATED;
        awpVar.ordinal();
        bdeVar.c();
        this.c.i.removeCallbacks(this.a);
        this.b.k(clzVar);
    }

    public final void b() {
        ProjectionSession bblVar = this.c;
        TelemetryTracker bdeVar = bblVar.w;
        ProjectionTransportType awpVar = bblVar.g;
        ProjectionTransportType awpVar2 = ProjectionTransportType.USB;
        ProjectionCloseReason clyVar = ProjectionCloseReason.CONNECTION_TERMINATED;
        awpVar.ordinal();
        bdeVar.c();
        this.c.j.c(ProjectionCloseReason.CONNECTION_DISCONNECTED);
    }
}
