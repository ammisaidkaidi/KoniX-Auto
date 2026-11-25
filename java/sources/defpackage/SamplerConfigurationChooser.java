package defpackage;

import java.util.Random;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SamplerConfigurationChooser {
    static final AbstractSamplingConfiguration a = new ConstantSamplerConfig(dpy.d, true);
    private final Random b;
    private final SamplingRandomTable c;

    public SamplerConfigurationChooser(Random random, SamplingRandomTable cbrVar) {
        this.b = random;
        this.c = cbrVar;
    }

    final AbstractSamplingConfiguration a(PrimesMetricConfigProto dpyVar) {
        int a2 = CommonObjectsAndPreconditionsUtil.a(dpyVar.c);
        if (a2 == 0) {
            a2 = 1;
        }
        switch (a2 - 1) {
            case 1:
                return new ConstantSamplerConfig(dpyVar, dpyVar.b == 1000);
            case 3:
                return new ConstantSamplerConfig(dpyVar, this.b.nextDouble() * 1000.0d < ((double) dpyVar.b));
            case 4:
                return new FlagSamplingConfig(dpyVar, this.b, this.c);
            case 5:
                dpyVar = dpy.d;
                break;
        }
        return new ConstantSamplerConfig(dpyVar, true);
    }
}
