package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byp {
    public Integer a;
    public Boolean b;
    public coc c;
    public Boolean d;
    public Boolean e;
    public int f;
    private Boolean g;

    public byp() {
    }

    public byp(byte[] bArr) {
        this.c = cns.a;
    }

    public final byq a() {
        Integer num;
        int i = this.f;
        if (i != 0 && (num = this.a) != null && this.b != null && this.d != null && this.g != null && this.e != null) {
            return new byq(i, num.intValue(), this.b.booleanValue(), this.c, this.d.booleanValue(), this.g.booleanValue(), this.e.booleanValue());
        }
        StringBuilder sb = new StringBuilder();
        if (this.f == 0) {
            sb.append(" enablement");
        }
        if (this.a == null) {
            sb.append(" rateLimitPerSecond");
        }
        if (this.b == null) {
            sb.append(" recordMetricPerProcess");
        }
        if (this.d == null) {
            sb.append(" forceGcBeforeRecordMemory");
        }
        if (this.g == null) {
            sb.append(" captureDebugMetrics");
        }
        if (this.e == null) {
            sb.append(" captureMemoryInfo");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final void b(boolean z) {
        this.g = Boolean.valueOf(z);
    }

    public final void c(boolean z) {
        this.f = true != z ? 2 : 3;
    }
}
