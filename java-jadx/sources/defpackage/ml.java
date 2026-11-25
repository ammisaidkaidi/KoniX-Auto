package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ml implements hv {
    int a;
    final /* synthetic */ mm b;
    private boolean c = false;

    protected ml(mm mmVar) {
        this.b = mmVar;
    }

    @Override // defpackage.hv
    public final void a() {
        this.c = true;
    }

    @Override // defpackage.hv
    public final void b() {
        if (this.c) {
            return;
        }
        mm mmVar = this.b;
        mmVar.f = null;
        super/*android.view.ViewGroup*/.setVisibility(this.a);
    }

    @Override // defpackage.hv
    public final void c() {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.c = false;
    }

    public final void d(bew bewVar, int i) {
        this.b.f = bewVar;
        this.a = i;
    }
}
