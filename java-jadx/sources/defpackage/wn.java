package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class wn extends wt {
    public wn(vx vxVar) {
        super(vxVar);
        vxVar.h.d();
        vxVar.i.d();
        this.g = ((wa) vxVar).aq;
    }

    private final void g(wk wkVar) {
        this.i.j.add(wkVar);
        wkVar.k.add(this.i);
    }

    @Override // defpackage.wt
    public final void b() {
        vx vxVar = this.d;
        wa waVar = (wa) vxVar;
        int i = waVar.b;
        int i2 = waVar.c;
        float f = waVar.a;
        if (waVar.aq == 1) {
            if (i != -1) {
                this.i.k.add(vxVar.T.h.i);
                this.d.T.h.i.j.add(this.i);
                this.i.e = i;
            } else if (i2 != -1) {
                this.i.k.add(vxVar.T.h.j);
                this.d.T.h.j.j.add(this.i);
                this.i.e = -i2;
            } else {
                wk wkVar = this.i;
                wkVar.b = true;
                wkVar.k.add(vxVar.T.h.j);
                this.d.T.h.j.j.add(this.i);
            }
            g(this.d.h.i);
            g(this.d.h.j);
            return;
        }
        if (i != -1) {
            this.i.k.add(vxVar.T.i.i);
            this.d.T.i.i.j.add(this.i);
            this.i.e = i;
        } else if (i2 != -1) {
            this.i.k.add(vxVar.T.i.j);
            this.d.T.i.j.j.add(this.i);
            this.i.e = -i2;
        } else {
            wk wkVar2 = this.i;
            wkVar2.b = true;
            wkVar2.k.add(vxVar.T.i.j);
            this.d.T.i.j.j.add(this.i);
        }
        g(this.d.i.i);
        g(this.d.i.j);
    }

    @Override // defpackage.wt
    public final void c() {
        vx vxVar = this.d;
        if (((wa) vxVar).aq == 1) {
            vxVar.Y = this.i.f;
        } else {
            vxVar.Z = this.i.f;
        }
    }

    @Override // defpackage.wt
    public final void d() {
        this.i.b();
    }

    @Override // defpackage.wt
    public final boolean e() {
        return false;
    }

    @Override // defpackage.wt, defpackage.wi
    public final void f() {
        wk wkVar = this.i;
        if (wkVar.c && !wkVar.i) {
            wk wkVar2 = (wk) wkVar.k.get(0);
            wa waVar = (wa) this.d;
            this.i.c((int) ((wkVar2.f * waVar.a) + 0.5f));
        }
    }
}
