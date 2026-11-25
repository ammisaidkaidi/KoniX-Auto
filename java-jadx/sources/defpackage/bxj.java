package defpackage;

import android.os.StrictMode;
import java.lang.Thread;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bxj implements Thread.UncaughtExceptionHandler {
    final /* synthetic */ bxk a;
    private final Thread.UncaughtExceptionHandler b;

    public bxj(bxk bxkVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = bxkVar;
        this.b = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        bus busVar;
        try {
            try {
                bxk bxkVar = this.a;
                String name = thread.getName();
                String name2 = th.getClass().getName();
                for (Throwable cause = th.getCause(); cause != null && cause != cause.getCause(); cause = cause.getCause()) {
                    name2 = cause.getClass().getName();
                }
                ddf n = dpm.i.n();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dpm dpmVar = (dpm) n.b;
                dpmVar.a |= 1;
                dpmVar.b = true;
                btx btxVar = bxkVar.b;
                String str = btxVar == null ? null : btxVar.a;
                if (str != null) {
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    dpm dpmVar2 = (dpm) n.b;
                    dpmVar2.a |= 4;
                    dpmVar2.d = str;
                }
                try {
                    ddf n2 = dph.c.n();
                    dpg d = xs.d(null, bxkVar.c);
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    dph dphVar = (dph) n2.b;
                    d.getClass();
                    dphVar.b = d;
                    dphVar.a |= 1;
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    dpm dpmVar3 = (dpm) n.b;
                    dph dphVar2 = (dph) n2.h();
                    dphVar2.getClass();
                    dpmVar3.c = dphVar2;
                    dpmVar3.a |= 2;
                } catch (RuntimeException e) {
                    ((csx) ((csx) bxk.a.c().g(e)).h("com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl", "createCrashMetric", 212, "CrashMetricServiceImpl.java")).n("Failed to get process stats.");
                }
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dpm dpmVar4 = (dpm) n.b;
                name.getClass();
                dpmVar4.a |= 8;
                dpmVar4.e = name;
                Class<?> cls = th.getClass();
                int i = cls == OutOfMemoryError.class ? 3 : NullPointerException.class.isAssignableFrom(cls) ? 2 : RuntimeException.class.isAssignableFrom(cls) ? 4 : Error.class.isAssignableFrom(cls) ? 5 : 1;
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dpm dpmVar5 = (dpm) n.b;
                dpmVar5.f = i - 1;
                int i2 = dpmVar5.a | 16;
                dpmVar5.a = i2;
                name2.getClass();
                dpmVar5.a = i2 | 128;
                dpmVar5.g = name2;
                ddf n3 = cxu.d.n();
                ddf u = hg.u(th);
                if (n3.c) {
                    n3.k();
                    n3.c = false;
                }
                cxu cxuVar = (cxu) n3.b;
                cxt cxtVar = (cxt) u.h();
                cxtVar.getClass();
                cxuVar.b = cxtVar;
                cxuVar.a |= 1;
                for (Throwable cause2 = th.getCause(); cause2 != null; cause2 = cause2.getCause()) {
                    ddf u2 = hg.u(cause2);
                    if (n3.c) {
                        n3.k();
                        n3.c = false;
                    }
                    cxu cxuVar2 = (cxu) n3.b;
                    cxt cxtVar2 = (cxt) u2.h();
                    cxtVar2.getClass();
                    cxuVar2.b();
                    cxuVar2.c.add(cxtVar2);
                }
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                dpm dpmVar6 = (dpm) n.b;
                cxu cxuVar3 = (cxu) n3.h();
                cxuVar3.getClass();
                dpmVar6.h = cxuVar3;
                dpmVar6.a |= 256;
                dpm dpmVar7 = (dpm) n.h();
                StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
                StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
                bxf bxfVar = (bxf) bxkVar.e.a();
                if (bxfVar.b()) {
                    if (bxkVar.i) {
                        but butVar = bxkVar.d.e;
                        synchronized (butVar.a) {
                            busVar = butVar.a.isEmpty() ? bus.a : new bus((buv[]) butVar.a.values().toArray(new buv[0]));
                        }
                    } else {
                        busVar = null;
                    }
                    bwn bwnVar = bxkVar.d;
                    bwi a = bwj.a();
                    ddf n4 = dpz.y.n();
                    if (n4.c) {
                        n4.k();
                        n4.c = false;
                    }
                    dpz dpzVar = (dpz) n4.b;
                    dpmVar7.getClass();
                    dpzVar.h = dpmVar7;
                    dpzVar.a |= 64;
                    a.d((dpz) n4.h());
                    a.b = null;
                    a.e = busVar;
                    bwnVar.b(a.a());
                    while (bxkVar.f.getAndDecrement() > 0) {
                        bxkVar.e(3, bxfVar);
                    }
                    while (bxkVar.g.getAndDecrement() > 0) {
                        bxkVar.e(4, bxfVar);
                    }
                    while (bxkVar.h.getAndDecrement() > 0) {
                        bxkVar.e(5, bxfVar);
                    }
                }
                uncaughtExceptionHandler = this.b;
                if (uncaughtExceptionHandler == null) {
                    return;
                }
            } catch (Throwable th2) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.b;
                if (uncaughtExceptionHandler2 != null) {
                    uncaughtExceptionHandler2.uncaughtException(thread, th);
                }
                throw th2;
            }
        } catch (Exception e2) {
            ((csx) ((csx) bxk.a.c().g(e2)).h("com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl$PrimesUncaughtExceptionHandler", "uncaughtException", 147, "CrashMetricServiceImpl.java")).n("Failed to record crash.");
            uncaughtExceptionHandler = this.b;
            if (uncaughtExceptionHandler == null) {
                return;
            }
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
