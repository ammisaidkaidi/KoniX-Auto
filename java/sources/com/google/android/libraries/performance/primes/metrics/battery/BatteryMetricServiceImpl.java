package com.google.android.libraries.performance.primes.metrics.battery;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.health.HealthStats;
import android.os.health.SystemHealthManager;
import android.util.Base64;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.util.Collections;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BatteryMetricServiceImpl extends PrimesMetricExtensionUtils implements BatteryMetricServiceInterface, bve, bvd, bwq {
    private static final FloggerLoggerFactory b = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl");
    final AtomicBoolean a = new AtomicBoolean();
    private final Context c;
    private final PrimesLifecycleRegistrar d;
    private final ListeningScheduledExecutorService e;
    private final PersistentStorageHolder f;
    private final PrimesRuntimeContext g;
    private final MetricDispatcherImpl h;
    private final AtomicBoolean i;

    public BatteryMetricServiceImpl(MetricDispatcherAssistedFactory bwoVar, Context context, PrimesLifecycleRegistrar bvhVar, ListeningScheduledExecutorService daiVar, DaggerInternalFactoryMarker dgzVar, PersistentStorageHolder bwdVar, PrimesRuntimeContext bvnVar, DaggerProviderInterface dnyVar, Executor executor) {
        new ConcurrentHashMap();
        this.i = new AtomicBoolean(false);
        this.h = bwoVar.a(executor, dgzVar, dnyVar);
        this.c = context;
        this.d = bvhVar;
        this.e = daiVar;
        this.f = bwdVar;
        this.g = bvnVar;
    }

    private final ListenableFuture v(final PrimesLifecycleEventEnum doiVar) {
        return ProjectionIntentHelper.m(new FutureSupplier() { // from class: bvt
            @Override // defpackage.FutureSupplier
            public final ListenableFuture a() {
                return BatteryMetricServiceImpl.this.r(doiVar, null);
            }
        }, this.e);
    }

    @Override // defpackage.BatteryMetricServiceInterface
    public void a(Activity activity, Bundle bundle) {
        if (this.i.getAndSet(true)) {
            return;
        }
        b(null);
    }

    @Override // defpackage.ActivityStopEventListener
    public void b(Activity activity) {
        if (this.a.get()) {
            return;
        }
        t();
    }

    @Override // defpackage.ActivityEventListenerC
    public void c(Activity activity) {
        s();
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x031c, code lost:
    
        if ((r5 / r8) <= 3.472222222222222E-5d) goto L162;
     */
    /* JADX WARN: Removed duplicated region for block: B:197:0x009e A[Catch: all -> 0x0548, TryCatch #2 {, blocks: (B:9:0x0014, B:14:0x0046, B:17:0x0097, B:20:0x0119, B:197:0x009e, B:199:0x00a4, B:201:0x00ac, B:203:0x00b1, B:205:0x00b7, B:206:0x00bc, B:208:0x00c2, B:209:0x00cb, B:211:0x00d1, B:212:0x00da, B:214:0x00e0, B:215:0x00e9, B:217:0x00ef, B:218:0x00f8, B:220:0x00fe, B:221:0x0103, B:223:0x0107, B:225:0x010b, B:226:0x0115, B:236:0x004b, B:240:0x0052, B:243:0x005c, B:244:0x007d, B:246:0x0031), top: B:8:0x0014, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ ListenableFuture r(PrimesLifecycleEventEnum doiVar, PrimesMetricName btxVar) {
        Object obj;
        ClearcutEventProto cdlVar;
        PrimesLifecycleEventEnum doiVar2;
        MetricSnapshotRecord bwcVar;
        ProtoEmptyMessageBeta dotVar;
        boolean commit;
        Long l;
        ProtoMegaConfigMessage dosVar;
        ProtoRootAggregateMessage dpzVar = null;
        if (!this.h.c(null)) {
            return dad.a;
        }
        GoogleSignatureVerifier.e();
        synchronized (this.f) {
            PersistentStorage cbpVar = this.f.a;
            ProtoParser dexVar = (ProtoParser) ClearcutEventProto.j.E(7);
            GoogleSignatureVerifier.e();
            byte[] decode = !DirectBootUtils.c(cbpVar.b) ? null : Base64.decode(((SharedPreferences) cbpVar.c.a()).getString("primes.battery.snapshot", ""), 0);
            if (decode != null) {
                int length = decode.length;
                if (length == 0) {
                    obj = null;
                } else if (decode[0] == 1) {
                    try {
                        obj = dexVar.d(decode, length - 1, ExtensionRegistryLite.b());
                    } catch (InvalidProtocolBufferException e) {
                        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) PersistentStorage.a.c().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/persistent/PersistentStorage", "readProto", 80, "PersistentStorage.java")).n("failure reading proto");
                        obj = null;
                    }
                } else {
                    ((ParameterizedLoggerApi) PersistentStorage.a.c().h("com/google/android/libraries/performance/primes/persistent/PersistentStorage", "readProto", 83, "PersistentStorage.java")).n("wrong header");
                }
                cdlVar = (ClearcutEventProto) obj;
                if (cdlVar != null) {
                    bwcVar = null;
                } else {
                    if ((cdlVar.a & 32) != 0) {
                        PrimesLifecycleEventEnum b2 = PrimesLifecycleEventEnum.b(cdlVar.g);
                        if (b2 == null) {
                            b2 = PrimesLifecycleEventEnum.UNKNOWN;
                        }
                        doiVar2 = b2;
                    } else {
                        doiVar2 = null;
                    }
                    ProtoMegaConfigMessage dosVar2 = cdlVar.b;
                    ProtoMegaConfigMessage dosVar3 = dosVar2 == null ? dos.ar : dosVar2;
                    Long valueOf = (cdlVar.a & 2) != 0 ? Long.valueOf(cdlVar.c) : null;
                    Long valueOf2 = (cdlVar.a & 4) != 0 ? Long.valueOf(cdlVar.d) : null;
                    Long valueOf3 = (cdlVar.a & 8) != 0 ? Long.valueOf(cdlVar.e) : null;
                    Long valueOf4 = (cdlVar.a & 16) != 0 ? Long.valueOf(cdlVar.f) : null;
                    int i = cdlVar.a;
                    String str = (NavInstructionTypeEnum & 64) != 0 ? cdlVar.h : null;
                    if ((NavInstructionTypeEnum & 256) != 0) {
                        ProtoEmptyMessageBeta dotVar2 = cdlVar.i;
                        dotVar = dotVar2 == null ? dot.a : dotVar2;
                    } else {
                        dotVar = null;
                    }
                    bwcVar = new MetricSnapshotRecord(dosVar3, valueOf, valueOf2, valueOf3, valueOf4, doiVar2, str, dotVar);
                }
            }
            obj = null;
            cdlVar = (ClearcutEventProto) obj;
            if (cdlVar != null) {
            }
        }
        PrimesRuntimeContext bvnVar = this.g;
        Long valueOf5 = Long.valueOf(SystemClock.elapsedRealtime());
        Long valueOf6 = Long.valueOf(System.currentTimeMillis());
        SystemHealthManager systemHealthManager = (SystemHealthManager) bvnVar.a.a.getSystemService("systemhealth");
        HealthStats takeMyUidSnapshot = systemHealthManager != null ? systemHealthManager.takeMyUidSnapshot() : null;
        ((BatteryMetricServiceFactory) bvnVar.c).a();
        MetricSnapshotRecord c = PrimesMetricTransmitter.c(valueOf5, valueOf6, takeMyUidSnapshot, doiVar, bvnVar);
        synchronized (this.f) {
            PersistentStorageHolder bwdVar = this.f;
            ProtoMsgHoldingMessageAndBool n = ClearcutEventProto.j.n();
            ProtoMegaConfigMessage dosVar4 = c.a;
            if (dosVar4 != null) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ClearcutEventProto cdlVar2 = (ClearcutEventProto) n.b;
                cdlVar2.b = dosVar4;
                cdlVar2.a |= 1;
            }
            Long l2 = c.b;
            if (l2 != null) {
                long longValue = l2.longValue();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ClearcutEventProto cdlVar3 = (ClearcutEventProto) n.b;
                cdlVar3.a |= 2;
                cdlVar3.c = longValue;
            }
            Long l3 = c.c;
            if (l3 != null) {
                long longValue2 = l3.longValue();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ClearcutEventProto cdlVar4 = (ClearcutEventProto) n.b;
                cdlVar4.a |= 4;
                cdlVar4.d = longValue2;
            }
            Long l4 = c.d;
            if (l4 != null) {
                long longValue3 = l4.longValue();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ClearcutEventProto cdlVar5 = (ClearcutEventProto) n.b;
                cdlVar5.a |= 8;
                cdlVar5.e = longValue3;
            }
            Long l5 = c.e;
            if (l5 != null) {
                long longValue4 = l5.longValue();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ClearcutEventProto cdlVar6 = (ClearcutEventProto) n.b;
                cdlVar6.a |= 16;
                cdlVar6.f = longValue4;
            }
            PrimesLifecycleEventEnum doiVar3 = c.f;
            if (doiVar3 != null) {
                int i2 = doiVar3.h;
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ClearcutEventProto cdlVar7 = (ClearcutEventProto) n.b;
                cdlVar7.a |= 32;
                cdlVar7.g = i2;
            }
            String str2 = c.g;
            if (str2 != null) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ClearcutEventProto cdlVar8 = (ClearcutEventProto) n.b;
                cdlVar8.a |= 64;
                cdlVar8.h = str2;
            }
            ProtoEmptyMessageBeta dotVar3 = c.h;
            if (dotVar3 != null) {
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ClearcutEventProto cdlVar9 = (ClearcutEventProto) n.b;
                cdlVar9.i = dotVar3;
                cdlVar9.a |= 256;
            }
            PersistentStorage cbpVar2 = bwdVar.a;
            ClearcutEventProto cdlVar10 = (ClearcutEventProto) n.h();
            cdlVar10.getClass();
            byte[] h = cdlVar10.h();
            GoogleSignatureVerifier.e();
            if (DirectBootUtils.c(cbpVar2.b)) {
                int length2 = h.length;
                byte[] bArr = new byte[length2 + 1];
                bArr[0] = 1;
                System.arraycopy(h, 0, bArr, 1, length2);
                commit = ((SharedPreferences) cbpVar2.c.a()).edit().putString("primes.battery.snapshot", Base64.encodeToString(bArr, 0)).commit();
            } else {
                commit = false;
            }
        }
        if (!commit) {
            this.d.b(this);
            synchronized (this.f) {
                PersistentStorage cbpVar3 = this.f.a;
                GoogleSignatureVerifier.e();
                if (DirectBootUtils.c(cbpVar3.b)) {
                    ((SharedPreferences) cbpVar3.c.a()).edit().remove("primes.battery.snapshot").commit();
                }
            }
            throw new IOException("Failure storing persistent snapshot and helper data");
        }
        PrimesRuntimeContext bvnVar2 = this.g;
        if (bwcVar != null && Objects.equals(bwcVar.d, c.d) && Objects.equals(bwcVar.e, c.e) && bwcVar.b != null && bwcVar.c != null && (ProtoMessageSingleStringL = c.b) != null && c.c != null) {
            long longValue5 = l.longValue();
            Long l6 = bwcVar.b;
            l6.getClass();
            long longValue6 = longValue5 - l6.longValue();
            Long l7 = c.c;
            l7.getClass();
            long longValue7 = l7.longValue();
            Long l8 = bwcVar.c;
            l8.getClass();
            long longValue8 = longValue7 - l8.longValue();
            if (longValue8 > 0) {
                long abs = Math.abs(longValue6 - longValue8);
                if (MediaBrowserConnectCallbackRunnable >= 25) {
                    double d = abs;
                    double d2 = longValue8;
                    Double.isNaN(ProtoMsgIntStringInt);
                    Double.isNaN(d2);
                }
                PrimesAppContextHolder bwfVar = bvnVar2.a;
                ProtoMegaConfigMessage k = PrimesMetricExtensionUtils.k(c.a, bwcVar.a);
                if (ProtoCompositeMessageK == null) {
                    dosVar = null;
                } else {
                    ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) k.E(5);
                    ddfVar.n(ProtoCompositeMessageK);
                    SyncPathMatcher bvvVar = bwfVar.b;
                    Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).g);
                    for (int i3 = 0; i3 < ((ProtoMegaConfigMessage) ddfVar.b).g.size(); i3++) {
                        ddfVar.ac(i3, bvvVar.b(ddfVar.D(i3)));
                    }
                    Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).h);
                    for (int i4 = 0; i4 < ((ProtoMegaConfigMessage) ddfVar.b).h.size(); i4++) {
                        ddfVar.ad(i4, bvvVar.b(ddfVar.E(i4)));
                    }
                    Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).i);
                    for (int i5 = 0; i5 < ((ProtoMegaConfigMessage) ddfVar.b).i.size(); i5++) {
                        ddfVar.ae(i5, bvvVar.b(ddfVar.F(i5)));
                    }
                    Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).j);
                    for (int i6 = 0; i6 < ((ProtoMegaConfigMessage) ddfVar.b).j.size(); i6++) {
                        ddfVar.ab(i6, bvvVar.b(ddfVar.G(i6)));
                    }
                    Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).k);
                    for (int i7 = 0; i7 < ((ProtoMegaConfigMessage) ddfVar.b).k.size(); i7++) {
                        ddfVar.Y(i7, bvvVar.b(ddfVar.H(i7)));
                    }
                    Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).l);
                    for (int i8 = 0; i8 < ((ProtoMegaConfigMessage) ddfVar.b).l.size(); i8++) {
                        ddfVar.V(i8, bvvVar.b(ddfVar.I(i8)));
                    }
                    Collections.unmodifiableList(((ProtoMegaConfigMessage) ddfVar.b).n);
                    for (int i9 = 0; i9 < ((ProtoMegaConfigMessage) ddfVar.b).n.size(); i9++) {
                        ddfVar.X(i9, bvvVar.b(ddfVar.J(i9)));
                    }
                    dosVar = (ProtoMegaConfigMessage) ddfVar.h();
                }
                if (dosVar != null && (dosVar.a & 1) != 0 && dosVar.c > 0) {
                    ProtoMsgHoldingMessageAndBool n2 = ProtoEventRecordMessage.k.n();
                    Long l9 = c.b;
                    l9.getClass();
                    long longValue9 = l9.longValue();
                    Long l10 = bwcVar.b;
                    l10.getClass();
                    long longValue10 = longValue9 - l10.longValue();
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    ProtoEventRecordMessage dojVar = (ProtoEventRecordMessage) n2.b;
                    int i10 = dojVar.a | 64;
                    dojVar.a = i10;
                    dojVar.h = longValue10;
                    PrimesLifecycleEventEnum doiVar4 = bwcVar.f;
                    if (doiVar4 != null) {
                        dojVar.b = doiVar4.h;
                        i10 |= 1;
                        dojVar.a = i10;
                    }
                    String str3 = bwcVar.g;
                    if (str3 != null) {
                        i10 |= 8;
                        dojVar.a = i10;
                        dojVar.e = str3;
                    }
                    ProtoEmptyMessageBeta dotVar4 = bwcVar.h;
                    if (dotVar4 != null) {
                        dojVar.f = dotVar4;
                        i10 |= 16;
                        dojVar.a = i10;
                    }
                    PrimesLifecycleEventEnum doiVar5 = c.f;
                    if (doiVar5 != null) {
                        dojVar.g = doiVar5.h;
                        dojVar.a = i10 | 32;
                    }
                    Long l11 = c.b;
                    if (l11 != null) {
                        long longValue11 = l11.longValue();
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        ProtoEventRecordMessage dojVar2 = (ProtoEventRecordMessage) n2.b;
                        dojVar2.a |= 256;
                        dojVar2.j = longValue11;
                    }
                    ProtoEventRecordMessage dojVar3 = (ProtoEventRecordMessage) n2.b;
                    dojVar3.i = dosVar;
                    dojVar3.a |= 128;
                    ProtoMsgHoldingMessageAndBool n3 = ProtoRootAggregateMessage.y.n();
                    ProtoMsgHoldingMessageAndBool n4 = ProtoMessageWrappingDoj.c.n();
                    if (n4.c) {
                        n4.k();
                        n4.c = false;
                    }
                    ProtoMessageWrappingDoj dokVar = (ProtoMessageWrappingDoj) n4.b;
                    ProtoEventRecordMessage dojVar4 = (ProtoEventRecordMessage) n2.h();
                    dojVar4.getClass();
                    dokVar.b = dojVar4;
                    dokVar.a |= 1;
                    if (n3.c) {
                        n3.k();
                        n3.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar2 = (ProtoRootAggregateMessage) n3.b;
                    ProtoMessageWrappingDoj dokVar2 = (ProtoMessageWrappingDoj) n4.h();
                    dokVar2.getClass();
                    dpzVar2.k = dokVar2;
                    dpzVar2.a |= 512;
                    dpzVar = (ProtoRootAggregateMessage) n3.h();
                }
            }
        }
        if (dpzVar == null) {
            return dad.a;
        }
        MetricDispatcherImpl bwnVar = this.h;
        PrimesMetricBuilder a = PrimesMetric.a();
        a.a = c.g;
        a.b(true);
        a.d(dpzVar);
        a.b = c.h;
        return bwnVar.b(a.a());
    }

    public ListenableFuture s() {
        if (!DirectBootUtils.c(this.c)) {
            return dad.a;
        }
        try {
            ex.r(this.a.getAndSet(false));
            return v(PrimesLifecycleEventEnum.FOREGROUND_TO_BACKGROUND);
        } catch (Exception e) {
            return ProjectionIntentHelper.i(ProtoFlagValueMessage);
        }
    }

    public ListenableFuture t() {
        if (!DirectBootUtils.c(this.c)) {
            return dad.a;
        }
        if (!this.a.getAndSet(true)) {
            return v(PrimesLifecycleEventEnum.BACKGROUND_TO_FOREGROUND);
        }
        ((ParameterizedLoggerApi) b.c().h("com/google/android/libraries/performance/primes/metrics/battery/BatteryMetricServiceImpl", "onAppToForeground", 134, "BatteryMetricServiceImpl.java")).n("App is already in the foreground.");
        return ProjectionIntentHelper.h();
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public void u() {
        this.d.a(this);
    }
}
