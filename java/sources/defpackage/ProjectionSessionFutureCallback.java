package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProjectionSessionFutureCallback implements ListenableFutureCallback {
    final /* synthetic */ ProjectionSession a;

    public ProjectionSessionFutureCallback(ProjectionSession bblVar) {
        this.a = bblVar;
    }

    @Override // defpackage.ListenableFutureCallback
    public final void a(Throwable th) {
        this.a.w.b(LatencyEventType.SESSION_STARTUP, 5);
        this.a.w.b(LatencyEventType.AHU_START_UNTIL_HANDLER_READY, 5);
    }

    @Override // defpackage.ListenableFutureCallback
    public final /* bridge */ /* synthetic */ void b(Object obj) {
        this.a.w.b(LatencyEventType.SESSION_STARTUP, 3);
        this.a.w.b(LatencyEventType.AHU_START_UNTIL_HANDLER_READY, 3);
    }
}
