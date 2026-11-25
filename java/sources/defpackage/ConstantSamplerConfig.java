package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ConstantSamplerConfig extends AbstractSamplingConfiguration {
    private final boolean a;

    public ConstantSamplerConfig(PrimesMetricConfigProto dpyVar, boolean z) {
        super(dpyVar);
        this.a = z;
    }

    private final PrimesMetricConfigProto f(Long l) {
        return this.a ? e(ProtoMessageSingleStringL) : d();
    }

    @Override // defpackage.AbstractSamplingConfiguration
    public final long a(String str) {
        PrimesMetricConfigProto f = f(null);
        if (f.equals(dpy.d)) {
            return 1000L;
        }
        return f.b;
    }

    @Override // defpackage.AbstractSamplingConfiguration
    public final PrimesMetricConfigProto b(Long l) {
        return f(ProtoMessageSingleStringL);
    }

    @Override // defpackage.AbstractSamplingConfiguration
    public final boolean c() {
        return this.a;
    }
}
