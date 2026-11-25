package defpackage;

import com.google.android.libraries.performance.primes.transmitter.clearcut.ClearcutMetricSnapshotTransmitter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutProviders implements DaggerProvider {
    private final /* synthetic */ int a;

    public ClearcutProviders(int i) {
        this.a = i;
    }

    public static ClearcutMetricSnapshotTransmitter b() {
        return new ClearcutMetricSnapshotTransmitter();
    }

    public static TimeSource c() {
        SystemTimeSource cxyVar = cxy.a;
        CommonObjectsAndPreconditionsUtil.m(cxyVar);
        return cxyVar;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* synthetic */ Object a() {
        switch (this.a) {
            case 0:
                throw null;
            case 1:
                return true;
            case 2:
                return c();
            default:
                return new StingEmptyComponentHolder();
        }
    }
}
