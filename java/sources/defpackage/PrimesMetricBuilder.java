package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesMetricBuilder {
    public String a;
    public ProtoEmptyMessageBeta b;
    public String c;
    public Long d;
    public StackTraceSnapshot e;
    private Boolean f;
    private ProtoRootAggregateMessage g;
    private Boolean h;

    public final PrimesMetric a() {
        Boolean bool = this.f;
        if (bool != null && this.g != null && this.h != null) {
            return new PrimesMetric(this.a, bool.booleanValue(), this.g, this.b, this.c, this.d, this.h.booleanValue(), this.e);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f == null) {
            StaggeredGridLayoutParams.append(" isEventNameConstant");
        }
        if (this.g == null) {
            StaggeredGridLayoutParams.append(" metric");
        }
        if (this.h == null) {
            StaggeredGridLayoutParams.append(" isUnsampled");
        }
        throw new IllegalStateException("Missing required properties:".concat(StaggeredGridLayoutParams.toString()));
    }

    public final void b(boolean z) {
        this.f = Boolean.valueOf(IcuMessageFormat);
    }

    public final void c(boolean z) {
        this.h = Boolean.valueOf(IcuMessageFormat);
    }

    public final void d(ProtoRootAggregateMessage dpzVar) {
        if (dpzVar == null) {
            throw new NullPointerException("Null metric");
        }
        this.g = dpzVar;
    }
}
