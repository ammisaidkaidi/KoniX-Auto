package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ahy implements Runnable {
    final /* synthetic */ dag a;
    final /* synthetic */ aib b;
    final /* synthetic */ ame c;

    public ahy(aib aibVar, dag dagVar, ame ameVar) {
        this.b = aibVar;
        this.a = dagVar;
        this.c = ameVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.a.get();
            agr a = agr.a();
            int i = aib.j;
            String.format("Starting work for %s", this.b.c.c);
            a.d(new Throwable[0]);
            aib aibVar = this.b;
            aibVar.e = aibVar.d.b();
            this.c.g(this.b.e);
        } catch (Throwable th) {
            this.c.f(th);
        }
    }
}
