package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class clr implements Runnable {
    final /* synthetic */ cly a;
    final /* synthetic */ clv b;

    public clr(clv clvVar, cly clyVar) {
        this.b = clvVar;
        this.a = clyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.e.a.b(this.a);
        this.b.b.set(false);
    }
}
