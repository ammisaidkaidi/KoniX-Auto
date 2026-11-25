package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cao {
    public Integer a;
    public Float b;
    public coc c;
    public int d;

    public cao() {
    }

    public cao(byte[] bArr) {
        this.c = cns.a;
    }

    public final cap a() {
        Integer num;
        int i = this.d;
        if (i != 0 && (num = this.a) != null && this.b != null) {
            cap capVar = new cap(i, num.intValue(), this.b.floatValue(), this.c);
            ex.s(capVar.a >= 0, "Rate limit per second must be >= 0");
            float f = capVar.b;
            ex.s(f > 0.0f && f <= 1.0f, "Sampling Probability shall be > 0 and <= 1");
            return capVar;
        }
        StringBuilder sb = new StringBuilder();
        if (this.d == 0) {
            sb.append(" enablement");
        }
        if (this.a == null) {
            sb.append(" rateLimitPerSecond");
        }
        if (this.b == null) {
            sb.append(" samplingProbability");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    public final void b(boolean z) {
        this.d = true != z ? 2 : 3;
    }
}
