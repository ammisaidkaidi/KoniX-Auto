package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SessionByeByeRunnable implements Runnable {
    final /* synthetic */ ProjectionCloseReason a;
    final /* synthetic */ GalTransportSessionController b;

    public SessionByeByeRunnable(GalTransportSessionController clvVar, ProjectionCloseReason clyVar) {
        this.b = clvVar;
        this.a = clyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.e.a.b(this.a);
        this.b.b.set(false);
    }
}
