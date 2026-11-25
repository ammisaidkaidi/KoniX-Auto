package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bbk implements czv {
    final /* synthetic */ bbl a;

    public bbk(bbl bblVar) {
        this.a = bblVar;
    }

    @Override // defpackage.czv
    public final void a(Throwable th) {
        this.a.w.b(bdf.SESSION_STARTUP, 5);
        this.a.w.b(bdf.AHU_START_UNTIL_HANDLER_READY, 5);
    }

    @Override // defpackage.czv
    public final /* bridge */ /* synthetic */ void b(Object obj) {
        this.a.w.b(bdf.SESSION_STARTUP, 3);
        this.a.w.b(bdf.AHU_START_UNTIL_HANDLER_READY, 3);
    }
}
