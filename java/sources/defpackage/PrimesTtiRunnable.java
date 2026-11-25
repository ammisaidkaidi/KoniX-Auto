package defpackage;

import android.os.SystemClock;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class PrimesTtiRunnable implements Runnable {
    public final /* synthetic */ AareceiverActivityBase a;
    private final /* synthetic */ int b;

    public /* synthetic */ bfg(AareceiverActivityBase bfiVar, int i) {
        this.b = i;
        this.a = bfiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 1;
        switch (this.b) {
            case 0:
                AareceiverActivityBase bfiVar = this.a;
                View m = bfiVar.m();
                if (ProtoCompositeMessageM != null) {
                    m.post(new PrimesTtiRunnable(bfiVar, i));
                    break;
                }
                break;
            default:
                AareceiverActivityBase bfiVar2 = this.a;
                StartupTimingRecorder caaVar = caa.a;
                if (GoogleSignatureVerifier.h() && caaVar.j == 0) {
                    caaVar.j = SystemClock.elapsedRealtime();
                    StartupTimingRecorder.b("Primes-tti-end-and-length-ms", caaVar.j);
                    caaVar.l.k = true;
                    try {
                        bfiVar2.reportFullyDrawn();
                        break;
                    } catch (RuntimeException e) {
                        return;
                    }
                }
                break;
        }
    }
}
