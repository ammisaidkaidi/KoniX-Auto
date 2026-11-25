package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class kv extends hw {
    final /* synthetic */ kw a;
    private boolean b = false;
    private int c = 0;

    public kv(kw kwVar) {
        this.a = kwVar;
    }

    @Override // defpackage.hw, defpackage.hv
    public final void b() {
        int i = this.c + 1;
        this.c = i;
        if (i == this.a.a.size()) {
            hv hvVar = this.a.b;
            if (hvVar != null) {
                hvVar.b();
            }
            this.c = 0;
            this.b = false;
            this.a.c = false;
        }
    }

    @Override // defpackage.hw, defpackage.hv
    public final void c() {
        if (this.b) {
            return;
        }
        this.b = true;
        hv hvVar = this.a.b;
        if (hvVar != null) {
            hvVar.c();
        }
    }
}
