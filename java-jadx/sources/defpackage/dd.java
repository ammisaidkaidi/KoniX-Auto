package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dd implements aex, aak {
    private final aed c;
    public zn b = null;
    public aew a = null;

    public dd(aed aedVar, byte[] bArr) {
        this.c = aedVar;
    }

    @Override // defpackage.zq
    public final zn C() {
        b();
        return this.b;
    }

    @Override // defpackage.aex
    public final aev D() {
        b();
        return this.a.a;
    }

    final void a(zl zlVar) {
        this.b.c(zlVar);
    }

    @Override // defpackage.aak
    public final aed ai() {
        b();
        return this.c;
    }

    final void b() {
        if (this.b == null) {
            this.b = new zn(this);
            this.a = aew.a(this);
        }
    }
}
