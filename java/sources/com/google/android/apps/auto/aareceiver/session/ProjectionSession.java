package com.google.android.apps.auto.aareceiver.session;

import android.car.Car;
import android.car.CarProjectionManager;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Looper;
import android.util.Size;
import android.view.Display;
import android.view.KeyEvent;
import android.view.WindowManager;
import com.google.android.apps.auto.aareceiver.media.MediaBrowserService;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.InputSource;
import com.google.android.projection.protocol.VideoSink;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProjectionSession implements LifecycleOwner {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/session/ProjectionSession");
    public final SettableFuture A;
    public boolean B;
    public boolean C;
    public final ServiceConnection D;
    final ProjectionSessionTransportCallback E;
    public final LifecycleRegistry F;
    public int G;
    public int H;
    final ProjectionSessionTransportCallback I;
    private final SessionComponentInterface J;
    private final TransportConfigCallback K;
    private final ProjectionSessionTransportCallback L;
    public MediaBrowserService b;
    public final TransportFactoryRegistry c;
    public final DeviceTracker d;
    public final DeviceRegistryBase e;
    public final Context f;
    public final ProjectionTransportType g;
    public ProjectionDevice h;
    public final Handler i;
    public final GalReceiver j;
    public final MediaPlaybackStateHolder k;
    public final Map l;
    public final Set m;
    public final Set n;
    public final Set o;
    public final ImmutableMapBase p;
    public final ImmutableMapBase q;
    public final Display r;
    public boolean s;
    public final VoiceSessionAppFocusManager t;
    public final NavigationAppFocusManager u;
    public final InputManager v;
    public final TelemetryTracker w;
    public final AudioFocusHandlerInterface x;
    public final AtomicBoolean y;
    public ProjectionCloseReason z;

    public ProjectionSession(ProjectionTransportType awpVar, ProjectionDevice awoVar, int i, int i2, ImmutableMapBase cqkVar, Context context, Car car, DeviceTracker bahVar, DeviceRegistryBase bbyVar, ProjectionSessionScope atiVar, CredentialAssetLoader awxVar, CarInfoProvider awtVar, NavigationAppFocusManager axcVar, VoiceSessionAppFocusManager axfVar, ClusterDisplayAvailability bfeVar, ClusterDisplayProvider bfcVar, boolean z, TelemetryTracker bdeVar) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.i = handler;
        this.F = new LifecycleRegistry(this);
        this.s = false;
        this.y = new AtomicBoolean(false);
        this.A = SettableFuture.e();
        this.B = false;
        this.C = false;
        TransportConfigCallback clpVar = new TransportConfigCallback() { // from class: bba
            @Override // defpackage.TransportConfigCallback
            public final void h(int i3) {
                UnmodifiableIterator listIterator = ((EmptyImmutableSet) ProjectionSession.this.m).listIterator();
                while (listIterator.hasNext()) {
                    ((TransportConfigCallback) listIterator.next()).h(i3);
                }
            }
        };
        this.K = clpVar;
        ProjectionSessionTransportCallback bbhVar = new ProjectionSessionTransportCallback(this, null);
        this.L = bbhVar;
        ProjectionSessionTransportCallback bbhVar2 = new ProjectionSessionTransportCallback(this);
        this.I = bbhVar2;
        ProjectionSessionTransportCallback bbhVar3 = new ProjectionSessionTransportCallback(this);
        this.E = bbhVar3;
        this.D = new MediaBrowserServiceConnectionImpl(this);
        this.g = awpVar;
        this.h = awoVar;
        this.f = context;
        this.d = bahVar;
        this.e = bbyVar;
        this.t = axfVar;
        this.u = axcVar;
        this.w = bdeVar;
        GalReceiver.CarInfo a2 = awtVar.a();
        String str = (String) awxVar.a.get("root_certificate");
        str.getClass();
        String a3 = awxVar.a(str);
        String str2 = (String) awxVar.a.get("certificate");
        str2.getClass();
        String b = awxVar.b("c1", str2);
        String str3 = (String) awxVar.a.get("key");
        str3.getClass();
        GalReceiver galReceiver = new GalReceiver(bbhVar2, clpVar, bbhVar, bbhVar3, handler, a2, a3, b, awxVar.b("p1", str3), null, null);
        this.j = galReceiver;
        atiVar.b = this;
        galReceiver.getClass();
        atiVar.e = galReceiver;
        atiVar.d = awoVar;
        atiVar.c = awpVar;
        atiVar.f = new Size(i, i2);
        CommonObjectsAndPreconditionsUtil.l(atiVar.b, ProjectionSession.class);
        CommonObjectsAndPreconditionsUtil.l(atiVar.c, ProjectionTransportType.class);
        CommonObjectsAndPreconditionsUtil.l(atiVar.d, ProjectionDevice.class);
        CommonObjectsAndPreconditionsUtil.l(atiVar.e, GalReceiver.class);
        CommonObjectsAndPreconditionsUtil.l(atiVar.f, Size.class);
        ProjectionSessionComponentImpl aswVar = new ProjectionSessionComponentImpl(atiVar.a, atiVar.b, atiVar.d, atiVar.e);
        this.J = aswVar;
        ProjectionSessionComponent bbqVar = (ProjectionSessionComponent) CommonObjectsAndPreconditionsUtil.s(aswVar, ProjectionSessionComponent.class);
        this.l = bbqVar.d();
        this.k = bbqVar.b();
        this.m = bbqVar.e();
        this.n = bbqVar.f();
        this.c = bbqVar.c();
        this.o = bbqVar.g();
        this.v = new InputManager((CarProjectionManager) car.getCarManager("projection"), bfeVar, i, i2, z);
        this.x = bbqVar.a();
        List b2 = ScaledVideoConfiguration.b(i, i2, ((WindowManager) context.getSystemService(WindowManager.class)).getDefaultDisplay());
        VideoSink a4 = VideoSinkFactoryObject.a((StartupTraceTracker) cqkVar.get(DisplayType.DISPLAY_TYPE_MAIN), ((ScaledVideoConfiguration) b2.get(0)).a.h);
        if (!bfeVar.a()) {
            this.p = ImmutableMapBase.g(DisplayType.DISPLAY_TYPE_MAIN, a4);
            this.q = ImmutableMapBase.g(DisplayType.DISPLAY_TYPE_MAIN, b2);
            this.r = null;
        } else {
            Display display = (Display) bfcVar.a().get();
            this.r = display;
            List b3 = ScaledVideoConfiguration.b(display.getWidth(), display.getHeight(), display);
            this.p = ImmutableMapBase.h(DisplayType.DISPLAY_TYPE_MAIN, a4, DisplayType.DISPLAY_TYPE_CLUSTER, VideoSinkFactoryObject.a((StartupTraceTracker) cqkVar.get(DisplayType.DISPLAY_TYPE_CLUSTER), ((ScaledVideoConfiguration) b3.get(0)).a.h));
            this.q = ImmutableMapBase.h(DisplayType.DISPLAY_TYPE_MAIN, b2, DisplayType.DISPLAY_TYPE_CLUSTER, b3);
        }
    }

    @Override // defpackage.LifecycleOwner
    public final LifecycleRegistry C() {
        return this.F;
    }

    public final void a() {
        this.B = true;
    }

    public final void b(DisplayType ckbVar) {
        int i;
        for (ScaledVideoConfiguration bhcVar : (List) this.q.get(ckbVar)) {
            VideoConfigurationMessage ckzVar = bhcVar.a;
            VideoSink videoSink = (VideoSink) this.p.get(ckbVar);
            videoSink.a.add(ckzVar);
            VideoResolution b = VideoResolution.b(ckzVar.b);
            if (ProtoLiteMessageBase == null) {
                b = VideoResolution.VIDEO_800x480;
            }
            int i2 = b.j;
            int e = NetworkMetricServiceBase.e(ckzVar.c);
            int i3 = (ProtoFlagValueMessage == 0 || e == 1) ? 60 : 30;
            int i4 = ckzVar.d;
            int i5 = ckzVar.e;
            int i6 = ckzVar.f;
            int i7 = ckzVar.j;
            int i8 = ckzVar.g;
            int i9 = ckzVar.a;
            int i10 = (i9 & 128) != 0 ? ckzVar.i : 10000;
            if ((i9 & 512) != 0) {
                int c = FrameDurationCalculator.c(ckzVar.k);
                i = c == 0 ? 1 : c;
            } else {
                i = 3;
            }
            VideoSinkConfigMessage ckxVar = ckzVar.l;
            if (ckxVar == null) {
                ckxVar = ckx.f;
            }
            videoSink.nativeAddSupportedConfiguration(i2, i3, i4, i5, i6, i7, i8, i10, i, ckxVar.h());
            ckbVar.name();
            int i11 = ckzVar.b;
            int i12 = ckzVar.f;
            int i13 = ckzVar.c;
            int i14 = ckzVar.d;
            int i15 = ckzVar.e;
            double d = bhcVar.b;
        }
        ((VideoSink) this.p.get(ckbVar)).nativeSetCodecType(3);
        ((VideoSink) this.p.get(ckbVar)).nativeSetDisplayIdAndType(ckbVar == DisplayType.DISPLAY_TYPE_MAIN ? 0 : 1, ckbVar.d);
    }

    public final void c(DisplayType ckbVar, KeyEvent keyEvent) {
        InputManager axlVar = this.v;
        synchronized (axlVar) {
            if (!axlVar.f) {
                ((ParameterizedLoggerApi) InputManager.a.c().h("com/google/android/apps/auto/aareceiver/input/InputManager", "onKeyEvent", 293, "InputManager.java")).n("onKeyEvent called on uninitialized object");
                return;
            }
            if (AaReceiverFlags45353198Facade.a.a().a() && axlVar.e && (keyEvent.getKeyCode() == 126 || keyEvent.getKeyCode() == 127 || keyEvent.getKeyCode() == 86 || keyEvent.getKeyCode() == 87 || keyEvent.getKeyCode() == 88)) {
                return;
            }
            ((InputSource) axlVar.d.get(ckbVar)).d(keyEvent);
        }
    }

    public final void d(DisplayType ckbVar, int i) {
        VideoSink videoSink = (VideoSink) this.p.get(ckbVar);
        videoSink.c.e(NavInstructionTypeEnum);
        videoSink.nativeSetVideoFocus(i, true);
    }

    public final boolean e() {
        return this.d.h == this && this.d.x();
    }

    public final ListenableFuture f() {
        if (this.H == 0) {
            this.H = 1;
            this.j.nativeSendByeByeRequest(1);
        }
        return this.A;
    }

    public final String toString() {
        String simpleName = getClass().getSimpleName();
        String hexString = Integer.toHexString(hashCode());
        String valueOf = String.valueOf(this.h);
        String valueOf2 = String.valueOf(this.g);
        ProjectionCloseReason clyVar = this.z;
        String concat = clyVar != null ? " stopReason: ".concat(clyVar.toString()) : "";
        int length = String.valueOf(simpleName).length();
        StringBuilder sb = new StringBuilder(length + 20 + String.valueOf(hexString).length() + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length() + concat.length());
        StaggeredGridLayoutParams.append(simpleName);
        StaggeredGridLayoutParams.append("@");
        StaggeredGridLayoutParams.append(hexString);
        StaggeredGridLayoutParams.append(" { device: ");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(" mode: ");
        StaggeredGridLayoutParams.append(valueOf2);
        StaggeredGridLayoutParams.append(concat);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
