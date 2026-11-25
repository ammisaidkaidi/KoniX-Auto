package defpackage;

import android.os.StrictMode;
import java.lang.Thread;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CrashUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    final /* synthetic */ CrashMetricServiceImpl a;
    private final Thread.UncaughtExceptionHandler b;

    public CrashUncaughtExceptionHandler(CrashMetricServiceImpl bxkVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = bxkVar;
        this.b = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        StackTraceSnapshot busVar;
        try {
            try {
                CrashMetricServiceImpl bxkVar = this.a;
                String name = thread.getName();
                String name2 = ActivityResultDispatchRunnable.getClass().getName();
                for (Throwable cause = ActivityResultDispatchRunnable.getCause(); cause != null && cause != cause.getCause(); cause = cause.getCause()) {
                    name2 = cause.getClass().getName();
                }
                ProtoMsgHoldingMessageAndBool n = ProtoMessageDphStringsAndCxu.i.n();
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMessageDphStringsAndCxu dpmVar = (ProtoMessageDphStringsAndCxu) n.b;
                dpmVar.a |= 1;
                dpmVar.b = true;
                PrimesMetricName btxVar = bxkVar.b;
                String str = btxVar == null ? null : btxVar.a;
                if (str != null) {
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    ProtoMessageDphStringsAndCxu dpmVar2 = (ProtoMessageDphStringsAndCxu) n.b;
                    dpmVar2.a |= 4;
                    dpmVar2.d = str;
                }
                try {
                    ProtoMsgHoldingMessageAndBool n2 = ProtoMessageWrappingDpg.c.n();
                    ProtoMessageLongBoolIntString d = PrimesMetricTransmitter.d(null, bxkVar.c);
                    if (n2.c) {
                        n2.k();
                        n2.c = false;
                    }
                    ProtoMessageWrappingDpg dphVar = (ProtoMessageWrappingDpg) n2.b;
                    d.getClass();
                    dphVar.b = d;
                    dphVar.a |= 1;
                    if (n.c) {
                        n.k();
                        n.c = false;
                    }
                    ProtoMessageDphStringsAndCxu dpmVar3 = (ProtoMessageDphStringsAndCxu) n.b;
                    ProtoMessageWrappingDpg dphVar2 = (ProtoMessageWrappingDpg) n2.h();
                    dphVar2.getClass();
                    dpmVar3.c = dphVar2;
                    dpmVar3.a |= 2;
                } catch (RuntimeException e) {
                    ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) CrashMetricServiceImpl.a.c().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl", "createCrashMetric", 212, "CrashMetricServiceImpl.java")).n("Failed to get process stats.");
                }
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMessageDphStringsAndCxu dpmVar4 = (ProtoMessageDphStringsAndCxu) n.b;
                name.getClass();
                dpmVar4.a |= 8;
                dpmVar4.e = name;
                Class<?> cls = ActivityResultDispatchRunnable.getClass();
                int i = cls == OutOfMemoryError.class ? 3 : NullPointerException.class.isAssignableFrom(GalTransportThread) ? 2 : RuntimeException.class.isAssignableFrom(GalTransportThread) ? 4 : Error.class.isAssignableFrom(GalTransportThread) ? 5 : 1;
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMessageDphStringsAndCxu dpmVar5 = (ProtoMessageDphStringsAndCxu) n.b;
                dpmVar5.f = i - 1;
                int i2 = dpmVar5.a | 16;
                dpmVar5.a = i2;
                name2.getClass();
                dpmVar5.a = i2 | 128;
                dpmVar5.g = name2;
                ProtoMsgHoldingMessageAndBool n3 = EntryListProto.d.n();
                ProtoMsgHoldingMessageAndBool u = OverflowCheckedLongArrayUtil.u(ActivityResultDispatchRunnable);
                if (n3.c) {
                    n3.k();
                    n3.c = false;
                }
                EntryListProto cxuVar = (EntryListProto) n3.b;
                RepeatedEntryProto cxtVar = (RepeatedEntryProto) u.h();
                cxtVar.getClass();
                cxuVar.b = cxtVar;
                cxuVar.a |= 1;
                for (Throwable cause2 = ActivityResultDispatchRunnable.getCause(); cause2 != null; cause2 = cause2.getCause()) {
                    ProtoMsgHoldingMessageAndBool u2 = OverflowCheckedLongArrayUtil.u(cause2);
                    if (n3.c) {
                        n3.k();
                        n3.c = false;
                    }
                    EntryListProto cxuVar2 = (EntryListProto) n3.b;
                    RepeatedEntryProto cxtVar2 = (RepeatedEntryProto) u2.h();
                    cxtVar2.getClass();
                    cxuVar2.b();
                    cxuVar2.c.add(cxtVar2);
                }
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoMessageDphStringsAndCxu dpmVar6 = (ProtoMessageDphStringsAndCxu) n.b;
                EntryListProto cxuVar3 = (EntryListProto) n3.h();
                cxuVar3.getClass();
                dpmVar6.h = cxuVar3;
                dpmVar6.a |= 256;
                ProtoMessageDphStringsAndCxu dpmVar7 = (ProtoMessageDphStringsAndCxu) n.h();
                StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
                StrictMode.setVmPolicy(StrictMode.VmPolicy.LAX);
                CrashConfigurations bxfVar = (CrashConfigurations) bxkVar.e.a();
                if (bxfVar.b()) {
                    if (bxkVar.i) {
                        ThreadStateTracker butVar = bxkVar.d.e;
                        synchronized (butVar.a) {
                            busVar = butVar.a.isEmpty() ? bus.a : new StackTraceSnapshot((ThreadStateSampleBuffer[]) butVar.a.values().toArray(new ThreadStateSampleBuffer[0]));
                        }
                    } else {
                        busVar = null;
                    }
                    MetricDispatcherImpl bwnVar = bxkVar.d;
                    PrimesMetricBuilder a = PrimesMetric.a();
                    ProtoMsgHoldingMessageAndBool n4 = ProtoRootAggregateMessage.y.n();
                    if (n4.c) {
                        n4.k();
                        n4.c = false;
                    }
                    ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) n4.b;
                    dpmVar7.getClass();
                    dpzVar.h = dpmVar7;
                    dpzVar.a |= 64;
                    a.d((ProtoRootAggregateMessage) n4.h());
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
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) CrashMetricServiceImpl.a.c().g(e2)).h("com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl$PrimesUncaughtExceptionHandler", "uncaughtException", 147, "CrashMetricServiceImpl.java")).n("Failed to record crash.");
            uncaughtExceptionHandler = this.b;
            if (uncaughtExceptionHandler == null) {
                return;
            }
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
