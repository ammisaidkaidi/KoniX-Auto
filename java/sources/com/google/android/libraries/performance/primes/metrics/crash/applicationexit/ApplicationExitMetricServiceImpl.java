package com.google.android.libraries.performance.primes.metrics.crash.applicationexit;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApplicationExitMetricServiceImpl extends GalAudioStreamTypes implements PrimesMetricServiceLifecycle, bvd {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/crash/applicationexit/ApplicationExitMetricServiceImpl");
    private final MetricDispatcherImpl b;
    private final Context c;
    private final PrimesLifecycleRegistrar d;
    private final Executor e;
    private final ApplicationExitInfoSource f;
    private final DaggerProviderInterface g;
    private final DaggerInternalFactoryMarker h;
    private final DaggerProviderInterface i;
    private final DaggerProviderInterface j;

    public ApplicationExitMetricServiceImpl(MetricDispatcherAssistedFactory bwoVar, Context context, PrimesLifecycleRegistrar bvhVar, Executor executor, ApplicationExitInfoSource bxoVar, DaggerProviderInterface dnyVar, DaggerInternalFactoryMarker dgzVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3) {
        this.b = bwoVar.a(executor, dgzVar, null);
        this.c = context;
        this.d = bvhVar;
        this.e = executor;
        this.f = bxoVar;
        this.g = dnyVar;
        this.h = dgzVar;
        this.i = dnyVar2;
        this.j = dnyVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ListenableFuture e(final ApplicationExitMetricServiceImpl bxuVar) {
        if (!((ApplicationExitConfigurations) bxuVar.h.a()).b()) {
            return dad.a;
        }
        if (!Application.getProcessName().equals(bxuVar.c.getPackageName())) {
            return dad.a;
        }
        if (!((Boolean) bxuVar.i.a()).booleanValue()) {
            return dad.a;
        }
        final List a2 = bxuVar.f.a(0, 0, ((SharedPreferences) bxuVar.g.a()).getString("lastExitProcessName", null), ((SharedPreferences) bxuVar.g.a()).getLong("lastExitTimestamp", -1L));
        if (a2.isEmpty()) {
            return dad.a;
        }
        ProtoBytesWrapperMessage dohVar = (ProtoBytesWrapperMessage) bxuVar.j.a();
        ProtoMsgHoldingMessageAndBool n = dog.e.n();
        int i = ((ReverseImmutableList) a2).c;
        if (n.c) {
            n.k();
            n.c = false;
        }
        ProtoMessageWithDohSubMessage dogVar = (ProtoMessageWithDohSubMessage) n.b;
        int i2 = dogVar.a | 2;
        dogVar.a = i2;
        dogVar.d = i;
        dohVar.getClass();
        dogVar.c = dohVar;
        dogVar.a = i2 | 1;
        HashSet hashSet = new HashSet();
        for (int i3 = 0; i3 < dohVar.a.size(); i3++) {
            int c = CommonObjectsAndPreconditionsUtil.c(dohVar.a.e(i3));
            if (PhenotypeFlagMessage == 0) {
                c = 1;
            }
            hashSet.add(Integer.valueOf(PhenotypeFlagMessage - 1));
        }
        UnmodifiableListIterator it = ((ImmutableList) a2).iterator();
        while (it.hasNext()) {
            ProtoMessageStringAndLongCounters dofVar = (ProtoMessageStringAndLongCounters) it.next();
            int c2 = CommonObjectsAndPreconditionsUtil.c(dofVar.c);
            if (c2 == 0) {
                c2 = 1;
            }
            if (hashSet.contains(Integer.valueOf(c2 - 1))) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMessageWithDohSubMessage dogVar2 = (ProtoMessageWithDohSubMessage) n.b;
                dofVar.getClass();
                ProtobufList ddrVar = dogVar2.b;
                if (!ddrVar.c()) {
                    dogVar2.b = GeneratedMessageLite.z(ddrVar);
                }
                dogVar2.b.add(dofVar);
            }
        }
        ProtoMessageWithDohSubMessage dogVar3 = (ProtoMessageWithDohSubMessage) n.h();
        MetricDispatcherImpl bwnVar = bxuVar.b;
        PrimesMetricBuilder a3 = PrimesMetric.a();
        ProtoMsgHoldingMessageAndBool n2 = ProtoRootAggregateMessage.y.n();
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) n2.b;
        dogVar3.getClass();
        dpzVar.x = dogVar3;
        dpzVar.a |= 134217728;
        a3.d((ProtoRootAggregateMessage) n2.h());
        return TransformFuture.o(bwnVar.b(a3.a()), new GuavaFunction() { // from class: bxs
            @Override // defpackage.GuavaFunction
            public final Object a(Object obj) {
                ApplicationExitMetricServiceImpl.this.f(a2, (Void) obj);
                return null;
            }
        }, bxuVar.e);
    }

    @Override // defpackage.ActivityEventListenerC
    public void c(Activity activity) {
        this.d.b(this);
        g();
    }

    public /* synthetic */ Void f(List list, Void r7) {
        int i = 0;
        ProtoMessageStringAndLongCounters dofVar = (ProtoMessageStringAndLongCounters) list.get(0);
        do {
            String str = dofVar.b;
            i++;
            if (((SharedPreferences) this.g.a()).edit().putString("lastExitProcessName", str).putLong("lastExitTimestamp", dofVar.f).commit()) {
                return null;
            }
        } while (NavInstructionTypeEnum < 3);
        ((ParameterizedLoggerApi) a.c().h("com/google/android/libraries/performance/primes/metrics/crash/applicationexit/ApplicationExitMetricServiceImpl", "updateLastRecordedAppExit", 172, "ApplicationExitMetricServiceImpl.java")).n("Failed to persist most recent App Exit");
        return null;
    }

    public void g() {
        ProjectionIntentHelper.m(new FutureSupplier() { // from class: bxt
            @Override // defpackage.FutureSupplier
            public final ListenableFuture a() {
                return ApplicationExitMetricServiceImpl.e(ApplicationExitMetricServiceImpl.this);
            }
        }, this.e);
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public void u() {
        this.d.a(this);
    }
}
