package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class blg implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ blj b;

    public blg(blj bljVar, int i) {
        this.b = bljVar;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.k(this.a);
    }
}
