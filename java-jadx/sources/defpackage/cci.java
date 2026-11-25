package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cci {
    private final dpy a;

    public cci(dpy dpyVar) {
        this.a = dpyVar;
    }

    public abstract long a(String str);

    public abstract dpy b(Long l);

    public abstract boolean c();

    public final dpy d() {
        dpy e = e(null);
        ddf ddfVar = (ddf) e.E(5);
        ddfVar.n(e);
        if (ddfVar.c) {
            ddfVar.k();
            ddfVar.c = false;
        }
        dpy dpyVar = (dpy) ddfVar.b;
        dpy dpyVar2 = dpy.d;
        dpyVar.a |= 2;
        dpyVar.b = -1L;
        return (dpy) ddfVar.h();
    }

    public final dpy e(Long l) {
        int a = dpx.a(this.a.c);
        if (a == 0 || a != 5 || l == null || l.longValue() == this.a.b) {
            return this.a;
        }
        ddf n = dpy.d.n();
        int a2 = dpx.a(this.a.c);
        if (a2 == 0) {
            a2 = 1;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        dpy dpyVar = (dpy) n.b;
        dpyVar.c = a2 - 1;
        dpyVar.a |= 4;
        long longValue = l.longValue();
        if (n.c) {
            n.k();
            n.c = false;
        }
        dpy dpyVar2 = (dpy) n.b;
        dpyVar2.a |= 2;
        dpyVar2.b = longValue;
        return (dpy) n.h();
    }
}
