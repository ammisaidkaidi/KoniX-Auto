package com.google.android.libraries.performance.primes.metrics.crash;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CrashMetricServiceImpl extends AbstractPrimesMetricService implements PrimesMetricServiceLifecycle, buw, bvd, bvb {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl");
    volatile PrimesMetricName b;
    public final Context c;
    public final MetricDispatcherImpl d;
    public final DaggerInternalFactoryMarker e;
    public volatile boolean i;
    private final boolean k;
    private final Executor l;
    private final GuavaOptional m;
    private final PrimesLifecycleRegistrar n;
    private final SamplingRateProvider o;
    private final Runnable q;
    private final AtomicBoolean j = new AtomicBoolean();
    public final AtomicInteger f = new AtomicInteger();
    public final AtomicInteger g = new AtomicInteger();
    public final AtomicInteger h = new AtomicInteger();
    private final AtomicBoolean p = new AtomicBoolean(false);

    public CrashMetricServiceImpl(MetricDispatcherAssistedFactory bwoVar, Context context, Executor executor, DaggerInternalFactoryMarker dgzVar, GuavaOptional cocVar, PrimesLifecycleRegistrar bvhVar, SamplingRateProvider cbvVar, GuavaOptional cocVar2, final DaggerProviderInterface dnyVar) {
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
                CrashMetricServiceImpl.this.i = ((Boolean) dnyVar.a()).booleanValue();
            }
        };
    }

    private final void f(final int i, final AtomicInteger atomicInteger) {
        atomicInteger.getAndIncrement();
        ProjectionIntentHelper.m(new FutureSupplier() { // from class: bxh
            @Override // defpackage.FutureSupplier
            public final ListenableFuture a() {
                CrashMetricServiceImpl bxkVar = CrashMetricServiceImpl.this;
                return atomicInteger.getAndDecrement() <= 0 ? dad.a : bxkVar.e(i, (CrashConfigurations) bxkVar.e.a());
            }
        }, this.l);
    }

    @Override // defpackage.BatteryMetricServiceInterface
    public final void a(Activity activity, Bundle bundle) {
        if (this.p.getAndSet(true)) {
            return;
        }
        f(4, this.g);
    }

    @Override // defpackage.ActivityPauseEventListener
    public final void b(Activity activity) {
        PrimesMetricName btxVar;
        Class<?> cls = activity.getClass();
        if (GuavaPlatformUtils.d(null)) {
            btxVar = new PrimesMetricName(GalTransportThread.getSimpleName());
        } else {
            String valueOf = String.valueOf(GalTransportThread.getSimpleName());
            btxVar = new PrimesMetricName(valueOf.length() != 0 ? "null".concat(valueOf) : new String("null"));
        }
        this.b = btxVar;
    }

    @Override // defpackage.ActivityEventListenerC
    public final void c(Activity activity) {
        this.b = null;
    }

    @Override // defpackage.AbstractPrimesMetricService
    public final void d() {
        if (this.j.compareAndSet(false, true)) {
            Thread.setDefaultUncaughtExceptionHandler(new CrashUncaughtExceptionHandler(this, Thread.getDefaultUncaughtExceptionHandler()));
        }
    }

    final ListenableFuture e(int i, CrashConfigurations bxfVar) {
        if (!bxfVar.b()) {
            return dad.a;
        }
        float f = bxfVar.a;
        if (!this.o.a(NavManeuverTypeEnum / 100.0f).a()) {
            return dad.a;
        }
        MetricDispatcherImpl bwnVar = this.d;
        PrimesMetricBuilder a2 = PrimesMetric.a();
        ProtoMsgHoldingMessageAndBool n = ProtoRootAggregateMessage.y.n();
        ProtoMsgHoldingMessageAndBool n2 = ProtoMessageThreeInts.d.n();
        int i2 = (int) (100.0f / f);
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        ProtoMessageThreeInts dpvVar = (ProtoMessageThreeInts) n2.b;
        int i3 = dpvVar.a | 2;
        dpvVar.a = i3;
        dpvVar.c = i2;
        dpvVar.b = i - 1;
        dpvVar.a = i3 | 1;
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) n.b;
        ProtoMessageThreeInts dpvVar2 = (ProtoMessageThreeInts) n2.h();
        dpvVar2.getClass();
        dpzVar.i = dpvVar2;
        dpzVar.a |= 128;
        a2.d((ProtoRootAggregateMessage) n.h());
        return bwnVar.b(a2.a());
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public final void u() {
        if (this.m.d()) {
            ((CrashMetricCallback) ((DaggerProviderInterface) this.m.a()).a()).a();
        }
        this.n.a(this);
        f(3, this.f);
        if (this.k) {
            d();
        }
        ProjectionIntentHelper.l(this.q, this.l);
    }
}
