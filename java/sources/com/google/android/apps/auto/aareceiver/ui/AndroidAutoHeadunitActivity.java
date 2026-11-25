package com.google.android.apps.auto.aareceiver.ui;

import android.app.ActivityManager;
import android.app.PendingIntent;
import android.car.CarProjectionManager;
import android.car.projection.ProjectionOptions;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentSender;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.os.Bundle;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;
import com.google.android.embedded.projection.R;
import com.google.android.apps.auto.aareceiver.bluetooth.WirelessDiscoveryController;
import defpackage.ProjectionDevice;
import defpackage.ProjectionTransportType;
import defpackage.DisplayDimensions;
import defpackage.OverlayableResourcesProvider;
import defpackage.ProjectionHandlerIntConsumer;
import defpackage.SessionStatsCounters;
import com.google.android.apps.auto.aareceiver.service.AndroidAutoHeadunitProjectionHandler;
import defpackage.ProjectionDeviceNotificationInfo;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import defpackage.VideoSinkCallback;
import com.google.android.apps.auto.aareceiver.session.ProjectionSession;
import defpackage.OemSettings;
import com.google.android.apps.auto.aareceiver.telemetry.TelemetryTracker;
import defpackage.LatencyEventType;
import com.google.android.apps.auto.aareceiver.transport.usb.UsbHostPermissionChecker;
import com.google.android.apps.auto.aareceiver.transport.usb.UsbUtils;
import defpackage.VideoSurfaceTouchListener;
import defpackage.VideoSurfaceLayoutListener;
import defpackage.HeadunitActivitySessionListener;
import defpackage.HeadunitActivityApCallback;
import defpackage.HeadunitActivityFutureCallback;
import defpackage.WeakViewAnimator;
import defpackage.HeadunitActivityCallbackHolder;
import defpackage.ErrorMessageActivity;
import defpackage.SystemUiHideHelper;
import com.google.android.apps.auto.aareceiver.video.ProjectionRenderer;
import com.google.android.apps.auto.aareceiver.video.latencychecker.VideoLatencyChecker;
import defpackage.PrimesMetricName;
import com.google.android.libraries.performance.primes.Primes;
import defpackage.PendingIntentCompat;
import defpackage.DisplayType;
import defpackage.ProjectionStartReason;
import defpackage.VideoFrameBuffer;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;
import defpackage.DirectExecutorEnum_czj;
import defpackage.ListenableFuture;
import defpackage.SettableFuture;
import defpackage.AppContextModule;
import defpackage.AaReceiverFlagsDjqFacade;
import defpackage.AaReceiverFlags45359453Facade;
import defpackage.AaReceiverFlags45353773Facade;
import defpackage.AaReceiverFlagsDkoFacade;
import defpackage.ProjectionIntentHelper;
import defpackage.AlertDialogAndInsetsApiHelper;
import defpackage.ActivityResultParcel;
import defpackage.ActivityResultRegistryCallback;
import defpackage.ActivityResultContractBase;
import defpackage.StartActivityForResultContract;
import defpackage.ActivityResultRegistryHolder;
import defpackage.LifecycleSavedStateHandle;
import defpackage.ActivityResultRegistry;
import defpackage.ActivityResultContract;
import defpackage.RequestMultiplePermissionsContract;
import defpackage.LifecycleEvent;
import defpackage.LifecycleState;
import defpackage.LifecycleRegistry;
import defpackage.DefaultLifecycleObserverInterface;
import defpackage.LifecycleOwner;
import j$.util.Optional;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AndroidAutoHeadunitActivity extends ErrorMessageActivity implements VideoSinkCallback {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity");
    private SystemUiHideHelper A;
    private ActivityResultContractBase B;
    public View b;
    ProjectionOptions e;
    public CarProjectionManager l;
    public DeviceTracker m;
    public WirelessDiscoveryController n;
    public DisplayDimensions o;
    public OemSettings p;
    public Optional q;
    public TelemetryTracker r;
    public OverlayableResourcesProvider s;
    public UsbHostPermissionChecker t;
    public AppContextModule u;
    public boolean c = false;
    final AtomicBoolean d = new AtomicBoolean(false);
    private final View.OnTouchListener C = new VideoSurfaceTouchListener(this);

    private final void A() {
        int identifier;
        this.r.a(LatencyEventType.AHU_START_UNTIL_HANDLER_READY);
        this.r.a(LatencyEventType.AHU_START_UNTIL_RENDERER_READY);
        this.r.a(LatencyEventType.AHU_START_UNTIL_FIRST_VIDEO_FRAME);
        getWindow().addFlags(128);
        setContentView(R.layout.android_auto_headunit_activity);
        this.b = findViewById(R.id.frame);
        this.x = findViewById(R.id.clipper);
        this.x.setOnTouchListener(this.C);
        this.y = (SurfaceView) findViewById(R.id.surface);
        v();
        if (AlertDialogAndInsetsApiHelper.f(this.s.a()) && (identifier = getResources().getIdentifier("status_bar_height", "dimen", "android")) != 0) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(identifier);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.b.getLayoutParams();
            layoutParams.topMargin = dimensionPixelSize;
            this.b.setLayoutParams(layoutParams);
        }
        this.y.getViewTreeObserver().addOnGlobalLayoutListener(new VideoSurfaceLayoutListener(this));
        if (AaReceiverFlagsDjqFacade.c()) {
            View findViewById = findViewById(R.id.btn_cancel);
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: bei
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ProjectionSession bblVar;
                    ProjectionDevice awoVar;
                    AndroidAutoHeadunitActivity androidAutoHeadunitActivity = AndroidAutoHeadunitActivity.this;
                    if (!dkd.c() && (bblVar = androidAutoHeadunitActivity.m.h) != null && (awoVar = bblVar.h) != null && androidAutoHeadunitActivity.m.v(awoVar, ProjectionTransportType.USB)) {
                        androidAutoHeadunitActivity.m.p(bblVar.h);
                    }
                    androidAutoHeadunitActivity.finish();
                }
            });
        }
        int a2 = this.s.a();
        if (AlertDialogAndInsetsApiHelper.e(a2) || AlertDialogAndInsetsApiHelper.f(a2)) {
            this.A = new SystemUiHideHelper(this.b, AlertDialogAndInsetsApiHelper.e(a2));
        }
        this.n.n = new WeakViewAnimator(this);
        w();
        this.v.c(DisplayType.DISPLAY_TYPE_MAIN, this);
        r();
        if (AaReceiverFlags45359453Facade.c()) {
            final RequestMultiplePermissionsContract ucVar = new RequestMultiplePermissionsContract();
            final ActivityResultRegistryCallback tsVar = new ActivityResultRegistryCallback() { // from class: bej
                @Override // defpackage.ActivityResultRegistryCallback
                public final void a(Object obj) {
                    AndroidAutoHeadunitActivity.this.p();
                }
            };
            final ActivityResultRegistry tyVar = this.j;
            final String str = "activity_rq#" + this.i.getAndIncrement();
            LifecycleRegistry znVar = this.k;
            if (znVar.a.a(zm.STARTED)) {
                throw new IllegalStateException("LifecycleOwner " + this + " is attempting to register while current state is " + znVar.a + ". LifecycleOwners must call register before they are STARTED.");
            }
            tyVar.c(str);
            LifecycleSavedStateHandle txVar = (LifecycleSavedStateHandle) tyVar.d.get(str);
            if (txVar == null) {
                txVar = new LifecycleSavedStateHandle(znVar);
            }
            DefaultLifecycleObserverInterface zoVar = new DefaultLifecycleObserverInterface() { // from class: androidx.activity.result.ActivityResultRegistry$1
                @Override // defpackage.DefaultLifecycleObserverInterface
                public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
                    if (!zl.ON_START.equals(zlVar)) {
                        if (zl.ON_STOP.equals(zlVar)) {
                            ty.this.f.remove(str);
                            return;
                        } else {
                            if (zl.ON_DESTROY.equals(zlVar)) {
                                ty.this.d(str);
                                return;
                            }
                            return;
                        }
                    }
                    ty.this.f.put(str, new ActivityResultRegistryHolder(tsVar, ucVar));
                    if (ty.this.g.containsKey(str)) {
                        Object obj = ty.this.g.get(str);
                        ty.this.g.remove(str);
                        tsVar.a(obj);
                    }
                    ActivityResultParcel trVar = (ActivityResultParcel) ty.this.h.getParcelable(str);
                    if (trVar != null) {
                        ty.this.h.remove(str);
                        tsVar.a(RequestMultiplePermissionsContract.b(trVar.a, trVar.b));
                    }
                }
            };
            txVar.a.b(zoVar);
            txVar.b.add(zoVar);
            tyVar.d.put(str, txVar);
            this.B = new StartActivityForResultContract(tyVar, str, ucVar);
        }
        B();
    }

    private final void B() {
        if (!AaReceiverFlags45359453Facade.c()) {
            if (this.u.d()) {
                return;
            }
            requestPermissions((String[]) this.u.c().toArray(new String[0]), 1);
            return;
        }
        if (this.u.d()) {
            return;
        }
        AppContextModule dhqVar = this.u;
        ActivityResultContractBase ttVar = this.B;
        String[] strArr = (String[]) dhqVar.c().toArray(new String[0]);
        StartActivityForResultContract tuVar = (StartActivityForResultContract) ttVar;
        Integer num = (Integer) tuVar.c.c.get(tuVar.a);
        if (num == null) {
            throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + tuVar.b + " and input " + strArr + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }
        tuVar.c.e.add(tuVar.a);
        try {
            ActivityResultRegistry tyVar = ((StartActivityForResultContract) ttVar).c;
            int intValue = num.intValue();
            ActivityResultContract ubVar = ((StartActivityForResultContract) ttVar).b;
            tyVar.f(intValue, strArr);
        } catch (Exception e) {
            tuVar.c.e.remove(tuVar.a);
            throw e;
        }
    }

    private final boolean E(Intent intent) {
        Pair pair;
        String action = intent.getAction();
        final ProjectionStartReason claVar = intent.hasExtra("com.google.android.embedded.projection.START_REQUEST_REASON") ? (ProjectionStartReason) intent.getSerializableExtra("com.google.android.embedded.projection.START_REQUEST_REASON") : ProjectionStartReason.USER_REQUEST;
        if ("android.intent.action.MAIN".equals(action)) {
            if (this.m.h != null) {
                return true;
            }
            Iterator it = this.m.f.d().iterator();
            while (true) {
                if (!it.hasNext()) {
                    pair = null;
                    break;
                }
                ProjectionDeviceNotificationInfo bafVar = (ProjectionDeviceNotificationInfo) it.next();
                if (bafVar.c()) {
                    pair = Pair.create(bafVar.g, bafVar.c ? ProjectionTransportType.WIRELESS : ProjectionTransportType.USB);
                }
            }
            if (pair == null) {
                return false;
            }
            t((ProjectionDevice) pair.first, (ProjectionTransportType) pair.second, claVar);
            return true;
        }
        if (!"com.google.android.embedded.projection.PROJECT".equals(action)) {
            if ("com.google.android.embedded.projection.GAIN_FOCUS".equals(action)) {
                return true;
            }
            ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "processIntent", 639, "AndroidAutoHeadunitActivity.java")).p("Unknown action %s. Finishing activity.", action);
            return false;
        }
        ProjectionSession bblVar = this.m.h;
        ProjectionDevice awoVar = (ProjectionDevice) intent.getParcelableExtra("com.google.android.embedded.projection.DEVICE");
        if (awoVar == null) {
            if (bblVar == null) {
                ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "processIntent", 608, "AndroidAutoHeadunitActivity.java")).n("Missing device for projection");
                return false;
            }
            awoVar = bblVar.h;
        }
        final ProjectionDevice b = this.m.b(awoVar);
        final ProjectionTransportType z = z(intent);
        if (bblVar != null) {
            if (bblVar.z == null && b.equals(bblVar.h)) {
                return true;
            }
            bblVar.f().aW(new Runnable() { // from class: bem
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidAutoHeadunitActivity.this.t(b, z, claVar);
                }
            }, czj.a);
        } else if (this.c) {
            t(b, z, claVar);
        }
        return true;
    }

    private final void F(int i) {
        this.r.b(LatencyEventType.AHU_START_UNTIL_RENDERER_READY, i);
        this.r.b(LatencyEventType.AHU_START_UNTIL_HANDLER_READY, i);
        this.r.b(LatencyEventType.AHU_START_UNTIL_FIRST_VIDEO_FRAME, i);
    }

    private static ProjectionTransportType z(Intent intent) {
        return intent.getBooleanExtra("com.google.android.embedded.projection.USE_USB", false) ? ProjectionTransportType.USB : ProjectionTransportType.WIRELESS;
    }

    @Override // defpackage.VideoSinkCallback
    public final ListenableFuture a() {
        final SettableFuture e = SettableFuture.e();
        runOnUiThread(new Runnable() { // from class: ben
            @Override // java.lang.Runnable
            public final void run() {
                AndroidAutoHeadunitActivity androidAutoHeadunitActivity = AndroidAutoHeadunitActivity.this;
                androidAutoHeadunitActivity.w.f(e);
            }
        });
        if (AaReceiverFlagsDkoFacade.c()) {
            this.d.set(false);
            ProjectionIntentHelper.p(e, new HeadunitActivityFutureCallback(this), czj.a);
        }
        return e;
    }

    @Override // defpackage.VideoSinkCallback
    public final void b(final int i, final int i2, final int i3, final int i4) {
        runOnUiThread(new Runnable() { // from class: bel
            @Override // java.lang.Runnable
            public final void run() {
                AndroidAutoHeadunitActivity androidAutoHeadunitActivity = AndroidAutoHeadunitActivity.this;
                int i5 = i;
                int i6 = i2;
                int i7 = i3;
                int i8 = i4;
                double a2 = androidAutoHeadunitActivity.v.a(DisplayType.DISPLAY_TYPE_MAIN, i5, i6);
                double d = i7;
                Double.isNaN(d);
                long round = Math.round(d * a2);
                double d2 = i8;
                Double.isNaN(d2);
                ((FrameLayout.LayoutParams) androidAutoHeadunitActivity.y.getLayoutParams()).setMargins(-(((int) round) / 2), -((((int) Math.round(d2 * a2)) + 1) / 2), 0, 0);
                androidAutoHeadunitActivity.y.requestLayout();
            }
        });
        this.w.g(i, i2, i3, i4);
        this.q.ifPresent(azu.c);
    }

    @Override // defpackage.VideoSinkCallback
    public final void c(VideoFrameBuffer cmaVar) {
        if (this.d.compareAndSet(false, true)) {
            this.r.b(LatencyEventType.AHU_START_UNTIL_FIRST_VIDEO_FRAME, 3);
            if (AaReceiverFlags45353773Facade.c()) {
                Primes a2 = Primes.a();
                a2.a.d(new PrimesMetricName("FirstVideoFrame"));
            }
        }
        this.w.a(cmaVar);
    }

    @Override // defpackage.VideoSinkCallback
    public final void d(byte[] bArr) {
        this.w.b(bArr);
    }

    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf(getClass().getSimpleName());
        printWriter.println(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        boolean z = this.c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 18);
        sb.append(str);
        sb.append("layoutReady: ");
        sb.append(z);
        printWriter.println(sb.toString());
        boolean z2 = this.z;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 17);
        sb2.append(str);
        sb2.append("background: ");
        sb2.append(z2);
        printWriter.println(sb2.toString());
        String valueOf3 = String.valueOf(this.e);
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 19 + String.valueOf(valueOf3).length());
        sb3.append(str);
        sb3.append("projectionOptions: ");
        sb3.append(valueOf3);
        printWriter.println(sb3.toString());
        ProjectionRenderer bgzVar = this.w;
        printWriter.println(String.valueOf(str).concat("ProjectionRenderer {"));
        String concat = String.valueOf(str).concat("  ");
        String valueOf4 = String.valueOf(bgzVar.k);
        StringBuilder sb4 = new StringBuilder(String.valueOf(concat).length() + 11 + String.valueOf(valueOf4).length());
        sb4.append(concat);
        sb4.append("videoSize: ");
        sb4.append(valueOf4);
        printWriter.println(sb4.toString());
        String valueOf5 = String.valueOf(bgzVar.l);
        StringBuilder sb5 = new StringBuilder(String.valueOf(concat).length() + 18 + String.valueOf(valueOf5).length());
        sb5.append(concat);
        sb5.append("videoCroppedSize: ");
        sb5.append(valueOf5);
        printWriter.println(sb5.toString());
        double d = bgzVar.m;
        StringBuilder sb6 = new StringBuilder(String.valueOf(concat).length() + 36);
        sb6.append(concat);
        sb6.append("videoScale: ");
        sb6.append(d);
        printWriter.println(sb6.toString());
        int i = bgzVar.j;
        StringBuilder sb7 = new StringBuilder(String.valueOf(concat).length() + 18);
        sb7.append(concat);
        sb7.append("state: ");
        sb7.append(i);
        printWriter.println(sb7.toString());
        String valueOf6 = String.valueOf(bgzVar.o);
        StringBuilder sb8 = new StringBuilder(String.valueOf(concat).length() + 17 + String.valueOf(valueOf6).length());
        sb8.append(concat);
        sb8.append("videoFocusReady: ");
        sb8.append(valueOf6);
        printWriter.println(sb8.toString());
        String valueOf7 = String.valueOf(bgzVar.i);
        StringBuilder sb9 = new StringBuilder(String.valueOf(concat).length() + 19 + String.valueOf(valueOf7).length());
        sb9.append(concat);
        sb9.append("videoFrameHandler: ");
        sb9.append(valueOf7);
        printWriter.println(sb9.toString());
        printWriter.println(String.valueOf(str).concat("}"));
        AndroidAutoHeadunitProjectionHandler azyVar = this.v;
        String simpleName = azyVar.getClass().getSimpleName();
        StringBuilder sb10 = new StringBuilder(String.valueOf(simpleName).length() + 8);
        sb10.append("*** ");
        sb10.append(simpleName);
        sb10.append(" ***");
        printWriter.println(sb10.toString());
        String valueOf8 = String.valueOf(azyVar.e);
        String.valueOf(valueOf8).length();
        printWriter.println("screenSize: ".concat(String.valueOf(valueOf8)));
        boolean z3 = azyVar.f;
        StringBuilder sb11 = new StringBuilder(16);
        sb11.append("destroyed: ");
        sb11.append(z3);
        printWriter.println(sb11.toString());
        SessionStatsCounters azwVar = azyVar.b;
        long j = azwVar.a;
        StringBuilder sb12 = new StringBuilder(36);
        sb12.append("videoFrameAcks: ");
        sb12.append(j);
        printWriter.println(sb12.toString());
        long j2 = azwVar.b;
        StringBuilder sb13 = new StringBuilder(33);
        sb13.append("touchEvents: ");
        sb13.append(j2);
        printWriter.println(sb13.toString());
        long j3 = azwVar.c;
        StringBuilder sb14 = new StringBuilder(31);
        sb14.append("keyEvents: ");
        sb14.append(j3);
        printWriter.println(sb14.toString());
        int i2 = azwVar.d;
        StringBuilder sb15 = new StringBuilder(27);
        sb15.append("videoFocusMode: ");
        sb15.append(i2);
        printWriter.println(sb15.toString());
        long j4 = azwVar.e;
        StringBuilder sb16 = new StringBuilder(31);
        sb16.append("sslErrors: ");
        sb16.append(j4);
        printWriter.println(sb16.toString());
        long j5 = azwVar.f;
        StringBuilder sb17 = new StringBuilder(39);
        sb17.append("sessionsDestroyed: ");
        sb17.append(j5);
        printWriter.println(sb17.toString());
        long j6 = azwVar.g;
        StringBuilder sb18 = new StringBuilder(37);
        sb18.append("sessionsCreated: ");
        sb18.append(j6);
        printWriter.println(sb18.toString());
        super.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // defpackage.VideoSinkCallback
    public final void e() {
        moveTaskToBack(true);
    }

    @Override // defpackage.VideoSinkCallback
    public final void f(final boolean z) {
        F(4);
        runOnUiThread(new Runnable() { // from class: beo
            @Override // java.lang.Runnable
            public final void run() {
                AndroidAutoHeadunitActivity androidAutoHeadunitActivity = AndroidAutoHeadunitActivity.this;
                boolean z2 = z;
                if (dkj.c() && !z2) {
                    androidAutoHeadunitActivity.x();
                    return;
                }
                if (z2) {
                    return;
                }
                ProjectionRenderer bgzVar = androidAutoHeadunitActivity.w;
                if (bgzVar != null) {
                    bgzVar.h();
                }
                if (androidAutoHeadunitActivity.isFinishing()) {
                    return;
                }
                androidAutoHeadunitActivity.finish();
            }
        });
    }

    @Override // defpackage.VideoSinkCallback
    public final void g(Throwable th) {
        ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(th)).h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "onInitFailed", 832, "AndroidAutoHeadunitActivity.java")).n("ProjectionHandler failed to initialize");
        F(5);
        WaitingForConnectionActivity.a(this);
        runOnUiThread(new Runnable() { // from class: bek
            @Override // java.lang.Runnable
            public final void run() {
                AndroidAutoHeadunitActivity.this.finish();
            }
        });
    }

    @Override // defpackage.VideoSinkCallback
    public final boolean h() {
        return !this.z;
    }

    @Override // defpackage.AareceiverActivityBase
    protected final SurfaceView l() {
        return this.y;
    }

    @Override // defpackage.AareceiverActivityBase
    protected final View m() {
        return this.x;
    }

    @Override // defpackage.AareceiverActivityBase
    protected final VideoLatencyChecker n() {
        return (VideoLatencyChecker) this.q.orElse(null);
    }

    @Override // defpackage.AareceiverActivityBase
    public final DisplayType o() {
        return DisplayType.DISPLAY_TYPE_MAIN;
    }

    @Override // defpackage.ComponentActivity, android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 57357474) {
            return;
        }
        if (i2 != -1) {
            finish();
        } else {
            A();
        }
    }

    @Override // defpackage.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        this.v.e(DisplayType.DISPLAY_TYPE_MAIN, new KeyEvent(4, 0));
        this.v.e(DisplayType.DISPLAY_TYPE_MAIN, new KeyEvent(4, 1));
    }

    @Override // defpackage.ComponentActivity, defpackage.ComponentActivityBase, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        z(intent);
        intent.getParcelableExtra("com.google.android.embedded.projection.DEVICE");
        Bundle projectionOptions = CarCompat.getProjectionOptions(this.l);
        if (this.p.b()) {
            projectionOptions.putInt("android.car.projection.systemUiFlags", this.p.a());
        }
        this.e = new ProjectionOptions(projectionOptions);
        getFilesDir();
        ComponentName consentActivity = this.e.getConsentActivity();
        if (consentActivity == null) {
            A();
            return;
        }
        consentActivity.flattenToString();
        try {
            ProjectionDevice awoVar = (ProjectionDevice) intent.getParcelableExtra("com.google.android.embedded.projection.DEVICE");
            Intent intent2 = new Intent();
            intent2.setComponent(consentActivity);
            if (awoVar.a() != null) {
                intent2.putExtra("com.google.android.embedded.projection.consent.device.bt", awoVar.a());
            }
            if (awoVar.e() != null) {
                intent2.putExtra("com.google.android.embedded.projection.consent.device.usb", awoVar.e());
            }
            startIntentSenderForResult(PendingIntentCompat.a(this, 57357474, intent2, 67108864).getIntentSender(), 57357474, null, 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(e)).h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "onCreate", 272, "AndroidAutoHeadunitActivity.java")).p("Unable to start consent activity: %s", consentActivity.flattenToString());
            finish();
        }
    }

    @Override // defpackage.AareceiverActivityBase, android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        F(4);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        this.v.e(DisplayType.DISPLAY_TYPE_MAIN, keyEvent);
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.v.e(DisplayType.DISPLAY_TYPE_MAIN, keyEvent);
        return true;
    }

    @Override // android.app.Activity
    protected final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (E(intent)) {
            setIntent(intent);
            ProjectionSession bblVar = this.m.h;
            if (bblVar == null || !getIntent().getBooleanExtra("android.car.intent.extra.MEDIA_COMPONENT", false)) {
                return;
            }
            bblVar.c(DisplayType.DISPLAY_TYPE_MAIN, new KeyEvent(0, 65537));
            bblVar.c(DisplayType.DISPLAY_TYPE_MAIN, new KeyEvent(1, 65537));
        }
    }

    @Override // defpackage.AareceiverActivityBase, android.app.Activity
    protected final void onPause() {
        super.onPause();
        SystemUiHideHelper bggVar = this.A;
        if (bggVar != null) {
            bggVar.a.removeCallbacks(bggVar.c);
            bggVar.b.setOnSystemUiVisibilityChangeListener(null);
        }
    }

    @Override // defpackage.ComponentActivity, android.app.Activity
    @Deprecated
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (AaReceiverFlags45359453Facade.c()) {
            return;
        }
        p();
    }

    @Override // defpackage.AareceiverActivityBase, android.app.Activity
    protected final void onResume() {
        final SystemUiHideHelper bggVar = this.A;
        if (bggVar != null) {
            bggVar.a();
            bggVar.b.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: bge
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public final void onSystemUiVisibilityChange(int i) {
                    SystemUiHideHelper bggVar2 = SystemUiHideHelper.this;
                    if ((i & 2) == 0) {
                        bggVar2.a.removeCallbacks(bggVar2.c);
                        bggVar2.a.postDelayed(bggVar2.c, true != ActivityManager.isUserAMonkey() ? 2000L : 0L);
                    }
                }
            });
        }
        super.onResume();
    }

    public final void p() {
        if (this.u.d()) {
            r();
        } else if (AaReceiverFlags45359453Facade.a.a().a()) {
            finish();
            startActivity(new Intent(this, (Class<?>) MissingPermissionsActivity.class));
        }
    }

    public final void q(ProjectionTransportType awpVar, ProjectionDevice awoVar) {
        if (this.u.d()) {
            this.v.d(this, awpVar, awoVar, this.b.getWidth(), this.b.getHeight(), false);
        } else {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "initProjectionHandler", 713, "AndroidAutoHeadunitActivity.java")).n("Missing permissions, not calling projection handler init");
            B();
        }
    }

    public final void r() {
        if (this.c && this.u.d() && !E(getIntent())) {
            finish();
        }
    }

    @Override // defpackage.AareceiverActivityBase
    protected final void s() {
        this.v.f(DisplayType.DISPLAY_TYPE_MAIN, this);
    }

    public final void t(ProjectionDevice awoVar, ProjectionTransportType awpVar, ProjectionStartReason claVar) {
        ProjectionTransportType awpVar2 = ProjectionTransportType.USB;
        switch (awpVar) {
            case USB:
                UsbHostPermissionChecker bedVar = this.t;
                UsbDevice a2 = UsbUtils.a(bedVar.b, awoVar);
                if (a2 == null) {
                    ((ParameterizedLoggerApi) UsbHostPermissionChecker.a.b().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbHostPermissionChecker", "checkHostPermission", 38, "UsbHostPermissionChecker.java")).n("Missing USB device");
                } else {
                    UsbManager usbManager = (UsbManager) bedVar.b.getSystemService("usb");
                    if (usbManager.hasPermission(a2)) {
                        q(ProjectionTransportType.USB, awoVar);
                        break;
                    } else {
                        Intent intent = new Intent("com.google.android.embedded.projection.transport.usb.ACTION_USB_DEVICE_PERMISSION");
                        intent.setComponent(new ComponentName(bedVar.b, (Class<?>) BroadcastReceiver.class));
                        PendingIntent broadcast = PendingIntent.getBroadcast(bedVar.b, 0, PendingIntentCompat.b(intent, 1140850688), 1140850688);
                        broadcast.getClass();
                        usbManager.requestPermission(a2, broadcast);
                        ((ParameterizedLoggerApi) UsbHostPermissionChecker.a.b().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbHostPermissionChecker", "checkHostPermission", 42, "UsbHostPermissionChecker.java")).p("Permissions not granted to %s", a2);
                    }
                }
                this.m.l(awoVar.e());
                finish();
                break;
            case WIRELESS:
                if (awoVar.a() != null) {
                    if (!this.m.u(awoVar)) {
                        WirelessDiscoveryController awhVar = this.n;
                        HeadunitActivityApCallback betVar = new HeadunitActivityApCallback(this, awoVar);
                        CarCompat.onWirelessStartRequested();
                        awhVar.k(awoVar, 1, claVar, betVar);
                        break;
                    } else {
                        SettableFuture e = SettableFuture.e();
                        this.m.n(new HeadunitActivitySessionListener(this, e));
                        WaitingForConnectionActivity.b(this, e);
                        break;
                    }
                } else {
                    ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "startWirelessMode", 667, "AndroidAutoHeadunitActivity.java")).n("Missing wireless BT device");
                    finish();
                    break;
                }
        }
    }

    @Override // defpackage.AareceiverActivityBase
    protected final HeadunitActivityCallbackHolder u() {
        return new HeadunitActivityCallbackHolder(this);
    }
}
