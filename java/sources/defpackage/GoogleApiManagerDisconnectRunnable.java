package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GoogleApiManagerDisconnectRunnable implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ GoogleApiManagerClientQueue b;

    public GoogleApiManagerDisconnectRunnable(GoogleApiManagerClientQueue bljVar, int i) {
        this.b = bljVar;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.k(this.a);
    }
}
