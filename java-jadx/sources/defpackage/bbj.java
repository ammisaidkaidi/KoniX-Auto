package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bbj {
    final /* synthetic */ Runnable a;
    final /* synthetic */ das b;
    final /* synthetic */ bbl c;

    public bbj(bbl bblVar, Runnable runnable, das dasVar) {
        this.c = bblVar;
        this.a = runnable;
        this.b = dasVar;
    }

    public final void a(clz clzVar) {
        bbl bblVar = this.c;
        bde bdeVar = bblVar.w;
        awp awpVar = bblVar.g;
        awp awpVar2 = awp.USB;
        cly clyVar = cly.CONNECTION_TERMINATED;
        awpVar.ordinal();
        bdeVar.c();
        this.c.i.removeCallbacks(this.a);
        this.b.k(clzVar);
    }

    public final void b() {
        bbl bblVar = this.c;
        bde bdeVar = bblVar.w;
        awp awpVar = bblVar.g;
        awp awpVar2 = awp.USB;
        cly clyVar = cly.CONNECTION_TERMINATED;
        awpVar.ordinal();
        bdeVar.c();
        this.c.j.c(cly.CONNECTION_DISCONNECTED);
    }
}
