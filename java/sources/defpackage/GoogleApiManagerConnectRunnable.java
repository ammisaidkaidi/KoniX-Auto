package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GoogleApiManagerConnectRunnable implements Runnable {
    final /* synthetic */ GoogleApiManagerClientQueue a;

    public GoogleApiManagerConnectRunnable(GoogleApiManagerClientQueue bljVar) {
        this.a = bljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.h();
    }
}
