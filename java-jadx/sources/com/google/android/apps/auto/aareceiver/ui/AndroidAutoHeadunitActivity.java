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
import defpackage.awh;
import defpackage.awo;
import defpackage.awp;
import defpackage.awy;
import defpackage.ayf;
import defpackage.azu;
import defpackage.azw;
import defpackage.azy;
import defpackage.baf;
import defpackage.bah;
import defpackage.baw;
import defpackage.bbl;
import defpackage.bcj;
import defpackage.bde;
import defpackage.bdf;
import defpackage.bed;
import defpackage.beh;
import defpackage.beq;
import defpackage.ber;
import defpackage.bes;
import defpackage.bet;
import defpackage.beu;
import defpackage.bew;
import defpackage.bey;
import defpackage.bfm;
import defpackage.bgg;
import defpackage.bgz;
import defpackage.bhd;
import defpackage.btx;
import defpackage.btz;
import defpackage.chb;
import defpackage.ckb;
import defpackage.cla;
import defpackage.cma;
import defpackage.csx;
import defpackage.csz;
import defpackage.czj;
import defpackage.dag;
import defpackage.das;
import defpackage.dhq;
import defpackage.djo;
import defpackage.djr;
import defpackage.dju;
import defpackage.dkm;
import defpackage.hh;
import defpackage.hj;
import defpackage.tr;
import defpackage.ts;
import defpackage.tt;
import defpackage.tu;
import defpackage.tw;
import defpackage.tx;
import defpackage.ty;
import defpackage.ub;
import defpackage.uc;
import defpackage.zl;
import defpackage.zm;
import defpackage.zn;
import defpackage.zo;
import defpackage.zq;
import j$.util.Optional;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AndroidAutoHeadunitActivity extends bfm implements baw {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity");
    private bgg A;
    private tt B;
    public View b;
    ProjectionOptions e;
    public CarProjectionManager l;
    public bah m;
    public awh n;
    public awy o;
    public bcj p;
    public Optional q;
    public bde r;
    public ayf s;
    public bed t;
    public dhq u;
    public boolean c = false;
    final AtomicBoolean d = new AtomicBoolean(false);
    private final View.OnTouchListener C = new beq(this);

    private final void A() {
        int identifier;
        this.r.a(bdf.AHU_START_UNTIL_HANDLER_READY);
        this.r.a(bdf.AHU_START_UNTIL_RENDERER_READY);
        this.r.a(bdf.AHU_START_UNTIL_FIRST_VIDEO_FRAME);
        getWindow().addFlags(128);
        setContentView(R.layout.android_auto_headunit_activity);
        this.b = findViewById(R.id.frame);
        this.x = findViewById(R.id.clipper);
        this.x.setOnTouchListener(this.C);
        this.y = (SurfaceView) findViewById(R.id.surface);
        v();
        if (hj.f(this.s.a()) && (identifier = getResources().getIdentifier("status_bar_height", "dimen", "android")) != 0) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(identifier);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.b.getLayoutParams();
            layoutParams.topMargin = dimensionPixelSize;
            this.b.setLayoutParams(layoutParams);
        }
        this.y.getViewTreeObserver().addOnGlobalLayoutListener(new ber(this));
        if (djo.c()) {
            View findViewById = findViewById(R.id.btn_cancel);
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: bei
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    bbl bblVar;
                    awo awoVar;
                    AndroidAutoHeadunitActivity androidAutoHeadunitActivity = AndroidAutoHeadunitActivity.this;
                    if (!dkd.c() && (bblVar = androidAutoHeadunitActivity.m.h) != null && (awoVar = bblVar.h) != null && androidAutoHeadunitActivity.m.v(awoVar, awp.USB)) {
                        androidAutoHeadunitActivity.m.p(bblVar.h);
                    }
                    androidAutoHeadunitActivity.finish();
                }
            });
        }
        int a2 = this.s.a();
        if (hj.e(a2) || hj.f(a2)) {
            this.A = new bgg(this.b, hj.e(a2));
        }
        this.n.n = new bew(this);
        w();
        this.v.c(ckb.DISPLAY_TYPE_MAIN, this);
        r();
        if (djr.c()) {
            final uc ucVar = new uc();
            final ts tsVar = new ts() { // from class: bej
                @Override // defpackage.ts
                public final void a(Object obj) {
                    AndroidAutoHeadunitActivity.this.p();
                }
            };
            final ty tyVar = this.j;
            final String str = "activity_rq#" + this.i.getAndIncrement();
            zn znVar = this.k;
            if (znVar.a.a(zm.STARTED)) {
                throw new IllegalStateException("LifecycleOwner " + this + " is attempting to register while current state is " + znVar.a + ". LifecycleOwners must call register before they are STARTED.");
            }
            tyVar.c(str);
            tx txVar = (tx) tyVar.d.get(str);
            if (txVar == null) {
                txVar = new tx(znVar);
            }
            zo zoVar = new zo() { // from class: androidx.activity.result.ActivityResultRegistry$1
                @Override // defpackage.zo
                public final void a(zq zqVar, zl zlVar) {
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
                    ty.this.f.put(str, new tw(tsVar, ucVar));
                    if (ty.this.g.containsKey(str)) {
                        Object obj = ty.this.g.get(str);
                        ty.this.g.remove(str);
                        tsVar.a(obj);
                    }
                    tr trVar = (tr) ty.this.h.getParcelable(str);
                    if (trVar != null) {
                        ty.this.h.remove(str);
                        tsVar.a(uc.b(trVar.a, trVar.b));
                    }
                }
            };
            txVar.a.b(zoVar);
            txVar.b.add(zoVar);
            tyVar.d.put(str, txVar);
            this.B = new tu(tyVar, str, ucVar);
        }
        B();
    }

    private final void B() {
        if (!djr.c()) {
            if (this.u.d()) {
                return;
            }
            requestPermissions((String[]) this.u.c().toArray(new String[0]), 1);
            return;
        }
        if (this.u.d()) {
            return;
        }
        dhq dhqVar = this.u;
        tt ttVar = this.B;
        String[] strArr = (String[]) dhqVar.c().toArray(new String[0]);
        tu tuVar = (tu) ttVar;
        Integer num = (Integer) tuVar.c.c.get(tuVar.a);
        if (num == null) {
            throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + tuVar.b + " and input " + strArr + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }
        tuVar.c.e.add(tuVar.a);
        try {
            ty tyVar = ((tu) ttVar).c;
            int intValue = num.intValue();
            ub ubVar = ((tu) ttVar).b;
            tyVar.f(intValue, strArr);
        } catch (Exception e) {
            tuVar.c.e.remove(tuVar.a);
            throw e;
        }
    }

    private final boolean E(Intent intent) {
        Pair pair;
        String action = intent.getAction();
        final cla claVar = intent.hasExtra("com.google.android.embedded.projection.START_REQUEST_REASON") ? (cla) intent.getSerializableExtra("com.google.android.embedded.projection.START_REQUEST_REASON") : cla.USER_REQUEST;
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
                baf bafVar = (baf) it.next();
                if (bafVar.c()) {
                    pair = Pair.create(bafVar.g, bafVar.c ? awp.WIRELESS : awp.USB);
                }
            }
            if (pair == null) {
                return false;
            }
            t((awo) pair.first, (awp) pair.second, claVar);
            return true;
        }
        if (!"com.google.android.embedded.projection.PROJECT".equals(action)) {
            if ("com.google.android.embedded.projection.GAIN_FOCUS".equals(action)) {
                return true;
            }
            ((csx) a.b().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "processIntent", 639, "AndroidAutoHeadunitActivity.java")).p("Unknown action %s. Finishing activity.", action);
            return false;
        }
        bbl bblVar = this.m.h;
        awo awoVar = (awo) intent.getParcelableExtra("com.google.android.embedded.projection.DEVICE");
        if (awoVar == null) {
            if (bblVar == null) {
                ((csx) a.b().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "processIntent", 608, "AndroidAutoHeadunitActivity.java")).n("Missing device for projection");
                return false;
            }
            awoVar = bblVar.h;
        }
        final awo b = this.m.b(awoVar);
        final awp z = z(intent);
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
        this.r.b(bdf.AHU_START_UNTIL_RENDERER_READY, i);
        this.r.b(bdf.AHU_START_UNTIL_HANDLER_READY, i);
        this.r.b(bdf.AHU_START_UNTIL_FIRST_VIDEO_FRAME, i);
    }

    private static awp z(Intent intent) {
        return intent.getBooleanExtra("com.google.android.embedded.projection.USE_USB", false) ? awp.USB : awp.WIRELESS;
    }

    @Override // defpackage.baw
    public final dag a() {
        final das e = das.e();
        runOnUiThread(new Runnable() { // from class: ben
            @Override // java.lang.Runnable
            public final void run() {
                AndroidAutoHeadunitActivity androidAutoHeadunitActivity = AndroidAutoHeadunitActivity.this;
                androidAutoHeadunitActivity.w.f(e);
            }
        });
        if (dkm.c()) {
            this.d.set(false);
            hh.p(e, new beu(this), czj.a);
        }
        return e;
    }

    @Override // defpackage.baw
    public final void b(final int i, final int i2, final int i3, final int i4) {
        runOnUiThread(new Runnable() { // from class: bel
            @Override // java.lang.Runnable
            public final void run() {
                AndroidAutoHeadunitActivity androidAutoHeadunitActivity = AndroidAutoHeadunitActivity.this;
                int i5 = i;
                int i6 = i2;
                int i7 = i3;
                int i8 = i4;
                double a2 = androidAutoHeadunitActivity.v.a(ckb.DISPLAY_TYPE_MAIN, i5, i6);
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

    @Override // defpackage.baw
    public final void c(cma cmaVar) {
        if (this.d.compareAndSet(false, true)) {
            this.r.b(bdf.AHU_START_UNTIL_FIRST_VIDEO_FRAME, 3);
            if (dju.c()) {
                btz a2 = btz.a();
                a2.a.d(new btx("FirstVideoFrame"));
            }
        }
        this.w.a(cmaVar);
    }

    @Override // defpackage.baw
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
        bgz bgzVar = this.w;
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
        azy azyVar = this.v;
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
        azw azwVar = azyVar.b;
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

    @Override // defpackage.baw
    public final void e() {
        moveTaskToBack(true);
    }

    @Override // defpackage.baw
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
                bgz bgzVar = androidAutoHeadunitActivity.w;
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

    @Override // defpackage.baw
    public final void g(Throwable th) {
        ((csx) ((csx) a.b().g(th)).h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "onInitFailed", 832, "AndroidAutoHeadunitActivity.java")).n("ProjectionHandler failed to initialize");
        F(5);
        WaitingForConnectionActivity.a(this);
        runOnUiThread(new Runnable() { // from class: bek
            @Override // java.lang.Runnable
            public final void run() {
                AndroidAutoHeadunitActivity.this.finish();
            }
        });
    }

    @Override // defpackage.baw
    public final boolean h() {
        return !this.z;
    }

    @Override // defpackage.bfi
    protected final SurfaceView l() {
        return this.y;
    }

    @Override // defpackage.bfi
    protected final View m() {
        return this.x;
    }

    @Override // defpackage.bfi
    protected final bhd n() {
        return (bhd) this.q.orElse(null);
    }

    @Override // defpackage.bfi
    public final ckb o() {
        return ckb.DISPLAY_TYPE_MAIN;
    }

    @Override // defpackage.tk, android.app.Activity
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

    @Override // defpackage.tk, android.app.Activity
    public final void onBackPressed() {
        this.v.e(ckb.DISPLAY_TYPE_MAIN, new KeyEvent(4, 0));
        this.v.e(ckb.DISPLAY_TYPE_MAIN, new KeyEvent(4, 1));
    }

    @Override // defpackage.tk, defpackage.ActivityC0003do, android.app.Activity
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
            awo awoVar = (awo) intent.getParcelableExtra("com.google.android.embedded.projection.DEVICE");
            Intent intent2 = new Intent();
            intent2.setComponent(consentActivity);
            if (awoVar.a() != null) {
                intent2.putExtra("com.google.android.embedded.projection.consent.device.bt", awoVar.a());
            }
            if (awoVar.e() != null) {
                intent2.putExtra("com.google.android.embedded.projection.consent.device.usb", awoVar.e());
            }
            startIntentSenderForResult(chb.a(this, 57357474, intent2, 67108864).getIntentSender(), 57357474, null, 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            ((csx) ((csx) a.b().g(e)).h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "onCreate", 272, "AndroidAutoHeadunitActivity.java")).p("Unable to start consent activity: %s", consentActivity.flattenToString());
            finish();
        }
    }

    @Override // defpackage.bfi, android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        F(4);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        this.v.e(ckb.DISPLAY_TYPE_MAIN, keyEvent);
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.v.e(ckb.DISPLAY_TYPE_MAIN, keyEvent);
        return true;
    }

    @Override // android.app.Activity
    protected final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (E(intent)) {
            setIntent(intent);
            bbl bblVar = this.m.h;
            if (bblVar == null || !getIntent().getBooleanExtra("android.car.intent.extra.MEDIA_COMPONENT", false)) {
                return;
            }
            bblVar.c(ckb.DISPLAY_TYPE_MAIN, new KeyEvent(0, 65537));
            bblVar.c(ckb.DISPLAY_TYPE_MAIN, new KeyEvent(1, 65537));
        }
    }

    @Override // defpackage.bfi, android.app.Activity
    protected final void onPause() {
        super.onPause();
        bgg bggVar = this.A;
        if (bggVar != null) {
            bggVar.a.removeCallbacks(bggVar.c);
            bggVar.b.setOnSystemUiVisibilityChangeListener(null);
        }
    }

    @Override // defpackage.tk, android.app.Activity
    @Deprecated
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (djr.c()) {
            return;
        }
        p();
    }

    @Override // defpackage.bfi, android.app.Activity
    protected final void onResume() {
        final bgg bggVar = this.A;
        if (bggVar != null) {
            bggVar.a();
            bggVar.b.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: bge
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public final void onSystemUiVisibilityChange(int i) {
                    bgg bggVar2 = bgg.this;
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
        } else if (djr.a.a().a()) {
            finish();
            startActivity(new Intent(this, (Class<?>) MissingPermissionsActivity.class));
        }
    }

    public final void q(awp awpVar, awo awoVar) {
        if (this.u.d()) {
            this.v.d(this, awpVar, awoVar, this.b.getWidth(), this.b.getHeight(), false);
        } else {
            ((csx) a.c().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "initProjectionHandler", 713, "AndroidAutoHeadunitActivity.java")).n("Missing permissions, not calling projection handler init");
            B();
        }
    }

    public final void r() {
        if (this.c && this.u.d() && !E(getIntent())) {
            finish();
        }
    }

    @Override // defpackage.bfi
    protected final void s() {
        this.v.f(ckb.DISPLAY_TYPE_MAIN, this);
    }

    public final void t(awo awoVar, awp awpVar, cla claVar) {
        awp awpVar2 = awp.USB;
        switch (awpVar) {
            case USB:
                bed bedVar = this.t;
                UsbDevice a2 = beh.a(bedVar.b, awoVar);
                if (a2 == null) {
                    ((csx) bed.a.b().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbHostPermissionChecker", "checkHostPermission", 38, "UsbHostPermissionChecker.java")).n("Missing USB device");
                } else {
                    UsbManager usbManager = (UsbManager) bedVar.b.getSystemService("usb");
                    if (usbManager.hasPermission(a2)) {
                        q(awp.USB, awoVar);
                        break;
                    } else {
                        Intent intent = new Intent("com.google.android.embedded.projection.transport.usb.ACTION_USB_DEVICE_PERMISSION");
                        intent.setComponent(new ComponentName(bedVar.b, (Class<?>) BroadcastReceiver.class));
                        PendingIntent broadcast = PendingIntent.getBroadcast(bedVar.b, 0, chb.b(intent, 1140850688), 1140850688);
                        broadcast.getClass();
                        usbManager.requestPermission(a2, broadcast);
                        ((csx) bed.a.b().h("com/google/android/apps/auto/aareceiver/transport/usb/UsbHostPermissionChecker", "checkHostPermission", 42, "UsbHostPermissionChecker.java")).p("Permissions not granted to %s", a2);
                    }
                }
                this.m.l(awoVar.e());
                finish();
                break;
            case WIRELESS:
                if (awoVar.a() != null) {
                    if (!this.m.u(awoVar)) {
                        awh awhVar = this.n;
                        bet betVar = new bet(this, awoVar);
                        CarCompat.onWirelessStartRequested();
                        awhVar.k(awoVar, 1, claVar, betVar);
                        break;
                    } else {
                        das e = das.e();
                        this.m.n(new bes(this, e));
                        WaitingForConnectionActivity.b(this, e);
                        break;
                    }
                } else {
                    ((csx) a.b().h("com/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity", "startWirelessMode", 667, "AndroidAutoHeadunitActivity.java")).n("Missing wireless BT device");
                    finish();
                    break;
                }
        }
    }

    @Override // defpackage.bfi
    protected final bey u() {
        return new bey(this);
    }
}
