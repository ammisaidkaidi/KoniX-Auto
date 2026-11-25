package defpackage;

import android.os.SystemClock;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class bfg implements Runnable {
    public final /* synthetic */ bfi a;
    private final /* synthetic */ int b;

    public /* synthetic */ bfg(bfi bfiVar, int i) {
        this.b = i;
        this.a = bfiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 1;
        switch (this.b) {
            case 0:
                bfi bfiVar = this.a;
                View m = bfiVar.m();
                if (m != null) {
                    m.post(new bfg(bfiVar, i));
                    break;
                }
                break;
            default:
                bfi bfiVar2 = this.a;
                caa caaVar = caa.a;
                if (bjq.h() && caaVar.j == 0) {
                    caaVar.j = SystemClock.elapsedRealtime();
                    caa.b("Primes-tti-end-and-length-ms", caaVar.j);
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
