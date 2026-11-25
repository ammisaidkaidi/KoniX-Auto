package defpackage;

import android.content.Context;
import com.google.android.libraries.performance.primes.transmitter.clearcut.ClearcutMetricSnapshotTransmitter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cdh implements ccw {
    public final Context a;
    public final ClearcutMetricSnapshotTransmitter b;
    private final col c;
    private final boolean d;
    private final cdc e;

    public cdh(Context context, coc cocVar, cdc cdcVar, ClearcutMetricSnapshotTransmitter clearcutMetricSnapshotTransmitter) {
        this.a = context;
        this.c = ex.i(new bya(context, 2));
        this.d = c(cocVar);
        this.e = cdcVar;
        this.b = clearcutMetricSnapshotTransmitter;
    }

    public static boolean c(coc cocVar) {
        return ((Boolean) cocVar.b(false)).booleanValue();
    }

    @Override // defpackage.ccw
    public final ccv a() {
        return new ccv(9);
    }

    @Override // defpackage.ccw
    public final void b(final dpz dpzVar) {
        int i;
        if (this.d) {
            dpm dpmVar = dpzVar.h;
            if (dpmVar == null) {
                dpmVar = dpm.i;
            }
            if ((dpmVar.a & 1) != 0) {
                return;
            }
        }
        if ((dpzVar.a & 2048) != 0 && ((Boolean) this.c.a()).booleanValue()) {
            ddf ddfVar = (ddf) dpzVar.E(5);
            ddfVar.n(dpzVar);
            dpq dpqVar = dpzVar.l;
            if (dpqVar == null) {
                dpqVar = dpq.o;
            }
            ddr<dpp> ddrVar = dpqVar.j;
            if (!ddrVar.isEmpty()) {
                ddf n = dpt.c.n();
                dpp dppVar = null;
                for (dpp dppVar2 : ddrVar) {
                    if (dppVar != null && (i = dppVar.d + 1) != dppVar2.c) {
                        n.ag(0);
                        n.af(i);
                    }
                    n.ag(dppVar2.b);
                    n.af(dppVar2.c);
                    dppVar = dppVar2;
                }
                if (dppVar != null && (dppVar.a & 4) != 0) {
                    int i2 = dppVar.d;
                    n.ag(0);
                    n.af(i2 + 1);
                }
                ddf ddfVar2 = (ddf) dpqVar.E(5);
                ddfVar2.n(dpqVar);
                if (ddfVar2.c) {
                    ddfVar2.k();
                    ddfVar2.c = false;
                }
                ((dpq) ddfVar2.b).j = dpq.y();
                if (ddfVar2.c) {
                    ddfVar2.k();
                    ddfVar2.c = false;
                }
                dpq dpqVar2 = (dpq) ddfVar2.b;
                dpt dptVar = (dpt) n.h();
                dptVar.getClass();
                dpqVar2.i = dptVar;
                dpqVar2.a |= 128;
                dpqVar = (dpq) ddfVar2.h();
            }
            if (ddfVar.c) {
                ddfVar.k();
                ddfVar.c = false;
            }
            dpz dpzVar2 = (dpz) ddfVar.b;
            dpqVar.getClass();
            dpzVar2.l = dpqVar;
            dpzVar2.a |= 2048;
            dpzVar = (dpz) ddfVar.h();
        }
        hh.p(cyt.p(this.e.a(), new czc() { // from class: cdf
            @Override // defpackage.czc
            public final dag a(Object obj) {
                cdh cdhVar = cdh.this;
                dpz dpzVar3 = dpzVar;
                ClearcutMetricSnapshotTransmitter clearcutMetricSnapshotTransmitter = cdhVar.b;
                Context context = cdhVar.a;
                ddh ddhVar = (ddh) ccs.c.n();
                ddhVar.n((ccs) obj);
                if (ddhVar.c) {
                    ddhVar.k();
                    ddhVar.c = false;
                }
                ccs ccsVar = (ccs) ddhVar.b;
                dpzVar3.getClass();
                ccsVar.b = dpzVar3;
                ccsVar.a |= 1;
                return clearcutMetricSnapshotTransmitter.a(context, (ccs) ddhVar.h());
            }
        }, czj.a), new cdg(), czj.a);
    }
}
