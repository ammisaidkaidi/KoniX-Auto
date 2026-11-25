package defpackage;

import android.app.Activity;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkMetricCollectorImpl extends NetworkMetricServiceBase implements ActivityEventListenerC, bwq {
    public final MetricDispatcherImpl a;
    public final DaggerInternalFactoryMarker b;
    private final ListeningScheduledExecutorService c;
    private final Object d;
    private final ArrayList e;
    private final AtomicInteger f;

    public NetworkMetricCollectorImpl(MetricDispatcherAssistedFactory bwoVar, PrimesLifecycleRegistrar bvhVar, ListeningScheduledExecutorService daiVar, DaggerInternalFactoryMarker dgzVar, DaggerInternalFactoryMarker dgzVar2, DaggerProviderInterface dnyVar, Executor executor) {
        super(null);
        this.d = new Object();
        this.e = new ArrayList(0);
        this.f = new AtomicInteger();
        this.a = bwoVar.a(executor, dgzVar, dnyVar);
        this.c = daiVar;
        this.b = dgzVar2;
        bvhVar.a(this);
    }

    public final ListenableFuture a() {
        final NetworkMetricAccumulator[] bziVarArr;
        if (this.f.get() > 0) {
            FutureSupplier czbVar = new FutureSupplier() { // from class: bzk
                @Override // defpackage.FutureSupplier
                public final ListenableFuture a() {
                    return NetworkMetricCollectorImpl.this.a();
                }
            };
            TimeUnit timeUnit = TimeUnit.SECONDS;
            ListeningScheduledExecutorService daiVar = this.c;
            ListenableFutureTask e = ListenableFutureTask.e(czbVar);
            e.aW(new FutureCancellationRunnable(daiVar.schedule(e, 1L, timeUnit)), czj.a);
            return e;
        }
        synchronized (this.d) {
            if (this.e.isEmpty()) {
                bziVarArr = null;
            } else {
                ArrayList arrayList = this.e;
                bziVarArr = (NetworkMetricAccumulator[]) arrayList.toArray(new NetworkMetricAccumulator[arrayList.size()]);
                this.e.clear();
            }
        }
        return bziVarArr == null ? dad.a : ProjectionIntentHelper.m(new FutureSupplier() { // from class: bzl
            @Override // defpackage.FutureSupplier
            public final ListenableFuture a() {
                NetworkMetricCollectorImpl bzmVar = NetworkMetricCollectorImpl.this;
                NetworkMetricAccumulator[] bziVarArr2 = bziVarArr;
                MetricDispatcherImpl bwnVar = bzmVar.a;
                PrimesMetricBuilder a = PrimesMetric.a();
                NetworkMetricCollector bzjVar = (NetworkMetricCollector) bzmVar.b.a();
                ProtoMsgHoldingMessageAndBool n = ProtoMessageSingleEnumField.b.n();
                if (bziVarArr2.length <= 0) {
                    ProtoMsgHoldingMessageAndBool n2 = ProtoRootAggregateMessage.y.n();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) n2.b;
                    ProtoMessageSingleEnumField dozVar = (ProtoMessageSingleEnumField) n.h();
                    dozVar.getClass();
                    dpzVar.g = dozVar;
                    dpzVar.a |= 32;
                    try {
                        ((NetworkMetricServiceFactory_btq) bzjVar.b).a();
                    } catch (Exception e2) {
                        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) NetworkMetricCollector.a.c().g(e2)).h("com/google/android/libraries/performance/primes/metrics/network/NetworkMetricCollector", "getMetric", 240, "NetworkMetricCollector.java")).n("Exception while getting network metric extension!");
                    }
                    a.d((ProtoRootAggregateMessage) n2.h());
                    return bwnVar.b(a.a());
                }
                ProtoMsgHoldingMessageAndBool n3 = ProtoMessageStringEnumAndDpa.g.n();
                NetworkMetricAccumulator bziVar = bziVarArr2[0];
                int i = bziVar.d;
                int i2 = bziVar.c;
                long j = bziVar.b;
                long j2 = bziVar.a;
                int i3 = bziVar.g;
                if (n3.c) {
                    n3.k();
                    n3.c = false;
                }
                ProtoMessageStringEnumAndDpa doyVar = (ProtoMessageStringEnumAndDpa) n3.b;
                doyVar.a |= 32;
                doyVar.b = 0;
                int i4 = bziVarArr2[0].j;
                ProtoMsgHoldingMessageAndBool n4 = ProtoMessageTwoInts.c.n();
                int i5 = bziVarArr2[0].j;
                if (n4.c) {
                    n4.k();
                    n4.c = false;
                }
                ProtoMessageTwoInts dpaVar = (ProtoMessageTwoInts) n4.b;
                dpaVar.a |= 1;
                dpaVar.b = 0;
                ProtoMessageTwoInts dpaVar2 = (ProtoMessageTwoInts) n4.h();
                if (n3.c) {
                    n3.k();
                    n3.c = false;
                }
                ProtoMessageStringEnumAndDpa doyVar2 = (ProtoMessageStringEnumAndDpa) n3.b;
                dpaVar2.getClass();
                doyVar2.f = dpaVar2;
                doyVar2.a |= 4194304;
                NetworkMetricAccumulator bziVar2 = bziVarArr2[0];
                String str = bziVar2.h;
                String str2 = bziVar2.f;
                if (!GuavaPlatformUtils.d(null)) {
                    throw null;
                }
                if (n3.c) {
                    n3.k();
                    n3.c = false;
                }
                ProtoMessageStringEnumAndDpa doyVar3 = (ProtoMessageStringEnumAndDpa) n3.b;
                doyVar3.c = 0;
                doyVar3.a |= 256;
                ((NetworkMetricServiceFactory_btq) bzjVar.b).a();
                NetworkMetricAccumulator bziVar3 = bziVarArr2[0];
                String str3 = bziVar3.e;
                ProtoMessageLongBoolIntString dpgVar = bziVar3.i;
                throw null;
            }
        }, this.c);
    }

    @Override // defpackage.ActivityEventListenerC
    public final void c(Activity activity) {
        a();
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public final /* synthetic */ void u() {
    }
}
