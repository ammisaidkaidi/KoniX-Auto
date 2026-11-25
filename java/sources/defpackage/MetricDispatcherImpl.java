package defpackage;

import android.content.Context;
import android.text.TextUtils;
import androidx.preference.Preference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MetricDispatcherImpl {
    public final MetricDispatcher a;
    public final DaggerProviderInterface b;
    public final Sampler c;
    public final DaggerProviderInterface d;
    public final ThreadStateTracker e;
    private final PrimesShutdownHookRegistry f;
    private final Executor g;

    public MetricDispatcherImpl(MetricDispatcher bwlVar, DaggerProviderInterface dnyVar, PrimesShutdownHookRegistry bulVar, MetricModuleProviders cceVar, DaggerProviderInterface dnyVar2, ThreadStateTracker butVar, Executor executor, DaggerInternalFactoryMarker dgzVar, DaggerProviderInterface dnyVar3) {
        this.a = bwlVar;
        this.f = bulVar;
        this.b = dnyVar;
        this.g = executor;
        this.d = new SamplerOrNullProvider(dnyVar2, 1);
        Context a = ((AppContextProviderFactory) cceVar.a).a();
        Executor executor2 = (Executor) cceVar.b.a();
        executor2.getClass();
        this.c = new Sampler(a, executor2, (SamplerConfigurationChooser) cceVar.c.a(), dgzVar, ((Boolean) cceVar.d.a()).booleanValue(), dnyVar3);
        this.e = butVar;
    }

    public final long a(String str) {
        if (this.f.b) {
            return -1L;
        }
        Sampler ccdVar = this.c;
        if (ccdVar.d.d()) {
            return -1L;
        }
        boolean z = ccdVar.c;
        AbstractSamplingConfiguration cciVar = ccdVar.b;
        if (IcuMessageFormat) {
            return cciVar.a(str);
        }
        return -1L;
    }

    public final ListenableFuture b(final PrimesMetric bwjVar) {
        return this.f.b ? ProjectionIntentHelper.h() : ProjectionIntentHelper.l(new Runnable() { // from class: bwm
            @Override // java.lang.Runnable
            public final void run() {
                PrimesMetricConfigProto b;
                int i;
                FloggerLogRecord[] cubVarArr;
                MetricDispatcherImpl bwnVar = MetricDispatcherImpl.this;
                PrimesMetric bwjVar2 = bwjVar;
                if (bwjVar2.g) {
                    ProtoMsgHoldingMessageAndBool n = PrimesMetricConfigProto.d.n();
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    PrimesMetricConfigProto dpyVar = (PrimesMetricConfigProto) n.b;
                    dpyVar.c = 2;
                    dpyVar.a |= 4;
                    b = (PrimesMetricConfigProto) n.h();
                } else {
                    Long l = bwjVar2.f;
                    Sampler ccdVar = bwnVar.c;
                    boolean z = ccdVar.c;
                    AbstractSamplingConfiguration cciVar = ccdVar.b;
                    b = z ? cciVar.b(ProtoMessageSingleStringL) : cciVar.d();
                }
                if (b.b == -1) {
                    return;
                }
                PrimesDeviceFormFactor bwsVar = (PrimesDeviceFormFactor) bwnVar.b.a();
                ProtoRootAggregateMessage dpzVar = bwjVar2.c;
                ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dpzVar.E(5);
                ddfVar.n(dpzVar);
                ProtoMsgHoldingMessageAndBool n2 = ProtoMessageThreeStringsAndLong.g.n();
                int i2 = bwsVar.h;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessageThreeStringsAndLong dpkVar = (ProtoMessageThreeStringsAndLong) n2.b;
                dpkVar.d = i2 - 1;
                int i3 = dpkVar.a | 4;
                dpkVar.a = i3;
                String str = bwsVar.b;
                if (str != null) {
                    i3 |= 1;
                    dpkVar.a = i3;
                    dpkVar.b = str;
                }
                int i4 = i3 | 8;
                dpkVar.a = i4;
                dpkVar.e = 401601347L;
                String str2 = bwsVar.d;
                if (str2 != null) {
                    i4 |= 2;
                    dpkVar.a = i4;
                    dpkVar.c = str2;
                }
                String str3 = bwsVar.c;
                if (str3 != null) {
                    dpkVar.a = i4 | 16;
                    dpkVar.f = str3;
                }
                if (ddfVar.c) {
                    ddfVar.k();
                    ddfVar.c = false;
                }
                ProtoRootAggregateMessage dpzVar2 = (ProtoRootAggregateMessage) ddfVar.b;
                ProtoMessageThreeStringsAndLong dpkVar2 = (ProtoMessageThreeStringsAndLong) n2.h();
                ProtoRootAggregateMessage dpzVar3 = dpz.y;
                dpkVar2.getClass();
                dpzVar2.f = dpkVar2;
                dpzVar2.a |= 16;
                if (DirectBootUtils.c(bwsVar.a)) {
                    ProtoMsgHoldingMessageAndBool n3 = ProtoMessageIntAndTwoLongs.d.n();
                    long freeSpace = bwsVar.e.a().getFreeSpace() / 1024;
                    if (n3.c) {
                        n3.k();
                        n3.c = false;
                    }
                    ProtoMessageIntAndTwoLongs dpoVar = (ProtoMessageIntAndTwoLongs) n3.b;
                    dpoVar.a |= 1;
                    dpoVar.b = freeSpace;
                    long longValue = ((Long) bwsVar.f.a()).longValue();
                    if (n3.c) {
                        n3.k();
                        n3.c = false;
                    }
                    ProtoMessageIntAndTwoLongs dpoVar2 = (ProtoMessageIntAndTwoLongs) n3.b;
                    dpoVar2.a = 2 | dpoVar2.a;
                    dpoVar2.c = longValue;
                    if (ddfVar.c) {
                        ddfVar.k();
                        ddfVar.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar4 = (ProtoRootAggregateMessage) ddfVar.b;
                    ProtoMessageIntAndTwoLongs dpoVar3 = (ProtoMessageIntAndTwoLongs) n3.h();
                    dpoVar3.getClass();
                    dpzVar4.u = dpoVar3;
                    dpzVar4.a |= 2097152;
                }
                StopwatchTicker colVar = bwsVar.g;
                String str4 = colVar == null ? null : ((PrimesMetricName) colVar.a()).a;
                if (!TextUtils.isEmpty(str4)) {
                    ProtoMessageIntAndString dpjVar = dpzVar.p;
                    if (dpjVar == null) {
                        dpjVar = dpj.c;
                    }
                    ProtoMsgHoldingMessageAndBool ddfVar2 = (ProtoMsgHoldingMessageAndBool) dpjVar.E(5);
                    ddfVar2.n(dpjVar);
                    if (((ProtoMessageIntAndString) ddfVar2.b).b.isEmpty()) {
                        if (ddfVar2.c) {
                            ddfVar2.k();
                            ddfVar2.c = false;
                        }
                        ProtoMessageIntAndString dpjVar2 = (ProtoMessageIntAndString) ddfVar2.b;
                        str4.getClass();
                        dpjVar2.a |= 1;
                        dpjVar2.b = str4;
                    } else {
                        String str5 = str4 + "::" + ((ProtoMessageIntAndString) ddfVar2.b).b;
                        if (ddfVar2.c) {
                            ddfVar2.k();
                            ddfVar2.c = false;
                        }
                        ProtoMessageIntAndString dpjVar3 = (ProtoMessageIntAndString) ddfVar2.b;
                        dpjVar3.a |= 1;
                        dpjVar3.b = str5;
                    }
                    if (ddfVar.c) {
                        ddfVar.k();
                        ddfVar.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar5 = (ProtoRootAggregateMessage) ddfVar.b;
                    ProtoMessageIntAndString dpjVar4 = (ProtoMessageIntAndString) ddfVar2.h();
                    dpjVar4.getClass();
                    dpzVar5.p = dpjVar4;
                    dpzVar5.a |= 524288;
                }
                ProtoRootAggregateMessage dpzVar6 = (ProtoRootAggregateMessage) ddfVar.h();
                ProtoMsgHoldingMessageAndBool ddfVar3 = (ProtoMsgHoldingMessageAndBool) dpzVar6.E(5);
                ddfVar3.n(dpzVar6);
                if (ddfVar3.c) {
                    ddfVar3.k();
                    ddfVar3.c = false;
                }
                ProtoRootAggregateMessage dpzVar7 = (ProtoRootAggregateMessage) ddfVar3.b;
                b.getClass();
                dpzVar7.v = b;
                dpzVar7.a |= 33554432;
                StackTraceSnapshot busVar = bwjVar2.h;
                if (busVar != null) {
                    ArrayList arrayList = new ArrayList();
                    int i5 = 0;
                    while (true) {
                        ThreadStateSampleBuffer[] buvVarArr = busVar.b;
                        if (i5 >= buvVarArr.length) {
                            break;
                        }
                        ThreadStateSampleBuffer buvVar = buvVarArr[i5];
                        int i6 = busVar.c[i5];
                        int max = Math.max(i6 - Math.min(100, 19), 0);
                        int i7 = i6 - max;
                        if (i7 <= 0) {
                            cubVarArr = new FloggerLogRecord[0];
                        } else {
                            FloggerLogRecord[] cubVarArr2 = new FloggerLogRecord[i7];
                            for (int i8 = 0; i8 < i7; i8++) {
                                cubVarArr2[i8] = (FloggerLogRecord) buvVar.a.get((i8 + max) % 20);
                            }
                            int i9 = buvVar.b;
                            if (i6 <= 0) {
                                i = -i6;
                            } else {
                                int i10 = buvVar.c;
                                i = (Preference.DEFAULT_ORDER - i6) - 27;
                            }
                            int i11 = (NavInstructionTypeEnum - (20 - i7)) + 1;
                            if (i11 >= i7) {
                                cubVarArr = new FloggerLogRecord[0];
                            } else if (i11 > 0) {
                                int i12 = i7 - i11;
                                cubVarArr = new FloggerLogRecord[i12];
                                System.arraycopy(cubVarArr2, i11, cubVarArr, 0, i12);
                            } else {
                                cubVarArr = cubVarArr2;
                            }
                        }
                        for (FloggerLogRecord cubVar : cubVarArr) {
                            arrayList.add(new StackTraceElementRecord(cubVar, i5));
                        }
                        i5++;
                    }
                    Collections.sort(arrayList, bup.a);
                    ProtoMsgHoldingMessageAndBool n4 = ProtoMessageTwoEnumsAndBytes.d.n();
                    long j = 0;
                    for (int max2 = Math.max(arrayList.size() - 100, 0); max2 < arrayList.size(); max2++) {
                        StackTraceElementRecord burVar = (StackTraceElementRecord) arrayList.get(max2);
                        FloggerLogRecord cubVar2 = burVar.a;
                        int i13 = burVar.b;
                        BaseLogSite f = cubVar2.f();
                        String b2 = f.b();
                        String d = f.d();
                        int a = f.a();
                        StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 13 + d.length());
                        StaggeredGridLayoutParams.append(b2);
                        StaggeredGridLayoutParams.append(".");
                        StaggeredGridLayoutParams.append(ProtoMsgIntStringInt);
                        StaggeredGridLayoutParams.append(":");
                        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
                        Long a2 = StringMd5Hasher.a(StaggeredGridLayoutParams.toString());
                        if (a2 != null) {
                            long longValue2 = a2.longValue();
                            if (n4.c) {
                                n4.k();
                                n4.c = false;
                            }
                            ProtoMessageTwoEnumsAndBytes dpnVar = (ProtoMessageTwoEnumsAndBytes) n4.b;
                            ByteStringList ddqVar = dpnVar.a;
                            if (!ddqVar.c()) {
                                dpnVar.a = GeneratedMessageLite.x(ddqVar);
                            }
                            dpnVar.a.e(longValue2);
                            long e = cubVar2.e() / 1000000;
                            long j2 = e - j;
                            if (n4.c) {
                                n4.k();
                                n4.c = false;
                            }
                            ProtoMessageTwoEnumsAndBytes dpnVar2 = (ProtoMessageTwoEnumsAndBytes) n4.b;
                            ByteStringList ddqVar2 = dpnVar2.b;
                            if (!ddqVar2.c()) {
                                dpnVar2.b = GeneratedMessageLite.x(ddqVar2);
                            }
                            dpnVar2.b.e(j2);
                            if (n4.c) {
                                n4.k();
                                n4.c = false;
                            }
                            ProtoMessageTwoEnumsAndBytes dpnVar3 = (ProtoMessageTwoEnumsAndBytes) n4.b;
                            LazyStringList ddpVar = dpnVar3.c;
                            if (!ddpVar.c()) {
                                dpnVar3.c = GeneratedMessageLite.v(ddpVar);
                            }
                            dpnVar3.c.g(i13);
                            j = e;
                        }
                    }
                    ProtoMessageTwoEnumsAndBytes dpnVar4 = (ProtoMessageTwoEnumsAndBytes) n4.h();
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar8 = (ProtoRootAggregateMessage) ddfVar3.b;
                    dpnVar4.getClass();
                    dpzVar8.w = dpnVar4;
                    dpzVar8.a |= 67108864;
                }
                String str6 = bwjVar2.a;
                if (bwjVar2.b) {
                    if (str6 != null) {
                        ProtoRootAggregateMessage dpzVar9 = (ProtoRootAggregateMessage) ddfVar3.b;
                        dpzVar9.a |= 32768;
                        dpzVar9.o = str6;
                    } else {
                        ProtoRootAggregateMessage dpzVar10 = (ProtoRootAggregateMessage) ddfVar3.b;
                        dpzVar10.a &= -32769;
                        dpzVar10.o = ProtoRootAggregateMessage.y.o;
                    }
                } else if (str6 != null) {
                    ProtoRootAggregateMessage dpzVar11 = (ProtoRootAggregateMessage) ddfVar3.b;
                    dpzVar11.a |= 4;
                    dpzVar11.d = str6;
                } else {
                    ProtoRootAggregateMessage dpzVar12 = (ProtoRootAggregateMessage) ddfVar3.b;
                    dpzVar12.a &= -5;
                    dpzVar12.d = ProtoRootAggregateMessage.y.d;
                }
                Object a3 = bwnVar.d.a();
                ProtoEmptyMessageBeta dotVar = bwjVar2.d;
                if (a3 != null || dotVar != null) {
                    if (a3 != null && dotVar != null) {
                        GeneratedMessageLite ddkVar = (GeneratedMessageLite) a3;
                        ProtoMsgHoldingMessageAndBool ddfVar4 = (ProtoMsgHoldingMessageAndBool) ddkVar.E(5);
                        ddfVar4.n(ddkVar);
                        ProtoMsgSubclassOfDdf ddhVar = (ProtoMsgSubclassOfDdf) ddfVar4;
                        ddhVar.n(dotVar);
                        a3 = (ProtoEmptyMessageBeta) ddhVar.h();
                    } else if (a3 == null) {
                        dotVar.getClass();
                        a3 = dotVar;
                    }
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar13 = (ProtoRootAggregateMessage) ddfVar3.b;
                    a3.getClass();
                    dpzVar13.m = (ProtoEmptyMessageBeta) a3;
                    dpzVar13.a |= 8192;
                }
                String str7 = bwjVar2.e;
                if (str7 != null) {
                    ProtoMsgHoldingMessageAndBool n5 = ProtoMessageIntAndString.c.n();
                    if (n5.c) {
                        n5.k();
                        n5.c = false;
                    }
                    ProtoMessageIntAndString dpjVar5 = (ProtoMessageIntAndString) n5.b;
                    dpjVar5.a |= 1;
                    dpjVar5.b = str7;
                    if (ddfVar3.c) {
                        ddfVar3.k();
                        ddfVar3.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar14 = (ProtoRootAggregateMessage) ddfVar3.b;
                    ProtoMessageIntAndString dpjVar6 = (ProtoMessageIntAndString) n5.h();
                    dpjVar6.getClass();
                    dpzVar14.p = dpjVar6;
                    dpzVar14.a |= 524288;
                }
                MetricDispatcher bwlVar = bwnVar.a;
                ProtoRootAggregateMessage dpzVar15 = (ProtoRootAggregateMessage) ddfVar3.h();
                ImmutableList cqhVar = (ImmutableList) bwlVar.b.a();
                int size = cqhVar.size();
                RuntimeException runtimeException = null;
                for (int i14 = 0; i14 < size; i14++) {
                    try {
                        ((MetricSnapshotTransmitterApi) cqhVar.get(i14)).b(dpzVar15);
                    } catch (RuntimeException e2) {
                        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) MetricDispatcher.a.c().g(e2)).h("com/google/android/libraries/performance/primes/metrics/core/MetricDispatcher", "dispatch", 58, "MetricDispatcher.java")).n("One transmitter failed to send message");
                        if (runtimeException == null) {
                            runtimeException = e2;
                        }
                    }
                }
                if (runtimeException != null) {
                    throw runtimeException;
                }
                bwnVar.c.d.c();
            }
        }, this.g);
    }

    public final boolean c(String str) {
        return a(str) != -1;
    }

    public final boolean d() {
        Sampler ccdVar = this.c;
        return ccdVar.c && ccdVar.b.c();
    }
}
