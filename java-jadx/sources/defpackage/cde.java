package defpackage;

import com.google.android.libraries.performance.primes.transmitter.clearcut.ClearcutMetricSnapshotTransmitter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cde implements dhx {
    private final /* synthetic */ int a;

    public cde(int i) {
        this.a = i;
    }

    public static ClearcutMetricSnapshotTransmitter b() {
        return new ClearcutMetricSnapshotTransmitter();
    }

    public static cxz c() {
        cxy cxyVar = cxy.a;
        dpx.m(cxyVar);
        return cxyVar;
    }

    @Override // defpackage.dny
    public final /* synthetic */ Object a() {
        switch (this.a) {
            case 0:
                throw null;
            case 1:
                return true;
            case 2:
                return c();
            default:
                return new dhh();
        }
    }
}
