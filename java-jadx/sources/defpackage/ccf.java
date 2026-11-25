package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ccf extends cci {
    private final boolean a;

    public ccf(dpy dpyVar, boolean z) {
        super(dpyVar);
        this.a = z;
    }

    private final dpy f(Long l) {
        return this.a ? e(l) : d();
    }

    @Override // defpackage.cci
    public final long a(String str) {
        dpy f = f(null);
        if (f.equals(dpy.d)) {
            return 1000L;
        }
        return f.b;
    }

    @Override // defpackage.cci
    public final dpy b(Long l) {
        return f(l);
    }

    @Override // defpackage.cci
    public final boolean c() {
        return this.a;
    }
}
