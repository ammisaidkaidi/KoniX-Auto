package defpackage;

import java.io.IOException;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ddf extends dbu implements des {
    public final ddk a;
    public ddk b;
    public boolean c;

    public ddf() {
        b bVar = b.c;
        throw null;
    }

    private static final void ak(ddk ddkVar, ddk ddkVar2) {
        dez.a.b(ddkVar).g(ddkVar, ddkVar2);
    }

    public final void A(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        dgn dgnVar = (dgn) this.b;
        dgn dgnVar2 = dgn.m;
        dgnVar.c();
        dgnVar.k.e(j);
    }

    public final void B(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        don donVar = (don) this.b;
        don donVar2 = don.e;
        ddr ddrVar = donVar.b;
        if (!ddrVar.c()) {
            donVar.b = ddk.z(ddrVar);
        }
        dbu.d(iterable, donVar.b);
    }

    public final void C(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        don donVar = (don) this.b;
        don donVar2 = don.e;
        ddr ddrVar = donVar.c;
        if (!ddrVar.c()) {
            donVar.c = ddk.z(ddrVar);
        }
        dbu.d(iterable, donVar.c);
    }

    public final dor D(int i) {
        return (dor) ((dos) this.b).g.get(i);
    }

    public final dor E(int i) {
        return (dor) ((dos) this.b).h.get(i);
    }

    public final dor F(int i) {
        return (dor) ((dos) this.b).i.get(i);
    }

    public final dor G(int i) {
        return (dor) ((dos) this.b).j.get(i);
    }

    public final dor H(int i) {
        return (dor) ((dos) this.b).k.get(i);
    }

    public final dor I(int i) {
        return (dor) ((dos) this.b).l.get(i);
    }

    public final dor J(int i) {
        return (dor) ((dos) this.b).n.get(i);
    }

    public final void K(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.J();
        dbu.d(iterable, dosVar.l);
    }

    public final void L(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.K();
        dbu.d(iterable, dosVar.n);
    }

    public final void M(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        ddr ddrVar = dosVar.u;
        if (!ddrVar.c()) {
            dosVar.u = ddk.z(ddrVar);
        }
        dbu.d(iterable, dosVar.u);
    }

    public final void N(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        ddr ddrVar = dosVar.p;
        if (!ddrVar.c()) {
            dosVar.p = ddk.z(ddrVar);
        }
        dbu.d(iterable, dosVar.p);
    }

    public final void O(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.I();
        dbu.d(iterable, dosVar.k);
    }

    public final void P(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.H();
        dbu.d(iterable, dosVar.j);
    }

    public final void Q(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.c();
        dbu.d(iterable, dosVar.g);
    }

    public final void R(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.k();
        dbu.d(iterable, dosVar.h);
    }

    public final void S(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.G();
        dbu.d(iterable, dosVar.i);
    }

    public final void T(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.b |= 65536;
        dosVar.am = j;
    }

    public final void U(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.b |= 1048576;
        dosVar.aq = j;
    }

    public final void V(int i, dor dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.J();
        dosVar.l.set(i, dorVar);
    }

    public final void W(dor dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.an = dorVar;
        dosVar.b |= 131072;
    }

    public final void X(int i, dor dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.K();
        dosVar.n.set(i, dorVar);
    }

    public final void Y(int i, dor dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.I();
        dosVar.k.set(i, dorVar);
    }

    public final void Z(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.b |= 524288;
        dosVar.ap = j;
    }

    public final void aa(long j) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dosVar.b |= 262144;
        dosVar.ao = j;
    }

    public final void ab(int i, dor dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.H();
        dosVar.j.set(i, dorVar);
    }

    public final void ac(int i, dor dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.c();
        dosVar.g.set(i, dorVar);
    }

    public final void ad(int i, dor dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.k();
        dosVar.h.set(i, dorVar);
    }

    public final void ae(int i, dor dorVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dos dosVar = (dos) this.b;
        dos dosVar2 = dos.ar;
        dorVar.getClass();
        dosVar.G();
        dosVar.i.set(i, dorVar);
    }

    public final void af(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        dpt dptVar = (dpt) this.b;
        dpt dptVar2 = dpt.c;
        ddp ddpVar = dptVar.b;
        if (!ddpVar.c()) {
            dptVar.b = ddk.v(ddpVar);
        }
        dptVar.b.g(i);
    }

    public final void ag(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        dpt dptVar = (dpt) this.b;
        dpt dptVar2 = dpt.c;
        ddp ddpVar = dptVar.a;
        if (!ddpVar.c()) {
            dptVar.a = ddk.v(ddpVar);
        }
        dptVar.a.g(i);
    }

    public final void ah(Map map) {
        if (this.c) {
            k();
            this.c = false;
        }
        dqc dqcVar = (dqc) this.b;
        dqc dqcVar2 = dqc.e;
        dem demVar = dqcVar.c;
        if (!demVar.b) {
            dqcVar.c = demVar.a();
        }
        dqcVar.c.putAll(map);
    }

    public final void ai(ddf ddfVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        k kVar = (k) this.b;
        m mVar = (m) ddfVar.h();
        k kVar2 = k.e;
        mVar.getClass();
        kVar.b();
        kVar.a.add(mVar);
    }

    public final void aj(ddf ddfVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dgx dgxVar = (dgx) this.b;
        dgw dgwVar = (dgw) ddfVar.h();
        dgx dgxVar2 = dgx.h;
        dgwVar.getClass();
        ddr ddrVar = dgxVar.e;
        if (!ddrVar.c()) {
            dgxVar.e = ddk.z(ddrVar);
        }
        dgxVar.e.add(dgwVar);
    }

    @Override // defpackage.dbu
    protected final /* synthetic */ dbu b(dbv dbvVar) {
        n((ddk) dbvVar);
        return this;
    }

    @Override // defpackage.dbu
    /* renamed from: e, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final ddf clone() {
        ddf ddfVar = (ddf) this.a.E(5);
        ddfVar.n(i());
        return ddfVar;
    }

    @Override // defpackage.deq
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final ddk h() {
        ddk i = i();
        if (i.l()) {
            return i;
        }
        throw new dfq();
    }

    @Override // defpackage.deq
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public ddk i() {
        if (this.c) {
            return this.b;
        }
        ddk ddkVar = this.b;
        dez.a.b(ddkVar).f(ddkVar);
        this.c = true;
        return this.b;
    }

    @Override // defpackage.des
    public final /* synthetic */ der j() {
        return this.a;
    }

    public void k() {
        ddk ddkVar = (ddk) this.b.E(4);
        ak(ddkVar, this.b);
        this.b = ddkVar;
    }

    @Override // defpackage.des
    public final boolean l() {
        throw null;
    }

    public final void m(dcp dcpVar, dcz dczVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        try {
            dez.a.b(this.b).h(this.b, dcq.p(dcpVar), dczVar);
        } catch (RuntimeException e) {
            if (!(e.getCause() instanceof IOException)) {
                throw e;
            }
            throw ((IOException) e.getCause());
        }
    }

    public final void n(ddk ddkVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        ak(this.b, ddkVar);
    }

    public final void o(String str) {
        if (this.c) {
            k();
            this.c = false;
        }
        cem cemVar = (cem) this.b;
        cem cemVar2 = cem.i;
        str.getClass();
        ddr ddrVar = cemVar.f;
        if (!ddrVar.c()) {
            cemVar.f = ddk.z(ddrVar);
        }
        cemVar.f.add(str);
    }

    public final void p(cen cenVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        cem cemVar = (cem) this.b;
        cem cemVar2 = cem.i;
        cenVar.getClass();
        ddr ddrVar = cemVar.e;
        if (!ddrVar.c()) {
            cemVar.e = ddk.z(ddrVar);
        }
        cemVar.e.add(cenVar);
    }

    public final void q(String str) {
        if (this.c) {
            k();
            this.c = false;
        }
        cfb cfbVar = (cfb) this.b;
        cfb cfbVar2 = cfb.d;
        str.getClass();
        ddr ddrVar = cfbVar.b;
        if (!ddrVar.c()) {
            cfbVar.b = ddk.z(ddrVar);
        }
        cfbVar.b.add(str);
    }

    public final void r(String str, cfb cfbVar) {
        str.getClass();
        cfbVar.getClass();
        if (this.c) {
            k();
            this.c = false;
        }
        cff cffVar = (cff) this.b;
        cff cffVar2 = cff.b;
        cffVar.b().put(str, cfbVar);
    }

    public final void s(Iterable iterable) {
        if (this.c) {
            k();
            this.c = false;
        }
        dbt dbtVar = (dbt) this.b;
        dbt dbtVar2 = dbt.p;
        ddr ddrVar = dbtVar.g;
        if (!ddrVar.c()) {
            dbtVar.g = ddk.z(ddrVar);
        }
        dbu.d(iterable, dbtVar.g);
    }

    public final void t(dgk dgkVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dgj dgjVar = (dgj) this.b;
        dgj dgjVar2 = dgj.c;
        dgkVar.getClass();
        ddr ddrVar = dgjVar.b;
        if (!ddrVar.c()) {
            dgjVar.b = ddk.z(ddrVar);
        }
        dgjVar.b.add(dgkVar);
    }

    public final void u(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        dgj dgjVar = (dgj) this.b;
        dgj dgjVar2 = dgj.c;
        ddp ddpVar = dgjVar.a;
        if (!ddpVar.c()) {
            dgjVar.a = ddk.v(ddpVar);
        }
        dgjVar.a.g(i - 1);
    }

    public final void v(dgj dgjVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dgk dgkVar = (dgk) this.b;
        dgk dgkVar2 = dgk.c;
        dgjVar.getClass();
        ddr ddrVar = dgkVar.b;
        if (!ddrVar.c()) {
            dgkVar.b = ddk.z(ddrVar);
        }
        dgkVar.b.add(dgjVar);
    }

    public final void w(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        dgk dgkVar = (dgk) this.b;
        dgk dgkVar2 = dgk.c;
        ddp ddpVar = dgkVar.a;
        if (!ddpVar.c()) {
            dgkVar.a = ddk.v(ddpVar);
        }
        dgkVar.a.g(i - 1);
    }

    public final void x(dgj dgjVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dgl dglVar = (dgl) this.b;
        dgl dglVar2 = dgl.c;
        dgjVar.getClass();
        dglVar.b = dgjVar;
        dglVar.a = 2;
    }

    public final void y(dgk dgkVar) {
        if (this.c) {
            k();
            this.c = false;
        }
        dgl dglVar = (dgl) this.b;
        dgl dglVar2 = dgl.c;
        dgkVar.getClass();
        dglVar.b = dgkVar;
        dglVar.a = 3;
    }

    public final void z(int i) {
        if (this.c) {
            k();
            this.c = false;
        }
        dgl dglVar = (dgl) this.b;
        dgl dglVar2 = dgl.c;
        dglVar.b = Integer.valueOf(i - 1);
        dglVar.a = 1;
    }

    public ddf(ddk ddkVar) {
        this.a = ddkVar;
        this.b = (ddk) ddkVar.E(4);
        this.c = false;
    }
}
