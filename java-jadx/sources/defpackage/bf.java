package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
class bf {
    public final dl a;
    public final xv b;

    public bf(dl dlVar, xv xvVar) {
        this.a = dlVar;
        this.b = xvVar;
    }

    final void b() {
        dl dlVar = this.a;
        if (dlVar.b.remove(this.b) && dlVar.b.isEmpty()) {
            dlVar.a();
        }
    }

    final boolean c() {
        int n = r.n(this.a.a.P);
        int i = this.a.e;
        return n == i || !(n == 2 || i == 2);
    }
}
