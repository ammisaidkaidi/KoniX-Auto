package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cyi implements Runnable {
    final cyp a;
    final dag b;

    public cyi(cyp cypVar, dag dagVar) {
        this.a = cypVar;
        this.b = dagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cyp cypVar = this.a;
        boolean z = cyp.d;
        if (cypVar.value != this) {
            return;
        }
        if (cyp.e.d(this.a, this, cyp.f(this.b))) {
            cyp.h(this.a);
        }
    }
}
