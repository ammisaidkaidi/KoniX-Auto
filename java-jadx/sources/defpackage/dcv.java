package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dcv {
    public final dcu a;

    public dcv(dcu dcuVar) {
        dds.i(dcuVar, "output");
        this.a = dcuVar;
        dcuVar.f = this;
    }

    public final void a(int i, boolean z) {
        this.a.l(i, z);
    }

    public final void b(int i, dcl dclVar) {
        this.a.m(i, dclVar);
    }

    public final void c(int i, double d) {
        this.a.am(i, d);
    }

    public final void d(int i, int i2) {
        this.a.s(i, i2);
    }

    public final void e(int i, int i2) {
        this.a.o(i, i2);
    }

    public final void f(int i, long j) {
        this.a.q(i, j);
    }

    public final void g(int i, float f) {
        this.a.ao(i, f);
    }

    public final void h(int i, Object obj, dfg dfgVar) {
        dcu dcuVar = this.a;
        dcuVar.A(i, 3);
        dfgVar.l((der) obj, dcuVar.f);
        dcuVar.A(i, 4);
    }

    public final void i(int i, int i2) {
        this.a.s(i, i2);
    }

    public final void j(int i, long j) {
        this.a.D(i, j);
    }

    public final void k(int i, Object obj, dfg dfgVar) {
        this.a.u(i, (der) obj, dfgVar);
    }

    public final void l(int i, Object obj) {
        if (obj instanceof dcl) {
            this.a.x(i, (dcl) obj);
        } else {
            this.a.w(i, (der) obj);
        }
    }

    public final void m(int i, int i2) {
        this.a.o(i, i2);
    }

    public final void n(int i, long j) {
        this.a.q(i, j);
    }

    public final void o(int i, int i2) {
        this.a.ar(i, i2);
    }

    public final void p(int i, long j) {
        this.a.at(i, j);
    }

    public final void q(int i, String str) {
        this.a.y(i, str);
    }

    public final void r(int i, int i2) {
        this.a.B(i, i2);
    }

    public final void s(int i, long j) {
        this.a.D(i, j);
    }
}
