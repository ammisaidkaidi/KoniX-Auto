package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ta {
    public final vi a = new vi();
    public final vg b = new vg();

    public final qu a(rr rrVar, int i) {
        sz szVar;
        qu quVar;
        int c = this.a.c(rrVar);
        if (c >= 0 && (szVar = (sz) this.a.i(c)) != null) {
            int i2 = szVar.a;
            if ((i2 & i) != 0) {
                int i3 = (i ^ (-1)) & i2;
                szVar.a = i3;
                if (i == 4) {
                    quVar = szVar.b;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    quVar = szVar.c;
                }
                if ((i3 & 12) == 0) {
                    this.a.g(c);
                    sz.b(szVar);
                }
                return quVar;
            }
        }
        return null;
    }

    final void b(rr rrVar) {
        sz szVar = (sz) this.a.get(rrVar);
        if (szVar == null) {
            szVar = sz.a();
            this.a.put(rrVar, szVar);
        }
        szVar.a |= 1;
    }

    public final void c(long j, rr rrVar) {
        this.b.f(j, rrVar);
    }

    public final void d(rr rrVar, qu quVar) {
        sz szVar = (sz) this.a.get(rrVar);
        if (szVar == null) {
            szVar = sz.a();
            this.a.put(rrVar, szVar);
        }
        szVar.c = quVar;
        szVar.a |= 8;
    }

    public final void e(rr rrVar, qu quVar) {
        sz szVar = (sz) this.a.get(rrVar);
        if (szVar == null) {
            szVar = sz.a();
            this.a.put(rrVar, szVar);
        }
        szVar.b = quVar;
        szVar.a |= 4;
    }

    public final void f() {
        this.a.clear();
        this.b.e();
    }

    final void g(rr rrVar) {
        sz szVar = (sz) this.a.get(rrVar);
        if (szVar == null) {
            return;
        }
        szVar.a &= -2;
    }

    final void h(rr rrVar) {
        int a = this.b.a() - 1;
        while (true) {
            if (a < 0) {
                break;
            }
            if (rrVar == this.b.d(a)) {
                vg vgVar = this.b;
                if (vgVar.d[a] != vg.a) {
                    vgVar.d[a] = vg.a;
                    vgVar.b = true;
                }
            } else {
                a--;
            }
        }
        sz szVar = (sz) this.a.remove(rrVar);
        if (szVar != null) {
            sz.b(szVar);
        }
    }

    public final boolean i(rr rrVar) {
        sz szVar = (sz) this.a.get(rrVar);
        return (szVar == null || (szVar.a & 1) == 0) ? false : true;
    }
}
