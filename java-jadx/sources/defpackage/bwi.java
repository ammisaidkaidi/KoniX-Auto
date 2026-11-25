package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bwi {
    public String a;
    public dot b;
    public String c;
    public Long d;
    public bus e;
    private Boolean f;
    private dpz g;
    private Boolean h;

    public final bwj a() {
        Boolean bool = this.f;
        if (bool != null && this.g != null && this.h != null) {
            return new bwj(this.a, bool.booleanValue(), this.g, this.b, this.c, this.d, this.h.booleanValue(), this.e);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f == null) {
            sb.append(" isEventNameConstant");
        }
        if (this.g == null) {
            sb.append(" metric");
        }
        if (this.h == null) {
            sb.append(" isUnsampled");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final void b(boolean z) {
        this.f = Boolean.valueOf(z);
    }

    public final void c(boolean z) {
        this.h = Boolean.valueOf(z);
    }

    public final void d(dpz dpzVar) {
        if (dpzVar == null) {
            throw new NullPointerException("Null metric");
        }
        this.g = dpzVar;
    }
}
