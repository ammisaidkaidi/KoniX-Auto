package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bmb {
    public blx a;
    public bjb[] b;
    private boolean d = true;
    public int c = 0;

    public final bmc a() {
        hr.f(this.a != null, "execute parameter required");
        return new bmc(this, this.b, this.d, this.c);
    }

    public final void b() {
        this.d = false;
    }
}
