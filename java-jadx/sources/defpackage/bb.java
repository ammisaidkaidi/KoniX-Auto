package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bb implements Runnable {
    final /* synthetic */ bc a;

    public bb(bc bcVar) {
        this.a = bcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        bc bcVar = this.a;
        bcVar.b.endViewTransition(bcVar.c);
        this.a.d.b();
    }
}
