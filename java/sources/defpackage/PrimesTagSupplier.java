package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class PrimesTagSupplier implements StopwatchTicker {
    public final /* synthetic */ Context a;
    private final /* synthetic */ int b;

    public /* synthetic */ bya(Context context, int i) {
        this.b = i;
        this.a = context;
    }

    @Override // defpackage.StopwatchTicker
    public final Object a() {
        switch (this.b) {
            case 0:
                Context context = this.a;
                if (bxx.a == 0) {
                    synchronized (FrameDurationCalculator.class) {
                        if (bxx.a == 0) {
                            int a = FrameDurationCalculator.a(context);
                            if (SingleStringProtoMessage <= 0) {
                                a = 60;
                            }
                            double d = a;
                            Double.isNaN(ProtoMsgIntStringInt);
                            bxx.a = (int) Math.ceil(1000.0d / d);
                        }
                    }
                }
                return Integer.valueOf(bxx.a);
            case 1:
                return this.a.getSharedPreferences("primes", 0);
            case 2:
                return Boolean.valueOf(PrimesBoolFlags45359218Provider.a.a().c(this.a));
            case 3:
                return new SinglePackagePhenotypeStorage(PhenotypeApi.a(this.a));
            default:
                Context context2 = this.a;
                int i = cei.d;
                return PhenotypeFlagStringMatcher.c(context2);
        }
    }
}
