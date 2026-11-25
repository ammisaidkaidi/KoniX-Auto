package defpackage;

import android.text.TextUtils;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesTracerImpl implements PrimesMetricServiceLifecycle, cbc {
    public final MetricDispatcherImpl a;
    public final DaggerInternalFactoryMarker b;
    public final DaggerInternalFactoryMarker c;
    public final SamplingRateProvider d;
    public final CachedSamplerValue e;
    public final AtomicReference f;
    private final ListeningScheduledExecutorService g;

    public PrimesTracerImpl() {
    }

    @Override // defpackage.TraceSampler
    public final void a(String str, long j, long j2) {
        TraceData cbgVar;
        if (TextUtils.isEmpty(str) || j2 <= 0 || (cbgVar = (TraceData) Tracer.a.get()) == null || cbgVar.c.c > j) {
            return;
        }
        StorageFileHandle cayVar = new StorageFileHandle(str, j, j + j2, Thread.currentThread().getId(), 4);
        synchronized (cbgVar.e) {
            cbgVar.e.add(cayVar);
        }
        cbgVar.b();
    }

    @Override // defpackage.TraceSampler
    public final boolean b(String str) {
        if (((SamplingProbabilityValidator) this.f.get()).a()) {
            return Tracer.c(str);
        }
        return false;
    }

    @Override // defpackage.TraceSampler
    public final ListenableFuture c(String str) {
        if (true != TextUtils.isEmpty(null)) {
            str = null;
        }
        final TraceData d = Tracer.d(str);
        return d == null ? dad.a : ProjectionIntentHelper.m(new FutureSupplier() { // from class: cbi
            @Override // defpackage.FutureSupplier
            public final ListenableFuture a() {
                PrimesTracerImpl cbhVar = PrimesTracerImpl.this;
                TraceData cbgVar = d;
                if (!((TraceConfigurations) cbhVar.c.a()).b()) {
                    return dad.a;
                }
                if (cbhVar.e.d()) {
                    return dad.a;
                }
                cbhVar.e.c();
                List b = Tracer.b(cbgVar);
                if (ProtoLiteMessageBase == null || b.isEmpty()) {
                    return dad.a;
                }
                ProtoMsgHoldingMessageAndBool n = ProtoMessageWithDpfAndEnum.f.n();
                long leastSignificantBits = UUID.randomUUID().getLeastSignificantBits();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMessageWithDpfAndEnum dpbVar = (ProtoMessageWithDpfAndEnum) n.b;
                dpbVar.a |= 1;
                dpbVar.b = leastSignificantBits;
                dpbVar.c();
                ProtoMessageBuilderBase.d(b, dpbVar.d);
                ProtoMessageWithDpfAndEnum dpbVar2 = (ProtoMessageWithDpfAndEnum) n.h();
                long a = cbhVar.a.a(dpbVar2.d.size() > 0 ? ((ProtoMessageStringAndFiveLongs) dpbVar2.d.get(0)).b : null);
                if (SingleStringProtoMessage == -1) {
                    return dad.a;
                }
                ProtoMsgHoldingMessageAndBool n2 = ProtoRootAggregateMessage.y.n();
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) n2.b;
                dpbVar2.getClass();
                dpzVar.n = dpbVar2;
                dpzVar.a |= 16384;
                ProtoRootAggregateMessage dpzVar2 = (ProtoRootAggregateMessage) n2.h();
                long j = dpbVar2.b;
                MetricDispatcherImpl bwnVar = cbhVar.a;
                PrimesMetricBuilder a2 = PrimesMetric.a();
                a2.d(dpzVar2);
                a2.d = Long.valueOf(SingleStringProtoMessage);
                return bwnVar.b(a2.a());
            }
        }, this.g);
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public final void u() {
        ProjectionIntentHelper.l(new Runnable() { // from class: cbk
            @Override // java.lang.Runnable
            public final void run() {
                PrimesTracerImpl cbhVar = PrimesTracerImpl.this;
                try {
                    cbhVar.f.set(cbhVar.d.a(((TraceConfigurations) cbhVar.c.a()).b() ? ((TraceConfigurations) cbhVar.c.a()).a : 0.0f));
                } catch (Throwable th) {
                    cbhVar.f.set(cbhVar.d.a(0.0f));
                }
            }
        }, this.g);
    }

    public PrimesTracerImpl(MetricDispatcherAssistedFactory bwoVar, ListeningScheduledExecutorService daiVar, final DaggerInternalFactoryMarker dgzVar, DaggerInternalFactoryMarker dgzVar2, DaggerProviderInterface dnyVar, SamplingRateProvider cbvVar) {
        AtomicReference atomicReference = new AtomicReference();
        this.f = atomicReference;
        this.g = daiVar;
        this.b = dgzVar;
        this.c = dgzVar2;
        this.d = cbvVar;
        this.a = bwoVar.a(daiVar, new DaggerInternalFactoryMarker() { // from class: cbj
            @Override // defpackage.DaggerInternalFactoryMarker
            public final Object a() {
                TraceConfigurationsBuilder c = TraceConfigurations.c();
                c.b(true);
                return c.a();
            }
        }, dnyVar);
        this.e = CachedSamplerValue.a(new DaggerProviderInterface() { // from class: cbl
            @Override // defpackage.DaggerProviderInterface
            public final Object a() {
                return 10;
            }
        });
        atomicReference.set(cbvVar.a(1.0f));
    }
}
