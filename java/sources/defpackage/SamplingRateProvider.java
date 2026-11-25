package defpackage;

import java.util.Random;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SamplingRateProvider {
    public final DaggerProviderInterface a;

    public SamplingRateProvider(DaggerProviderInterface dnyVar, byte[] bArr, byte[] bArr2) {
        dnyVar.getClass();
        this.a = dnyVar;
    }

    public final SamplingProbabilityValidator a(float f) {
        Random random = (Random) this.a.a();
        random.getClass();
        return new SamplingProbabilityValidator(random, f);
    }

    public SamplingRateProvider(DaggerProviderInterface dnyVar, byte[] bArr) {
        dnyVar.getClass();
        this.a = dnyVar;
    }

    public SamplingRateProvider(DaggerProviderInterface dnyVar) {
        dnyVar.getClass();
        this.a = dnyVar;
    }
}
