package defpackage;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Process;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class NetworkMetricServiceImpl implements PrimesMetricServiceLifecycle {
    public final Application a;
    public final DaggerInternalFactoryMarker b;
    public final MetricDispatcherImpl c;
    public final MemoryUsageCapture d;
    private final ListeningScheduledExecutorService e;
    private final PrimesShutdownHookRegistry f;
    private final boolean g;
    private final CancellableScheduledFuture h;

    public NetworkMetricServiceImpl() {
    }

    public NetworkMetricServiceImpl(MetricDispatcherAssistedFactory bwoVar, Context context, CancellableScheduledFuture byyVar, ListeningScheduledExecutorService daiVar, DaggerInternalFactoryMarker dgzVar, MemoryUsageCapture bzeVar, PrimesShutdownHookRegistry bulVar, DaggerProviderInterface dnyVar, Executor executor, GuavaOptional cocVar) {
        this();
        new AtomicReference(byr.a);
        new ConcurrentHashMap();
        this.h = byyVar;
        this.f = bulVar;
        this.c = bwoVar.a(executor, dgzVar, dnyVar);
        this.a = (Application) context;
        this.e = daiVar;
        this.b = dgzVar;
        this.d = bzeVar;
        this.g = ((Boolean) cocVar.b(Boolean.FALSE)).booleanValue();
    }

    public static boolean c(int i) {
        return i != 1;
    }

    public final void a() {
        this.h.a = new JankFrameCallback() { // from class: bza
            @Override // defpackage.JankFrameCallback
            public final void a(int i, String str) {
                NetworkMetricServiceImpl.this.d(null, i, str);
            }
        };
    }

    public final void b(PrimesMetricName btxVar) {
        d(btxVar.a, 1, null);
    }

    public final void d(final String str, final int i, final String str2) {
        if (this.f.b) {
            ProjectionIntentHelper.h();
        } else {
            ProjectionIntentHelper.m(new FutureSupplier() { // from class: bzb
                @Override // defpackage.FutureSupplier
                public final ListenableFuture a() {
                    NetworkMetricServiceImpl byzVar = NetworkMetricServiceImpl.this;
                    int i2 = i;
                    String str3 = str;
                    String str4 = str2;
                    MemoryConfigurations byqVar = (MemoryConfigurations) byzVar.b.a();
                    long a = NetworkMetricServiceImpl.c(i2) ? byqVar.f == 3 ? 1000L : -1L : byzVar.c.a(str3);
                    if (SingleStringProtoMessage == -1) {
                        return dad.a;
                    }
                    if (byqVar.c) {
                        System.gc();
                        System.runFinalization();
                        System.gc();
                    }
                    GuavaOptional cocVar = byqVar.b;
                    if (!byqVar.a) {
                        ProtoMsgHoldingMessageAndBool n = ProtoRootAggregateMessage.y.n();
                        ProtoMessageWithDowDphDov b = byzVar.d.b(i2, Process.myPid(), null, str4);
                        if (n.c) {
                            n.k();
                            n.c = false;
                        }
                        ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) n.b;
                        b.getClass();
                        dpzVar.b = b;
                        dpzVar.a |= 1;
                        ProtoRootAggregateMessage dpzVar2 = (ProtoRootAggregateMessage) n.h();
                        PrimesMetricBuilder a2 = PrimesMetric.a();
                        a2.a = str3;
                        a2.b(true);
                        a2.d = Long.valueOf(SingleStringProtoMessage);
                        a2.d(dpzVar2);
                        a2.b = null;
                        if (NetworkMetricServiceImpl.c(i2)) {
                            a2.c(true);
                        }
                        return byzVar.c.b(a2.a());
                    }
                    List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ProcessNameReader.a(byzVar.a).getRunningAppProcesses();
                    if (runningAppProcesses == null) {
                        return dad.a;
                    }
                    ArrayList arrayList = new ArrayList(runningAppProcesses.size());
                    byzVar.a.getPackageName();
                    for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        ProtoMsgHoldingMessageAndBool n2 = ProtoRootAggregateMessage.y.n();
                        ProtoMessageWithDowDphDov b2 = byzVar.d.b(i2, runningAppProcessInfo.pid, runningAppProcessInfo.processName, str4);
                        if (n2.c) {
                            n2.k();
                            n2.c = false;
                        }
                        ProtoRootAggregateMessage dpzVar3 = (ProtoRootAggregateMessage) n2.b;
                        b2.getClass();
                        dpzVar3.b = b2;
                        dpzVar3.a |= 1;
                        ProtoRootAggregateMessage dpzVar4 = (ProtoRootAggregateMessage) n2.h();
                        PrimesMetricBuilder a3 = PrimesMetric.a();
                        a3.a = str3;
                        a3.b(true);
                        a3.d = Long.valueOf(SingleStringProtoMessage);
                        a3.d(dpzVar4);
                        a3.b = null;
                        if (NetworkMetricServiceImpl.c(i2)) {
                            a3.c(true);
                        }
                        arrayList.add(byzVar.c.b(a3.a()));
                    }
                    return ProjectionIntentHelper.g(arrayList).a(ProjectionIntentHelper.r(), czj.a);
                }
            }, this.e);
        }
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public final void u() {
        if (this.g) {
            a();
        }
    }
}
