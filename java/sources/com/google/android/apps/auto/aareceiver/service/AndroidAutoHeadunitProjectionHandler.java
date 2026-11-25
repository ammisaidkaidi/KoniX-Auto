package com.google.android.apps.auto.aareceiver.service;

import android.car.Car;
import android.content.Context;
import android.content.Intent;
import android.hardware.usb.UsbDevice;
import android.os.Handler;
import android.util.Log;
import android.util.Size;
import android.view.KeyEvent;
import com.google.android.apps.auto.aareceiver.media.MediaBrowserService;
import com.google.android.apps.auto.aareceiver.ui.SslCertificateIssueActivity;
import com.google.android.apps.auto.aareceiver.ui.WaitingForConnectionActivity;
import com.google.android.projection.protocol.GalReceiver;
import defpackage.ProjectionDevice;
import defpackage.ProjectionTransportType;
import defpackage.ProjectionHandlerIntConsumer;
import com.google.android.apps.auto.aareceiver.service.AndroidAutoHeadunitProjectionHandler;
import defpackage.DeviceTrackerDevicePredicate;
import defpackage.ProjectionDeviceNotificationInfo;
import defpackage.ProjectionSessionLifecycleListener_bag;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import defpackage.VideoSinkCallback;
import com.google.android.apps.auto.aareceiver.session.ProjectionSession;
import defpackage.ProjectionStartReason;
import defpackage.ProjectionCloseReason;
import defpackage.ImmutableList;
import defpackage.ParameterizedLoggerApi;
import defpackage.AaReceiverFlags45356796Facade;
import defpackage.AaReceiverFlags45351549Facade;
import defpackage.ProjectionIntentHelper;
import j$.util.Collection;
import j$.util.Optional;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AndroidAutoHeadunitProjectionHandler {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler");
    public ProjectionDevice d;
    public Size e;
    final ImmutableMapBase h;
    public final DeviceTracker i;
    public final Context j;
    public final ClusterDisplayAvailability k;
    public final RearViewMonitor l;
    public final Optional m;
    private final ProjectionSessionFactoryDeps n;
    private final AppContextModule o;
    public final SessionStatsCounters b = new SessionStatsCounters();
    public final Handler c = new Handler();
    public boolean f = false;
    public final ConcurrentHashMap g = new ConcurrentHashMap();

    public AndroidAutoHeadunitProjectionHandler(Context context, DeviceTracker bahVar, ProjectionSessionFactoryDeps bbmVar, ClusterDisplayAvailability bfeVar, RearViewMonitor aziVar, AppContextModule dhqVar, Optional optional, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.j = context;
        this.i = bahVar;
        this.n = bbmVar;
        this.k = bfeVar;
        ImmutableMapBuilder e = ImmutableMapBase.e();
        e.f(DisplayType.DISPLAY_TYPE_MAIN, new ProjectionHandlerDisplayCallback(DisplayType.DISPLAY_TYPE_MAIN, this));
        if (bfeVar.a()) {
            e.f(DisplayType.DISPLAY_TYPE_CLUSTER, new ProjectionHandlerDisplayCallback(DisplayType.DISPLAY_TYPE_CLUSTER, this));
        }
        this.h = e.c();
        this.l = aziVar;
        this.o = dhqVar;
        this.m = optional;
    }

    public final double a(DisplayType ckbVar, int i, int i2) {
        ProjectionSession bblVar = this.i.h;
        if (bblVar == null || !bblVar.q.containsKey(ckbVar)) {
            return 1.0d;
        }
        return ScaledVideoConfiguration.a((List) bblVar.q.get(ckbVar), i, i2);
    }

    final Optional b(DisplayType ckbVar) {
        return Optional.ofNullable((VideoSinkCallback) this.g.get(ckbVar));
    }

    public final void c(DisplayType ckbVar, VideoSinkCallback bawVar) {
        this.g.put(ckbVar, bawVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0253  */
    /* JADX WARN: Type inference failed for: r10v10, types: [cmi] */
    /* JADX WARN: Type inference failed for: r3v11, types: [csx] */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v8, types: [android.os.Parcelable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v11, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(final Context context, ProjectionTransportType awpVar, ProjectionDevice awoVar, int i, int i2, final boolean z) {
        String str;
        ?? r9;
        String str2;
        ListenableFuture i3;
        final SettableFuture e;
        Runnable runnable;
        final TransportHandle cmhVar;
        if (NavInstructionTypeEnum <= 0 || i2 <= 0) {
            ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "init", 136, "AndroidAutoHeadunitProjectionHandler.java")).q("Please provide valid display size: w=%d, h=%d", i, i2);
            for (VideoSinkCallback bawVar : this.g.values()) {
                StringBuilder sb = new StringBuilder(50);
                StaggeredGridLayoutParams.append("Invalid display size: w=");
                StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
                StaggeredGridLayoutParams.append(", h=");
                StaggeredGridLayoutParams.append(i2);
                bawVar.g(new IllegalArgumentException(StaggeredGridLayoutParams.toString()));
            }
            return;
        }
        if (!this.o.d()) {
            ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "init", 145, "AndroidAutoHeadunitProjectionHandler.java")).n("Missing permissions");
            Iterator it = this.g.values().iterator();
            while (it.hasNext()) {
                ((VideoSinkCallback) it.next()).g(new IllegalStateException("Necessary permissions not granted"));
            }
            return;
        }
        this.d = awoVar;
        this.e = new Size(i, i2);
        ProjectionSessionFactoryDeps bbmVar = this.n;
        ImmutableMapBase cqkVar = this.h;
        awpVar.getClass();
        awoVar.getClass();
        cqkVar.getClass();
        Context a2 = ((AppContextProviderFactory) bbmVar.a).a();
        Car car = (Car) bbmVar.b.a();
        car.getClass();
        DeviceTracker bahVar = (DeviceTracker) bbmVar.c.a();
        bahVar.getClass();
        DeviceRegistryBase bbyVar = (DeviceRegistryBase) bbmVar.d.a();
        bbyVar.getClass();
        Object a3 = bbmVar.e.a();
        CredentialAssetLoader awxVar = (CredentialAssetLoader) bbmVar.f.a();
        awxVar.getClass();
        CarInfoProvider awtVar = (CarInfoProvider) bbmVar.g.a();
        awtVar.getClass();
        NavigationAppFocusManager axcVar = (NavigationAppFocusManager) bbmVar.h.a();
        axcVar.getClass();
        VoiceSessionAppFocusManager axfVar = (VoiceSessionAppFocusManager) bbmVar.i.a();
        axfVar.getClass();
        ((MarkerSingletonAlpha) bbmVar.j.a()).getClass();
        ((VideoSinkFactoryObject) bbmVar.k.a()).getClass();
        ((MarkerSingletonBeta) bbmVar.l.a()).getClass();
        ClusterDisplayAvailability a4 = ((ClusterDisplayAvailabilityFactory) bbmVar.m).a();
        ClusterDisplayProvider a5 = ((ClusterDisplayProviderFactory) bbmVar.n).a();
        Boolean bool = (Boolean) bbmVar.o.a();
        bool.getClass();
        boolean booleanValue = bool.booleanValue();
        TelemetryTracker bdeVar = (TelemetryTracker) bbmVar.p.a();
        bdeVar.getClass();
        final ProjectionSession bblVar = new ProjectionSession(awpVar, awoVar, i, i2, cqkVar, a2, car, bahVar, bbyVar, (ProjectionSessionScope) a3, awxVar, awtVar, axcVar, axfVar, a4, a5, booleanValue, bdeVar);
        this.b.g++;
        this.f = false;
        bblVar.F.b(new ProjectionSessionLifecycleListener_zj() { // from class: com.google.android.apps.auto.aareceiver.service.AndroidAutoHeadunitProjectionHandler$1
            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void a() {
                ProjectionDevice awoVar2;
                DeviceTracker bahVar2 = AndroidAutoHeadunitProjectionHandler.this.i;
                ProjectionSession bblVar2 = bblVar;
                ProjectionDeviceNotificationInfo g = bahVar2.g(bblVar2.h);
                if (g.b()) {
                    bahVar2.c.cancel(g.d);
                } else {
                    ((ParameterizedLoggerApi) DeviceTracker.a.c().h("com/google/android/apps/auto/aareceiver/service/DeviceTracker", "onProjectionStarted", 210, "DeviceTracker.java")).p("Failed to find notification for %s", bblVar2.h);
                }
                bahVar2.d.g(bblVar2.h, null);
                ImmutableList n = ImmutableList.n(bahVar2.g);
                int size = n.size();
                for (int i4 = 0; i4 < size; i4++) {
                    ((ProjectionSessionLifecycleListener_bag) n.get(i4)).h(bblVar2);
                }
                if (!AaReceiverFlags45351549Facade.c() && (awoVar2 = bahVar2.i) != null) {
                    bahVar2.p(awoVar2);
                    bahVar2.i = null;
                }
                bahVar2.h = bblVar2;
                if (bblVar2.g == ProjectionTransportType.WIRELESS) {
                    WaitingForConnectionActivity.a(bahVar2.e);
                }
                if (IcuMessageFormat) {
                    AndroidAutoHeadunitProjectionHandler azyVar = AndroidAutoHeadunitProjectionHandler.this;
                    azyVar.i.m(azyVar.d);
                }
                if (AndroidAutoHeadunitProjectionHandler.this.f) {
                    bblVar.f();
                }
                AndroidAutoHeadunitProjectionHandler.this.m.ifPresent(azu.a);
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void b() {
                Integer num;
                int i4 = bblVar.G;
                ParameterizedLoggerApi csxVar = (ParameterizedLoggerApi) AndroidAutoHeadunitProjectionHandler.a.c().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1", "onDestroy", 181, "AndroidAutoHeadunitProjectionHandler.java");
                if (i4 != 0) {
                    num = Integer.valueOf(i4 - 256);
                } else {
                    num = null;
                    i4 = 0;
                }
                csxVar.p("Session error: %s", num);
                if (i4 == 232 || i4 == 233) {
                    context.startActivity(new Intent(AndroidAutoHeadunitProjectionHandler.this.j, (Class<?>) SslCertificateIssueActivity.class));
                    AndroidAutoHeadunitProjectionHandler.this.b.e++;
                }
                Iterator it2 = AndroidAutoHeadunitProjectionHandler.this.g.values().iterator();
                while (true) {
                    boolean z2 = true;
                    if (!it2.hasNext()) {
                        break;
                    }
                    VideoSinkCallback bawVar2 = (VideoSinkCallback) it2.next();
                    if (bblVar.z != ProjectionCloseReason.USER_SWITCH) {
                        z2 = false;
                    }
                    bawVar2.f(z2);
                }
                DeviceTracker bahVar2 = AndroidAutoHeadunitProjectionHandler.this.i;
                ProjectionSession bblVar2 = bblVar;
                if (bahVar2.h != bblVar2) {
                    ((ParameterizedLoggerApi) DeviceTracker.a.c().h("com/google/android/apps/auto/aareceiver/service/DeviceTracker", "onProjectionFinished", 238, "DeviceTracker.java")).t("Ignore onProjectionFinished for %s, current projection session: %s", bblVar2, bahVar2.h);
                } else {
                    bahVar2.i = bblVar2.h;
                    bahVar2.d.g(bahVar2.i, bblVar2.z);
                    bahVar2.j = bblVar2.g;
                    bahVar2.h = null;
                    if (bblVar2.g == ProjectionTransportType.WIRELESS && bblVar2.B) {
                        bahVar2.s(bahVar2.g(bblVar2.h), ProjectionTransportType.WIRELESS);
                    }
                    if (!bblVar2.B) {
                        ProjectionDeviceNotificationInfo g = bahVar2.g(bblVar2.h);
                        if (g.c()) {
                            bahVar2.j(ProtoMessageIntAndBooleanG);
                            g.f = 1;
                        } else {
                            g.f = 0;
                        }
                        bahVar2.t();
                    }
                    if (AaReceiverFlags45351549Facade.c() && bahVar2.j == ProjectionTransportType.USB && Collection.EL.stream(bahVar2.i()).anyMatch(new DeviceTrackerDevicePredicate(bahVar2, 0))) {
                        bahVar2.p(bahVar2.i);
                    }
                    if (AaReceiverFlags45356796Facade.a.a().b() && bahVar2.j == ProjectionTransportType.WIRELESS && bahVar2.i.c() == ProjectionCloseReason.PING_TIMEOUT) {
                        ProjectionDeviceNotificationInfo g2 = bahVar2.g(bahVar2.i);
                        if (g2.c()) {
                            Context context2 = bahVar2.e;
                            context2.startActivity(ProjectionIntentHelper.d(context2, g2.g, ProjectionTransportType.WIRELESS, ProjectionStartReason.AUTOMATIC_RESTART));
                        }
                    }
                }
                AndroidAutoHeadunitProjectionHandler.this.b.f++;
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final /* synthetic */ void f() {
            }
        });
        bblVar.w.a(LatencyEventType.SESSION_STARTUP);
        try {
            e = SettableFuture.e();
            runnable = new Runnable() { // from class: bbd
                @Override // java.lang.Runnable
                public final void run() {
                    SettableFuture dasVar = SettableFuture.this;
                    ((ParameterizedLoggerApi) ProjectionSession.a.c().h("com/google/android/apps/auto/aareceiver/session/ProjectionSession", "lambda$openTransport$2", 555, "ProjectionSession.java")).n("Cancelling transportFuture");
                    dasVar.cancel(false);
                }
            };
            bblVar.i.postDelayed(runnable, 25000L);
            TransportFutureCallback bbjVar = new TransportFutureCallback(bblVar, runnable, e);
            UsbDevice a6 = UsbUtils.a(bblVar.f, bblVar.h);
            if (bblVar.g == ProjectionTransportType.WIRELESS && a6 != null) {
                UsbUtils.e(bblVar.f, a6);
            }
            TransportFactoryRegistry cmjVar = bblVar.c;
            cmhVar = null;
            ?? r8 = a6;
            if (bblVar.g != ProjectionTransportType.USB) {
                r8 = 0;
            }
            ProjectionLog.b("AHU.TRANSPORT_FACTORY", "Starting...");
            r9 = cmjVar.c.iterator();
            while (true) {
                if (!r9.hasNext()) {
                    String valueOf = String.valueOf((Object) r8);
                    String.valueOf(valueOf).length();
                    str2 = "Unable to handle ".concat(String.valueOf(valueOf));
                    ProjectionLog.d("AHU.TRANSPORT_FACTORY", str2);
                    str = "Unable to handle ";
                    break;
                }
                TransportHandle b = ((TransportFactory) r9.next()).b(r8, bbjVar);
                if (ProtoLiteMessageBase != null) {
                    str2 = "Start sequence finished.";
                    ProjectionLog.b("AHU.TRANSPORT_FACTORY", "Start sequence finished.");
                    cmhVar = b;
                    str = r8;
                    break;
                }
            }
        } catch (IOException e2) {
            e = e2;
            str = "openTransport";
            r9 = "ProjectionSession.java";
            str2 = "com/google/android/apps/auto/aareceiver/session/ProjectionSession";
        }
        try {
            if (cmhVar == null) {
                String str3 = "openTransport";
                String str4 = "ProjectionSession.java";
                str2 = "com/google/android/apps/auto/aareceiver/session/ProjectionSession";
                ((ParameterizedLoggerApi) ProjectionSession.a.c().h(str2, str3, 590, str4)).n("Factory Handle ConstraintLayoutStateParser null, openTransport failed");
                bblVar.i.removeCallbacks(runnable);
                i3 = ProjectionIntentHelper.i(new NullPointerException());
                str = str3;
                r9 = str4;
            } else {
                str = "openTransport";
                r9 = "ProjectionSession.java";
                str2 = "com/google/android/apps/auto/aareceiver/session/ProjectionSession";
                e.aW(new Runnable() { // from class: bbe
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettableFuture dasVar = SettableFuture.this;
                        TransportHandle cmhVar2 = cmhVar;
                        if (dasVar.isCancelled()) {
                            try {
                                cmhVar2.a();
                            } catch (Exception e3) {
                                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) ProjectionSession.a.b().g(e3)).h("com/google/android/apps/auto/aareceiver/session/ProjectionSession", "lambda$openTransport$3", 601, "ProjectionSession.java")).n("Could not interrupt TransportFactory");
                            }
                        }
                    }
                }, czj.a);
                i3 = e;
            }
        } catch (IOException e3) {
            e = e3;
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) ProjectionSession.a.b().g(ProtoFlagValueMessage)).h(str2, str, 609, r9)).n("Error opening transport");
            i3 = ProjectionIntentHelper.i(ProtoFlagValueMessage);
            ListenableFuture o = TransformFuture.o(i3, new GuavaFunction() { // from class: bbb
                @Override // defpackage.GuavaFunction
                public final Object a(Object obj) {
                    ProjectionSession bblVar2 = ProjectionSession.this;
                    GalTransportConnection clzVar = (GalTransportConnection) obj;
                    for (Map.Entry entry : ((ImmutableMapBase) bblVar2.l).entrySet()) {
                        if (entry.getValue() != baz.a) {
                            bblVar2.j.d(((GalServiceType) entry.getKey()).a(), (GalServiceEndpoint) entry.getValue());
                        }
                    }
                    bblVar2.j.d(GalServiceType.MAIN_DISPLAY.a(), (GalServiceEndpoint) bblVar2.p.get(DisplayType.DISPLAY_TYPE_MAIN));
                    bblVar2.j.d(GalServiceType.MAIN_INPUT.a(), bblVar2.v.a(DisplayType.DISPLAY_TYPE_MAIN));
                    if (bblVar2.p.containsKey(DisplayType.DISPLAY_TYPE_CLUSTER)) {
                        bblVar2.j.d(GalServiceType.CLUSTER_DISPLAY.a(), (GalServiceEndpoint) bblVar2.p.get(DisplayType.DISPLAY_TYPE_CLUSTER));
                        bblVar2.j.d(GalServiceType.CLUSTER_INPUT.a(), bblVar2.v.a(DisplayType.DISPLAY_TYPE_CLUSTER));
                    }
                    bblVar2.u.a(bblVar2.j);
                    bblVar2.t.a();
                    bblVar2.v.c();
                    bblVar2.b(DisplayType.DISPLAY_TYPE_MAIN);
                    if (bblVar2.p.containsKey(DisplayType.DISPLAY_TYPE_CLUSTER)) {
                        bblVar2.b(DisplayType.DISPLAY_TYPE_CLUSTER);
                    }
                    bblVar2.f.bindService(new Intent(bblVar2.f, (Class<?>) MediaBrowserService.class).setAction("mediaBrowserServiceIntentAction"), bblVar2.D, 1);
                    bblVar2.F.c(zl.ON_CREATE);
                    GalReceiver galReceiver = bblVar2.j;
                    if (galReceiver.e) {
                        throw new RuntimeException("can't be started after teardown");
                    }
                    for (int i4 = 0; i4 < galReceiver.c.size(); i4++) {
                        int keyAt = galReceiver.c.keyAt(i4);
                        if (!galReceiver.nativeRegister(((GalServiceEndpoint) galReceiver.c.get(keyAt)).a())) {
                            StringBuilder sb2 = new StringBuilder(39);
                            sb2.append("Service ");
                            sb2.append(keyAt);
                            sb2.append(" failed to register.");
                            Log.e("AHU.GAL_RECEIVER", sb2.toString());
                        }
                    }
                    galReceiver.c.size();
                    galReceiver.nativeSetTransportConfigurationListener(clzVar);
                    galReceiver.nativeStart();
                    GalTransportSessionController clvVar = galReceiver.d;
                    clvVar.e = new GalReaderThread(clvVar, clzVar);
                    clvVar.f = new GalWriterThread(clvVar, clzVar);
                    clvVar.e.start();
                    clvVar.f.start();
                    return null;
                }
            }, new HandlerExecutor(bblVar.i, 1));
            if (AaReceiverFlagsDkoFacade.c()) {
            }
            ProjectionIntentHelper.p(o, new ProjectionHandlerFutureCallback(this), czj.a);
            if (ProjectionTransportType.WIRELESS.equals(awpVar)) {
                return;
            } else {
                return;
            }
        }
        ListenableFuture o2 = TransformFuture.o(i3, new GuavaFunction() { // from class: bbb
            @Override // defpackage.GuavaFunction
            public final Object a(Object obj) {
                ProjectionSession bblVar2 = ProjectionSession.this;
                GalTransportConnection clzVar = (GalTransportConnection) obj;
                for (Map.Entry entry : ((ImmutableMapBase) bblVar2.l).entrySet()) {
                    if (entry.getValue() != baz.a) {
                        bblVar2.j.d(((GalServiceType) entry.getKey()).a(), (GalServiceEndpoint) entry.getValue());
                    }
                }
                bblVar2.j.d(GalServiceType.MAIN_DISPLAY.a(), (GalServiceEndpoint) bblVar2.p.get(DisplayType.DISPLAY_TYPE_MAIN));
                bblVar2.j.d(GalServiceType.MAIN_INPUT.a(), bblVar2.v.a(DisplayType.DISPLAY_TYPE_MAIN));
                if (bblVar2.p.containsKey(DisplayType.DISPLAY_TYPE_CLUSTER)) {
                    bblVar2.j.d(GalServiceType.CLUSTER_DISPLAY.a(), (GalServiceEndpoint) bblVar2.p.get(DisplayType.DISPLAY_TYPE_CLUSTER));
                    bblVar2.j.d(GalServiceType.CLUSTER_INPUT.a(), bblVar2.v.a(DisplayType.DISPLAY_TYPE_CLUSTER));
                }
                bblVar2.u.a(bblVar2.j);
                bblVar2.t.a();
                bblVar2.v.c();
                bblVar2.b(DisplayType.DISPLAY_TYPE_MAIN);
                if (bblVar2.p.containsKey(DisplayType.DISPLAY_TYPE_CLUSTER)) {
                    bblVar2.b(DisplayType.DISPLAY_TYPE_CLUSTER);
                }
                bblVar2.f.bindService(new Intent(bblVar2.f, (Class<?>) MediaBrowserService.class).setAction("mediaBrowserServiceIntentAction"), bblVar2.D, 1);
                bblVar2.F.c(zl.ON_CREATE);
                GalReceiver galReceiver = bblVar2.j;
                if (galReceiver.e) {
                    throw new RuntimeException("can't be started after teardown");
                }
                for (int i4 = 0; i4 < galReceiver.c.size(); i4++) {
                    int keyAt = galReceiver.c.keyAt(i4);
                    if (!galReceiver.nativeRegister(((GalServiceEndpoint) galReceiver.c.get(keyAt)).a())) {
                        StringBuilder sb2 = new StringBuilder(39);
                        sb2.append("Service ");
                        sb2.append(keyAt);
                        sb2.append(" failed to register.");
                        Log.e("AHU.GAL_RECEIVER", sb2.toString());
                    }
                }
                galReceiver.c.size();
                galReceiver.nativeSetTransportConfigurationListener(clzVar);
                galReceiver.nativeStart();
                GalTransportSessionController clvVar = galReceiver.d;
                clvVar.e = new GalReaderThread(clvVar, clzVar);
                clvVar.f = new GalWriterThread(clvVar, clzVar);
                clvVar.e.start();
                clvVar.f.start();
                return null;
            }
        }, new HandlerExecutor(bblVar.i, 1));
        if (AaReceiverFlagsDkoFacade.c()) {
            ProjectionIntentHelper.p(o2, new ProjectionSessionFutureCallback(bblVar), czj.a);
        }
        ProjectionIntentHelper.p(o2, new ProjectionHandlerFutureCallback(this), czj.a);
        if (ProjectionTransportType.WIRELESS.equals(awpVar) || o2.isDone() || z) {
            return;
        }
        WaitingForConnectionActivity.b(context, o2);
    }

    public final void e(DisplayType ckbVar, KeyEvent keyEvent) {
        ProjectionSession bblVar = this.i.h;
        if (bblVar != null) {
            bblVar.c(ckbVar, keyEvent);
            this.b.c++;
        }
    }

    public final void f(DisplayType ckbVar, VideoSinkCallback bawVar) {
        if (AaReceiverFlags45359988Facade.c()) {
            this.g.remove(ckbVar, bawVar);
        } else {
            this.g.remove(ckbVar);
        }
    }

    public final void g(DisplayType ckbVar, int i) {
        ProjectionSession bblVar = this.i.h;
        if (bblVar != null) {
            bblVar.d(ckbVar, i);
            this.b.d = i;
        }
    }
}
