package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.os.Trace;
import android.util.ArrayMap;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class byf extends byl implements bvd, bwq {
    private static final csz a = csz.g("com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl");
    private final Application b;
    private final bvh c;
    private final bxz d;
    private final bxw e;
    private final ArrayMap f;
    private final bwn g;
    private final dny h;
    private final bwv i;
    private final col j;
    private final dny k;

    public byf(bwo bwoVar, Context context, bvh bvhVar, dgz dgzVar, bxw bxwVar, dny dnyVar, dny dnyVar2, Executor executor, dgz dgzVar2, bwv bwvVar, final dny dnyVar3, boolean z) {
        ArrayMap arrayMap = new ArrayMap();
        this.f = arrayMap;
        ex.r(true);
        this.g = bwoVar.a(executor, dgzVar, dnyVar2);
        Application application = (Application) context;
        this.b = application;
        this.c = bvhVar;
        this.h = dnyVar;
        this.e = bxwVar;
        this.i = bwvVar;
        this.j = ex.i(new col() { // from class: bxy
            @Override // defpackage.col
            public final Object a() {
                return byf.this.b(dnyVar3);
            }
        });
        this.k = dnyVar3;
        byb bybVar = new byb(application, arrayMap);
        this.d = z ? new byd(bybVar, dgzVar2) : new bye(bybVar, dgzVar2);
    }

    public dag a(Activity activity) {
        byh byhVar;
        int i;
        dpt dptVar;
        int i2;
        byc a2 = byc.a(activity);
        if (!this.g.d()) {
            return dad.a;
        }
        synchronized (this.f) {
            byhVar = (byh) this.f.remove(a2);
            if (this.f.isEmpty()) {
                this.d.d();
            }
        }
        if (byhVar == null) {
            ((csx) a.c().h("com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl", "stopAsFuture", 356, "FrameMetricServiceImpl.java")).p("Measurement not found: %s", a2);
            return dad.a;
        }
        String b = a2.b();
        if (Build.VERSION.SDK_INT >= 29 && Trace.isEnabled()) {
            for (bym bymVar : ((byn) this.k.a()).b) {
                int a3 = bxr.a(bymVar.a);
                if (a3 == 0) {
                    a3 = 1;
                }
                switch (a3 - 1) {
                    case 1:
                        i2 = 0;
                        break;
                    case 2:
                        i2 = byhVar.f;
                        break;
                    case 3:
                        i2 = byhVar.h;
                        break;
                    case 4:
                        i2 = byhVar.i;
                        break;
                    case 5:
                        i2 = byhVar.j;
                        break;
                    case 6:
                        i2 = byhVar.k;
                        break;
                    case 7:
                        i2 = byhVar.m;
                        break;
                    default:
                        String str = bymVar.b;
                        continue;
                }
                Trace.setCounter(bymVar.b.replace("%EVENT_NAME%", b), i2);
            }
            Trace.endAsyncSection(String.format("J<%s>", b), 352691800);
        }
        if (byhVar.h == 0) {
            return dad.a;
        }
        if (((byn) this.k.a()).c && byhVar.m <= TimeUnit.SECONDS.toMillis(9L) && byhVar.f != 0) {
            this.i.a((String) this.j.a());
        }
        ddf n = dpz.y.n();
        int elapsedRealtime = ((int) (SystemClock.elapsedRealtime() - byhVar.c)) + 1;
        ddf n2 = dpq.o.n();
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        dpq dpqVar = (dpq) n2.b;
        int i3 = dpqVar.a | 16;
        dpqVar.a = i3;
        dpqVar.f = elapsedRealtime;
        int i4 = byhVar.f;
        int i5 = i3 | 1;
        dpqVar.a = i5;
        dpqVar.b = i4;
        int i6 = byhVar.h;
        int i7 = i5 | 2;
        dpqVar.a = i7;
        dpqVar.c = i6;
        int i8 = byhVar.i;
        int i9 = i7 | 4;
        dpqVar.a = i9;
        dpqVar.d = i8;
        int i10 = byhVar.k;
        int i11 = i9 | 32;
        dpqVar.a = i11;
        dpqVar.g = i10;
        int i12 = byhVar.m;
        int i13 = i11 | 64;
        dpqVar.a = i13;
        dpqVar.h = i12;
        int i14 = byhVar.j;
        dpqVar.a = i13 | 8;
        dpqVar.e = i14;
        if (byhVar.n != Integer.MIN_VALUE) {
            int[] iArr = byh.b;
            int[] iArr2 = byhVar.e;
            int i15 = byhVar.n;
            ddf n3 = dpt.c.n();
            int i16 = 0;
            while (true) {
                if (i16 >= 52) {
                    if (iArr2[51] > 0) {
                        n3.af(i15 + 1);
                        n3.ag(0);
                    }
                    dptVar = (dpt) n3.h();
                } else if (iArr[i16] > i15) {
                    n3.ag(0);
                    n3.af(i15 + 1);
                    dptVar = (dpt) n3.h();
                } else {
                    int i17 = iArr2[i16];
                    if (i17 > 0 || (i16 > 0 && iArr2[i16 - 1] > 0)) {
                        n3.ag(i17);
                        n3.af(iArr[i16]);
                    }
                    i16++;
                }
            }
            if (n2.c) {
                n2.k();
                n2.c = false;
            }
            dpq dpqVar2 = (dpq) n2.b;
            dptVar.getClass();
            dpqVar2.n = dptVar;
            int i18 = dpqVar2.a | 2048;
            dpqVar2.a = i18;
            int i19 = byhVar.g;
            int i20 = i18 | 512;
            dpqVar2.a = i20;
            dpqVar2.l = i19;
            int i21 = byhVar.l;
            dpqVar2.a = i20 | 1024;
            dpqVar2.m = i21;
            i = 0;
        } else {
            i = 0;
        }
        while (i < 28) {
            if (byhVar.d[i] > 0) {
                ddf n4 = dpp.e.n();
                int i22 = byhVar.d[i];
                if (n4.c) {
                    n4.k();
                    n4.c = false;
                }
                dpp dppVar = (dpp) n4.b;
                dppVar.a |= 1;
                dppVar.b = i22;
                int i23 = byh.a[i];
                if (n4.c) {
                    n4.k();
                    n4.c = false;
                }
                dpp dppVar2 = (dpp) n4.b;
                dppVar2.a |= 2;
                dppVar2.c = i23;
                int i24 = i + 1;
                if (i24 < 28) {
                    int i25 = byh.a[i24] - 1;
                    if (n4.c) {
                        n4.k();
                        n4.c = false;
                    }
                    dpp dppVar3 = (dpp) n4.b;
                    dppVar3.a |= 4;
                    dppVar3.d = i25;
                }
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                dpq dpqVar3 = (dpq) n2.b;
                dpp dppVar4 = (dpp) n4.h();
                dppVar4.getClass();
                ddr ddrVar = dpqVar3.j;
                if (!ddrVar.c()) {
                    dpqVar3.j = ddk.z(ddrVar);
                }
                dpqVar3.j.add(dppVar4);
            }
            i++;
        }
        dpq dpqVar4 = (dpq) n2.h();
        ddf ddfVar = (ddf) dpqVar4.E(5);
        ddfVar.n(dpqVar4);
        int a4 = bxx.a(this.b);
        if (ddfVar.c) {
            ddfVar.k();
            ddfVar.c = false;
        }
        dpq dpqVar5 = (dpq) ddfVar.b;
        dpqVar5.a |= 256;
        dpqVar5.k = a4;
        if (n.c) {
            n.k();
            n.c = false;
        }
        dpz dpzVar = (dpz) n.b;
        dpq dpqVar6 = (dpq) ddfVar.h();
        dpqVar6.getClass();
        dpzVar.l = dpqVar6;
        dpzVar.a |= 2048;
        dpz dpzVar2 = (dpz) n.h();
        bwn bwnVar = this.g;
        bwi a5 = bwj.a();
        a5.d(dpzVar2);
        a5.b = null;
        a5.c = "Activity";
        a5.a = a2.b();
        a5.b(true);
        return bwnVar.b(a5.a());
    }

    public /* synthetic */ String b(dny dnyVar) {
        return ((byn) dnyVar.a()).a.replace("%PACKAGE_NAME%", this.b.getPackageName());
    }

    @Override // defpackage.bvd
    public void c(Activity activity) {
        synchronized (this.f) {
            this.f.clear();
        }
    }

    public void d(Activity activity) {
        byc a2 = byc.a(activity);
        if (this.g.c(a2.b())) {
            synchronized (this.f) {
                if (this.f.size() >= 25) {
                    ((csx) a.c().h("com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl", "start", 284, "FrameMetricServiceImpl.java")).p("Too many concurrent measurements, ignoring %s", a2);
                    return;
                }
                byh byhVar = (byh) this.f.put(a2, ((byi) this.h).a());
                if (byhVar != null) {
                    this.f.put(a2, byhVar);
                    ((csx) a.c().h("com/google/android/libraries/performance/primes/metrics/jank/FrameMetricServiceImpl", "start", 297, "FrameMetricServiceImpl.java")).p("measurement already started: %s", a2);
                    return;
                }
                if (this.f.size() == 1) {
                    this.d.c();
                }
                if (Build.VERSION.SDK_INT >= 29 && Trace.isEnabled()) {
                    Trace.beginAsyncSection(String.format("J<%s>", a2.b()), 352691800);
                }
            }
        }
    }

    @Override // defpackage.bwq
    public void u() {
        this.c.a(this.d);
        this.c.a(this.e);
    }
}
