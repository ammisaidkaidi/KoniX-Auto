package defpackage;

import android.app.Activity;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bzm extends byl implements bvd, bwq {
    public final bwn a;
    public final dgz b;
    private final dai c;
    private final Object d;
    private final ArrayList e;
    private final AtomicInteger f;

    public bzm(bwo bwoVar, bvh bvhVar, dai daiVar, dgz dgzVar, dgz dgzVar2, dny dnyVar, Executor executor) {
        super(null);
        this.d = new Object();
        this.e = new ArrayList(0);
        this.f = new AtomicInteger();
        this.a = bwoVar.a(executor, dgzVar, dnyVar);
        this.c = daiVar;
        this.b = dgzVar2;
        bvhVar.a(this);
    }

    public final dag a() {
        final bzi[] bziVarArr;
        if (this.f.get() > 0) {
            czb czbVar = new czb() { // from class: bzk
                @Override // defpackage.czb
                public final dag a() {
                    return bzm.this.a();
                }
            };
            TimeUnit timeUnit = TimeUnit.SECONDS;
            dai daiVar = this.c;
            dax e = dax.e(czbVar);
            e.aW(new czw(daiVar.schedule(e, 1L, timeUnit)), czj.a);
            return e;
        }
        synchronized (this.d) {
            if (this.e.isEmpty()) {
                bziVarArr = null;
            } else {
                ArrayList arrayList = this.e;
                bziVarArr = (bzi[]) arrayList.toArray(new bzi[arrayList.size()]);
                this.e.clear();
            }
        }
        return bziVarArr == null ? dad.a : hh.m(new czb() { // from class: bzl
            @Override // defpackage.czb
            public final dag a() {
                bzm bzmVar = bzm.this;
                bzi[] bziVarArr2 = bziVarArr;
                bwn bwnVar = bzmVar.a;
                bwi a = bwj.a();
                bzj bzjVar = (bzj) bzmVar.b.a();
                ddf n = doz.b.n();
                if (bziVarArr2.length <= 0) {
                    ddf n2 = dpz.y.n();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    dpz dpzVar = (dpz) n2.b;
                    doz dozVar = (doz) n.h();
                    dozVar.getClass();
                    dpzVar.g = dozVar;
                    dpzVar.a |= 32;
                    try {
                        ((btq) bzjVar.b).a();
                    } catch (Exception e2) {
                        ((csx) ((csx) bzj.a.c().g(e2)).h("com/google/android/libraries/performance/primes/metrics/network/NetworkMetricCollector", "getMetric", 240, "NetworkMetricCollector.java")).n("Exception while getting network metric extension!");
                    }
                    a.d((dpz) n2.h());
                    return bwnVar.b(a.a());
                }
                ddf n3 = doy.g.n();
                bzi bziVar = bziVarArr2[0];
                int i = bziVar.d;
                int i2 = bziVar.c;
                long j = bziVar.b;
                long j2 = bziVar.a;
                int i3 = bziVar.g;
                if (n3.c) {
                    n3.k();
                    n3.c = false;
                }
                doy doyVar = (doy) n3.b;
                doyVar.a |= 32;
                doyVar.b = 0;
                int i4 = bziVarArr2[0].j;
                ddf n4 = dpa.c.n();
                int i5 = bziVarArr2[0].j;
                if (n4.c) {
                    n4.k();
                    n4.c = false;
                }
                dpa dpaVar = (dpa) n4.b;
                dpaVar.a |= 1;
                dpaVar.b = 0;
                dpa dpaVar2 = (dpa) n4.h();
                if (n3.c) {
                    n3.k();
                    n3.c = false;
                }
                doy doyVar2 = (doy) n3.b;
                dpaVar2.getClass();
                doyVar2.f = dpaVar2;
                doyVar2.a |= 4194304;
                bzi bziVar2 = bziVarArr2[0];
                String str = bziVar2.h;
                String str2 = bziVar2.f;
                if (!coe.d(null)) {
                    throw null;
                }
                if (n3.c) {
                    n3.k();
                    n3.c = false;
                }
                doy doyVar3 = (doy) n3.b;
                doyVar3.c = 0;
                doyVar3.a |= 256;
                ((btq) bzjVar.b).a();
                bzi bziVar3 = bziVarArr2[0];
                String str3 = bziVar3.e;
                dpg dpgVar = bziVar3.i;
                throw null;
            }
        }, this.c);
    }

    @Override // defpackage.bvd
    public final void c(Activity activity) {
        a();
    }

    @Override // defpackage.bwq
    public final /* synthetic */ void u() {
    }
}
