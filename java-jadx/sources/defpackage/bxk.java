package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bxk extends bxg implements bwq, buw, bvd, bvb {
    public static final csz a = csz.g("com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl");
    volatile btx b;
    public final Context c;
    public final bwn d;
    public final dgz e;
    public volatile boolean i;
    private final boolean k;
    private final Executor l;
    private final coc m;
    private final bvh n;
    private final cbv o;
    private final Runnable q;
    private final AtomicBoolean j = new AtomicBoolean();
    public final AtomicInteger f = new AtomicInteger();
    public final AtomicInteger g = new AtomicInteger();
    public final AtomicInteger h = new AtomicInteger();
    private final AtomicBoolean p = new AtomicBoolean(false);

    public bxk(bwo bwoVar, Context context, Executor executor, dgz dgzVar, coc cocVar, bvh bvhVar, cbv cbvVar, coc cocVar2, final dny dnyVar) {
        this.e = dgzVar;
        this.m = cocVar;
        this.n = bvhVar;
        this.o = cbvVar;
        this.d = bwoVar.a(czj.a, dgzVar, null);
        this.c = context;
        this.l = executor;
        this.k = ((Boolean) cocVar2.b(Boolean.FALSE)).booleanValue();
        this.q = new Runnable() { // from class: bxi
            @Override // java.lang.Runnable
            public final void run() {
                bxk.this.i = ((Boolean) dnyVar.a()).booleanValue();
            }
        };
    }

    private final void f(final int i, final AtomicInteger atomicInteger) {
        atomicInteger.getAndIncrement();
        hh.m(new czb() { // from class: bxh
            @Override // defpackage.czb
            public final dag a() {
                bxk bxkVar = bxk.this;
                return atomicInteger.getAndDecrement() <= 0 ? dad.a : bxkVar.e(i, (bxf) bxkVar.e.a());
            }
        }, this.l);
    }

    @Override // defpackage.buw
    public final void a(Activity activity, Bundle bundle) {
        if (this.p.getAndSet(true)) {
            return;
        }
        f(4, this.g);
    }

    @Override // defpackage.bvb
    public final void b(Activity activity) {
        btx btxVar;
        Class<?> cls = activity.getClass();
        if (coe.d(null)) {
            btxVar = new btx(cls.getSimpleName());
        } else {
            String valueOf = String.valueOf(cls.getSimpleName());
            btxVar = new btx(valueOf.length() != 0 ? "null".concat(valueOf) : new String("null"));
        }
        this.b = btxVar;
    }

    @Override // defpackage.bvd
    public final void c(Activity activity) {
        this.b = null;
    }

    @Override // defpackage.bxg
    public final void d() {
        if (this.j.compareAndSet(false, true)) {
            Thread.setDefaultUncaughtExceptionHandler(new bxj(this, Thread.getDefaultUncaughtExceptionHandler()));
        }
    }

    final dag e(int i, bxf bxfVar) {
        if (!bxfVar.b()) {
            return dad.a;
        }
        float f = bxfVar.a;
        if (!this.o.a(f / 100.0f).a()) {
            return dad.a;
        }
        bwn bwnVar = this.d;
        bwi a2 = bwj.a();
        ddf n = dpz.y.n();
        ddf n2 = dpv.d.n();
        int i2 = (int) (100.0f / f);
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        dpv dpvVar = (dpv) n2.b;
        int i3 = dpvVar.a | 2;
        dpvVar.a = i3;
        dpvVar.c = i2;
        dpvVar.b = i - 1;
        dpvVar.a = i3 | 1;
        if (n.c) {
            n.k();
            n.c = false;
        }
        dpz dpzVar = (dpz) n.b;
        dpv dpvVar2 = (dpv) n2.h();
        dpvVar2.getClass();
        dpzVar.i = dpvVar2;
        dpzVar.a |= 128;
        a2.d((dpz) n.h());
        return bwnVar.b(a2.a());
    }

    @Override // defpackage.bwq
    public final void u() {
        if (this.m.d()) {
            ((bxm) ((dny) this.m.a()).a()).a();
        }
        this.n.a(this);
        f(3, this.f);
        if (this.k) {
            d();
        }
        hh.l(this.q, this.l);
    }
}
