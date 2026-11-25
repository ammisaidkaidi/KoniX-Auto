package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class su extends hw {
    final /* synthetic */ int a;
    final /* synthetic */ sv b;
    private boolean c = false;

    public su(sv svVar, int i) {
        this.b = svVar;
        this.a = i;
    }

    @Override // defpackage.hw, defpackage.hv
    public final void a() {
        this.c = true;
    }

    @Override // defpackage.hw, defpackage.hv
    public final void b() {
        if (this.c) {
            return;
        }
        this.b.a.setVisibility(this.a);
    }

    @Override // defpackage.hw, defpackage.hv
    public final void c() {
        this.b.a.setVisibility(0);
    }
}
