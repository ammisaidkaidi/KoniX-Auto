package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dav extends daf {
    final /* synthetic */ dax a;
    private final czb b;

    public dav(dax daxVar, czb czbVar) {
        this.a = daxVar;
        czbVar.getClass();
        this.b = czbVar;
    }

    @Override // defpackage.daf
    public final /* bridge */ /* synthetic */ Object a() {
        dag a = this.b.a();
        a.getClass();
        return a;
    }

    @Override // defpackage.daf
    public final String b() {
        return this.b.toString();
    }

    @Override // defpackage.daf
    public final void d(Throwable th) {
        this.a.l(th);
    }

    @Override // defpackage.daf
    public final /* bridge */ /* synthetic */ void e(Object obj) {
        this.a.d((dag) obj);
    }

    @Override // defpackage.daf
    public final boolean g() {
        return this.a.isDone();
    }
}
