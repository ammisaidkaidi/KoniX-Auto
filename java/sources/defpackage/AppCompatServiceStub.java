package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AppCompatServiceStub implements ActivityResultLauncherCallback {
    final /* synthetic */ AppCompatActivityBase_jf a;

    public AppCompatServiceStub(AppCompatActivityBase_jf jfVar) {
        this.a = jfVar;
    }

    @Override // defpackage.ActivityResultLauncherCallback
    public final void a() {
        AppCompatDelegate g = this.a.g();
        g.d();
        this.a.D().a("androidx:appcompat");
        g.m();
    }
}
