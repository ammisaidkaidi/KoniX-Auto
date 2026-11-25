package com.google.android.libraries.performance.primes.metrics.timer;

import android.os.SystemClock;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TimerMetricServiceImpl extends AbstractTimerMetricService implements PrimesMetricServiceLifecycle {
    public static final /* synthetic */ int f = 0;
    public final MetricDispatcherImpl b;
    final ConcurrentHashMap c = new ConcurrentHashMap();
    public final DaggerInternalFactoryMarker d;
    public final StopwatchTicker e;
    private final Executor h;
    private static final FloggerLoggerFactory g = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/timer/TimerMetricServiceImpl");
    static final ImmutableSet a = ImmutableSet.r("Cold startup", "Cold startup interactive", "Cold startup interactive before onDraw", "Warm startup", "Warm startup interactive", "Warm startup interactive before onDraw", "Warm startup activity onStart", "Cold startup class loading", "Cold startup from process creation", "Cold startup interactive before onDraw from process creation", "Cold startup interactive from process creation");

    public TimerMetricServiceImpl(MetricDispatcherAssistedFactory bwoVar, Executor executor, final DaggerInternalFactoryMarker dgzVar, DaggerProviderInterface dnyVar, final SamplingRateProvider cbvVar) {
        this.b = bwoVar.a(czj.a, dgzVar, dnyVar);
        this.h = executor;
        this.d = dgzVar;
        this.e = ex.i(new StopwatchTicker() { // from class: cas
            @Override // defpackage.StopwatchTicker
            public final Object a() {
                SamplingRateProvider cbvVar2 = SamplingRateProvider.this;
                DaggerInternalFactoryMarker dgzVar2 = dgzVar;
                int i = cau.f;
                return cbvVar2.a(((TimerConfigurations) dgzVar2.a()).b);
            }
        });
    }

    private final synchronized ListenableFuture c(String str, int i) {
        TimerRecordingState caqVar = (TimerRecordingState) this.c.remove(str);
        if (TimerRecordingState.b(caqVar)) {
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
        final String str2 = true != GuavaPlatformUtils.d(null) ? null : str;
        ProtoMsgHoldingMessageAndBool n = ProtoRootAggregateMessage.y.n();
        ProtoMsgHoldingMessageAndBool n2 = ProtoMessageLongAndTwoInts.d.n();
        long a3 = caqVar.a();
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        ProtoMessageLongAndTwoInts dqaVar = (ProtoMessageLongAndTwoInts) n2.b;
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
        ProtoMessageLongAndTwoInts dqaVar2 = (ProtoMessageLongAndTwoInts) n2.h();
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) n.b;
        dqaVar2.getClass();
        dpzVar.e = dqaVar2;
        dpzVar.a |= 8;
        final ProtoRootAggregateMessage dpzVar2 = (ProtoRootAggregateMessage) n.h();
        return ProjectionIntentHelper.m(new FutureSupplier() { // from class: cat
            @Override // defpackage.FutureSupplier
            public final ListenableFuture a() {
                TimerMetricServiceImpl cauVar = TimerMetricServiceImpl.this;
                String str3 = str2;
                long j = a2;
                ProtoRootAggregateMessage dpzVar3 = dpzVar2;
                if (!((SamplingProbabilityValidator) cauVar.e.a()).a()) {
                    return dad.a;
                }
                GuavaOptional cocVar = ((TimerConfigurations) cauVar.d.a()).c;
                MetricDispatcherImpl bwnVar = cauVar.b;
                PrimesMetricBuilder a4 = PrimesMetric.a();
                a4.b(true);
                a4.d = Long.valueOf(ProtoMessageTwoIntsAndFlagValue);
                a4.d(dpzVar3);
                a4.a = str3;
                a4.b = null;
                return bwnVar.b(a4.a());
            }
        }, this.h);
    }

    @Override // defpackage.AbstractTimerMetricService
    public final TimerRecordingState a(PrimesMetricName btxVar) {
        String str = btxVar.a;
        if (a.contains(str)) {
            ((ParameterizedLoggerApi) g.c().h("com/google/android/libraries/performance/primes/metrics/timer/TimerMetricServiceImpl", "startGlobal", 120, "TimerMetricServiceImpl.java")).p("%s is reserved event. Dropping timer.", str);
            return caq.a;
        }
        if (!this.b.d()) {
            return caq.a;
        }
        TimerRecordingState caqVar = new TimerRecordingState();
        this.c.put(str, caqVar);
        return caqVar;
    }

    @Override // defpackage.AbstractTimerMetricService
    public final ListenableFuture b(PrimesMetricName btxVar, int i) {
        return c(btxVar.a, i);
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public final /* synthetic */ void u() {
    }
}
