package defpackage;

import android.os.SystemClock;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cau extends car implements bwq {
    public static final /* synthetic */ int f = 0;
    public final bwn b;
    final ConcurrentHashMap c = new ConcurrentHashMap();
    public final dgz d;
    public final col e;
    private final Executor h;
    private static final csz g = csz.g("com/google/android/libraries/performance/primes/metrics/timer/TimerMetricServiceImpl");
    static final cqw a = cqw.r("Cold startup", "Cold startup interactive", "Cold startup interactive before onDraw", "Warm startup", "Warm startup interactive", "Warm startup interactive before onDraw", "Warm startup activity onStart", "Cold startup class loading", "Cold startup from process creation", "Cold startup interactive before onDraw from process creation", "Cold startup interactive from process creation");

    public cau(bwo bwoVar, Executor executor, final dgz dgzVar, dny dnyVar, final cbv cbvVar) {
        this.b = bwoVar.a(czj.a, dgzVar, dnyVar);
        this.h = executor;
        this.d = dgzVar;
        this.e = ex.i(new col() { // from class: cas
            @Override // defpackage.col
            public final Object a() {
                cbv cbvVar2 = cbv.this;
                dgz dgzVar2 = dgzVar;
                int i = cau.f;
                return cbvVar2.a(((cap) dgzVar2.a()).b);
            }
        });
    }

    private final synchronized dag c(String str, int i) {
        caq caqVar = (caq) this.c.remove(str);
        if (caq.b(caqVar)) {
            return dad.a;
        }
        final long a2 = this.b.a(str);
        if (a2 == -1) {
            return dad.a;
        }
        caqVar.c = SystemClock.elapsedRealtime();
        caqVar.e = i;
        caqVar.a();
        int i2 = 1;
        final String str2 = true != coe.d(null) ? null : str;
        ddf n = dpz.y.n();
        ddf n2 = dqa.d.n();
        long a3 = caqVar.a();
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        dqa dqaVar = (dqa) n2.b;
        int i3 = dqaVar.a | 1;
        dqaVar.a = i3;
        dqaVar.b = a3;
        switch (caqVar.e - 1) {
            case 1:
                i2 = 2;
                break;
            case 2:
                i2 = 3;
                break;
            case 3:
                i2 = 4;
                break;
        }
        dqaVar.c = i2 - 1;
        dqaVar.a = i3 | 2;
        dqa dqaVar2 = (dqa) n2.h();
        if (n.c) {
            n.k();
            n.c = false;
        }
        dpz dpzVar = (dpz) n.b;
        dqaVar2.getClass();
        dpzVar.e = dqaVar2;
        dpzVar.a |= 8;
        final dpz dpzVar2 = (dpz) n.h();
        return hh.m(new czb() { // from class: cat
            @Override // defpackage.czb
            public final dag a() {
                cau cauVar = cau.this;
                String str3 = str2;
                long j = a2;
                dpz dpzVar3 = dpzVar2;
                if (!((cbu) cauVar.e.a()).a()) {
                    return dad.a;
                }
                coc cocVar = ((cap) cauVar.d.a()).c;
                bwn bwnVar = cauVar.b;
                bwi a4 = bwj.a();
                a4.b(true);
                a4.d = Long.valueOf(j);
                a4.d(dpzVar3);
                a4.a = str3;
                a4.b = null;
                return bwnVar.b(a4.a());
            }
        }, this.h);
    }

    @Override // defpackage.car
    public final caq a(btx btxVar) {
        String str = btxVar.a;
        if (a.contains(str)) {
            ((csx) g.c().h("com/google/android/libraries/performance/primes/metrics/timer/TimerMetricServiceImpl", "startGlobal", 120, "TimerMetricServiceImpl.java")).p("%s is reserved event. Dropping timer.", str);
            return caq.a;
        }
        if (!this.b.d()) {
            return caq.a;
        }
        caq caqVar = new caq();
        this.c.put(str, caqVar);
        return caqVar;
    }

    @Override // defpackage.car
    public final dag b(btx btxVar, int i) {
        return c(btxVar.a, i);
    }

    @Override // defpackage.bwq
    public final /* synthetic */ void u() {
    }
}
