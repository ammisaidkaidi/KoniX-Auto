package defpackage;

import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class deu implements dfg {
    private final der a;
    private final boolean b;
    private final ev c;

    private deu(ev evVar, der derVar, byte[] bArr, byte[] bArr2) {
        this.c = evVar;
        this.b = derVar instanceof ddi;
        this.a = derVar;
    }

    static deu c(ev evVar, hl hlVar, der derVar) {
        return new deu(evVar, derVar, null, null);
    }

    @Override // defpackage.dfg
    public final int a(Object obj) {
        dfr M = ev.M(obj);
        int i = M.e;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < M.b; i2++) {
                int i3 = M.c[i2];
                dcl dclVar = (dcl) M.d[i2];
                int ab = dcu.ab(1);
                i += ab + ab + dcu.ac(2, dge.a(i3)) + dcu.H(3, dclVar);
            }
            M.e = i;
        }
        if (!this.b) {
            return i;
        }
        ddb o = hl.o(obj);
        int i4 = 0;
        for (int i5 = 0; i5 < o.b.a(); i5++) {
            i4 += o.b(o.b.f(i5));
        }
        Iterator it = o.b.c().iterator();
        while (it.hasNext()) {
            i4 += o.b((Map.Entry) it.next());
        }
        return i + i4;
    }

    @Override // defpackage.dfg
    public final int b(Object obj) {
        int hashCode = ev.M(obj).hashCode();
        return this.b ? (hashCode * 53) + hl.o(obj).hashCode() : hashCode;
    }

    @Override // defpackage.dfg
    public final Object e() {
        return this.a.aF().i();
    }

    @Override // defpackage.dfg
    public final void f(Object obj) {
        ev.P(obj);
        hl.s(obj);
    }

    @Override // defpackage.dfg
    public final void g(Object obj, Object obj2) {
        dfh.V(obj, obj2);
        if (this.b) {
            dfh.T(obj, obj2);
        }
    }

    @Override // defpackage.dfg
    public final void h(Object obj, dfc dfcVar, dcz dczVar) {
        boolean U;
        ev evVar = this.c;
        Object O = ev.O(obj);
        ddb p = hl.p(obj);
        while (dfcVar.c() != Integer.MAX_VALUE) {
            try {
                int d = dfcVar.d();
                if (d != dge.a) {
                    if (dge.b(d) == 2) {
                        dcx c = dczVar.c(this.a, dge.a(d));
                        if (c != null) {
                            hl.q(dfcVar, c, dczVar, p);
                        } else {
                            U = evVar.J(O, dfcVar);
                        }
                    } else {
                        U = dfcVar.U();
                    }
                    if (!U) {
                        break;
                    }
                } else {
                    int i = 0;
                    dcx dcxVar = null;
                    dcl dclVar = null;
                    while (dfcVar.c() != Integer.MAX_VALUE) {
                        int d2 = dfcVar.d();
                        if (d2 == dge.c) {
                            i = dfcVar.j();
                            dcxVar = dczVar.c(this.a, i);
                        } else if (d2 == dge.d) {
                            if (dcxVar != null) {
                                hl.q(dfcVar, dcxVar, dczVar, p);
                            } else {
                                dclVar = dfcVar.q();
                            }
                        } else if (!dfcVar.U()) {
                            break;
                        }
                    }
                    if (dfcVar.d() != dge.b) {
                        throw ddu.b();
                    }
                    if (dclVar == null) {
                        continue;
                    } else if (dcxVar != null) {
                        der i2 = ((ddf) ((ddk) dcxVar.c).E(5)).i();
                        ByteBuffer wrap = ByteBuffer.wrap(dclVar.C());
                        if (!wrap.hasArray()) {
                            throw new IllegalArgumentException("Direct buffers not yet supported");
                        }
                        dcb dcbVar = new dcb(wrap);
                        dez.a.b(i2).h(i2, dcbVar, dczVar);
                        p.l(dcxVar.d, i2);
                        if (dcbVar.c() != Integer.MAX_VALUE) {
                            throw ddu.b();
                        }
                    } else {
                        ev.K(O, i, dclVar);
                    }
                }
            } finally {
                ev.N(obj, (dfr) O);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0075. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ba  */
    @Override // defpackage.dfg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(Object obj, byte[] bArr, int i, int i2, dca dcaVar) {
        ddk ddkVar = (ddk) obj;
        dfr dfrVar = ddkVar.s;
        if (dfrVar == dfr.a) {
            dfrVar = dfr.b();
            ddkVar.s = dfrVar;
        }
        ddb c = ((ddi) obj).c();
        dcx dcxVar = null;
        while (i < i2) {
            int F = hl.F(bArr, i, dcaVar);
            int i3 = dcaVar.a;
            if (i3 == dge.a) {
                int i4 = 0;
                dcl dclVar = null;
                while (F < i2) {
                    F = hl.F(bArr, F, dcaVar);
                    int i5 = dcaVar.a;
                    int b = dge.b(i5);
                    switch (dge.a(i5)) {
                        case 2:
                            if (b != 0) {
                                if (i5 == dge.b) {
                                    break;
                                } else {
                                    F = hl.J(i5, bArr, F, i2, dcaVar);
                                }
                            } else {
                                F = hl.F(bArr, F, dcaVar);
                                i4 = dcaVar.a;
                                dcxVar = dcaVar.d.c(this.a, i4);
                            }
                        case 3:
                            if (dcxVar != null) {
                                F = hl.z(dez.a.a(dcxVar.c.getClass()), bArr, F, i2, dcaVar);
                                c.l(dcxVar.d, dcaVar.c);
                            } else if (b == 2) {
                                F = hl.w(bArr, F, dcaVar);
                                dclVar = (dcl) dcaVar.c;
                            } else if (i5 == dge.b) {
                            }
                            break;
                        default:
                            if (i5 == dge.b) {
                            }
                            break;
                    }
                    if (dclVar != null) {
                        dfrVar.d(dge.c(i4, 2), dclVar);
                    }
                    i = F;
                }
                if (dclVar != null) {
                }
                i = F;
            } else if (dge.b(i3) == 2) {
                dcx c2 = dcaVar.d.c(this.a, dge.a(i3));
                if (c2 != null) {
                    i = hl.z(dez.a.a(c2.c.getClass()), bArr, F, i2, dcaVar);
                    c.l(c2.d, dcaVar.c);
                    dcxVar = c2;
                } else {
                    i = hl.E(i3, bArr, F, i2, dfrVar, dcaVar);
                    dcxVar = c2;
                }
            } else {
                i = hl.J(i3, bArr, F, i2, dcaVar);
            }
        }
        if (i != i2) {
            throw ddu.g();
        }
    }

    @Override // defpackage.dfg
    public final boolean j(Object obj, Object obj2) {
        if (!ev.M(obj).equals(ev.M(obj2))) {
            return false;
        }
        if (this.b) {
            return hl.o(obj).equals(hl.o(obj2));
        }
        return true;
    }

    @Override // defpackage.dfg
    public final boolean k(Object obj) {
        return hl.o(obj).i();
    }

    @Override // defpackage.dfg
    public final void l(Object obj, dcv dcvVar) {
        Iterator d = hl.o(obj).d();
        while (d.hasNext()) {
            Map.Entry entry = (Map.Entry) d.next();
            if (((ddj) entry.getKey()).a() != dgd.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof ddx) {
                dcvVar.l(334728578, ((ddz) ((ddx) entry).a.getValue()).a());
            } else {
                dcvVar.l(334728578, entry.getValue());
            }
        }
        dfr M = ev.M(obj);
        for (int i = 0; i < M.b; i++) {
            dcvVar.l(dge.a(M.c[i]), M.d[i]);
        }
    }
}
