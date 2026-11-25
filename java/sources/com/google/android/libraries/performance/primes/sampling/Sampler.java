package com.google.android.libraries.performance.primes.sampling;

import android.content.Context;
import android.content.IntentFilter;
import androidx.preference.Preference;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class Sampler {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/sampling/Sampler");
    private static final CachedSamplerValue e = CachedSamplerValue.b(Preference.DEFAULT_ORDER);
    public volatile AbstractSamplingConfiguration b = cch.a;
    public volatile boolean c = true;
    public volatile CachedSamplerValue d = e;

    public Sampler(final Context context, final Executor executor, final SamplerConfigurationChooser cchVar, final DaggerInternalFactoryMarker dgzVar, boolean z, DaggerProviderInterface dnyVar) {
        final DaggerProviderInterface dnyVar2 = true != z ? null : dnyVar;
        ProjectionIntentHelper.l(new Runnable() { // from class: cca
            @Override // java.lang.Runnable
            public final void run() {
                final Sampler ccdVar = Sampler.this;
                Context context2 = context;
                final SamplerConfigurationChooser cchVar2 = cchVar;
                final DaggerInternalFactoryMarker dgzVar2 = dgzVar;
                final DaggerProviderInterface dnyVar3 = dnyVar2;
                final Executor executor2 = executor;
                Runnable runnable = new Runnable() { // from class: ccc
                    @Override // java.lang.Runnable
                    public final void run() {
                        final Sampler ccdVar2 = Sampler.this;
                        final SamplerConfigurationChooser cchVar3 = cchVar2;
                        final DaggerInternalFactoryMarker dgzVar3 = dgzVar2;
                        final DaggerProviderInterface dnyVar4 = dnyVar3;
                        ProjectionIntentHelper.l(new Runnable() { // from class: ccb
                            @Override // java.lang.Runnable
                            public final void run() {
                                Sampler ccdVar3 = Sampler.this;
                                SamplerConfigurationChooser cchVar4 = cchVar3;
                                DaggerInternalFactoryMarker dgzVar4 = dgzVar3;
                                DaggerProviderInterface dnyVar5 = dnyVar4;
                                try {
                                    PrimesMetricConfigurations bvlVar = (PrimesMetricConfigurations) dgzVar4.a();
                                    ccdVar3.c = bvlVar.b();
                                    ccdVar3.d = CachedSamplerValue.b(bvlVar.a());
                                } catch (Throwable th) {
                                    ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) Sampler.a.c().g(ActivityResultDispatchRunnable)).h("com/google/android/libraries/performance/primes/sampling/Sampler", "fetchSamplingConfig", 78, "Sampler.java")).n("Couldn't get config");
                                    ccdVar3.c = false;
                                }
                                if (!ccdVar3.c || dnyVar5 == null) {
                                    if (dnyVar5 == null) {
                                        ProtoMsgHoldingMessageAndBool n = PrimesMetricConfigProto.d.n();
                                        if (n.c) {
                                            n.k();
                                            n.c = false;
                                        }
                                        PrimesMetricConfigProto dpyVar = (PrimesMetricConfigProto) n.b;
                                        dpyVar.c = 2;
                                        dpyVar.a |= 4;
                                        ccdVar3.b = cchVar4.a((PrimesMetricConfigProto) n.h());
                                        return;
                                    }
                                    return;
                                }
                                try {
                                    ccdVar3.b = cchVar4.a((PrimesMetricConfigProto) dnyVar5.a());
                                } catch (Throwable th2) {
                                    ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) Sampler.a.c().g(th2)).h("com/google/android/libraries/performance/primes/sampling/Sampler", "fetchSamplingConfig", 86, "Sampler.java")).n("Couldn't get sampling strategy");
                                    ProtoMsgHoldingMessageAndBool n2 = PrimesMetricConfigProto.d.n();
                                    if (n2.c) {
                                        n2.k();
                                        n2.c = false;
                                    }
                                    PrimesMetricConfigProto dpyVar2 = (PrimesMetricConfigProto) n2.b;
                                    int i = dpyVar2.a | 2;
                                    dpyVar2.a = i;
                                    dpyVar2.b = 0L;
                                    dpyVar2.c = 1;
                                    dpyVar2.a = i | 4;
                                    ccdVar3.b = cchVar4.a((PrimesMetricConfigProto) n2.h());
                                }
                            }
                        }, executor2);
                    }
                };
                if (DirectBootUtils.c(context2)) {
                    runnable.run();
                    return;
                }
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.USER_UNLOCKED");
                AtomicBoolean atomicBoolean = new AtomicBoolean();
                AppUpdateBroadcastReceiver btiVar = new AppUpdateBroadcastReceiver(atomicBoolean, runnable);
                context2.registerReceiver(btiVar, intentFilter);
                if (DirectBootUtils.c(context2) && atomicBoolean.compareAndSet(false, true)) {
                    context2.unregisterReceiver(btiVar);
                    runnable.run();
                }
            }
        }, executor);
    }
}
