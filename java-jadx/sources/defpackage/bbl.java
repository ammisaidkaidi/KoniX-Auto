package defpackage;

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
public final class bbl implements zq {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/session/ProjectionSession");
    public final das A;
    public boolean B;
    public boolean C;
    public final ServiceConnection D;
    final bbh E;
    public final zn F;
    public int G;
    public int H;
    final bbh I;
    private final bbp J;
    private final clp K;
    private final bbh L;
    public MediaBrowserService b;
    public final cmj c;
    public final bah d;
    public final bby e;
    public final Context f;
    public final awp g;
    public awo h;
    public final Handler i;
    public final GalReceiver j;
    public final axs k;
    public final Map l;
    public final Set m;
    public final Set n;
    public final Set o;
    public final cqk p;
    public final cqk q;
    public final Display r;
    public boolean s;
    public final axf t;
    public final axc u;
    public final axl v;
    public final bde w;
    public final atu x;
    public final AtomicBoolean y;
    public cly z;

    public bbl(awp awpVar, awo awoVar, int i, int i2, cqk cqkVar, Context context, Car car, bah bahVar, bby bbyVar, ati atiVar, awx awxVar, awt awtVar, axc axcVar, axf axfVar, bfe bfeVar, bfc bfcVar, boolean z, bde bdeVar) {
        Handler handler = new Handler(Looper.getMainLooper());
        this.i = handler;
        this.F = new zn(this);
        this.s = false;
        this.y = new AtomicBoolean(false);
        this.A = das.e();
        this.B = false;
        this.C = false;
        clp clpVar = new clp() { // from class: bba
            @Override // defpackage.clp
            public final void h(int i3) {
                cst listIterator = ((csp) bbl.this.m).listIterator();
                while (listIterator.hasNext()) {
                    ((clp) listIterator.next()).h(i3);
                }
            }
        };
        this.K = clpVar;
        bbh bbhVar = new bbh(this, null);
        this.L = bbhVar;
        bbh bbhVar2 = new bbh(this);
        this.I = bbhVar2;
        bbh bbhVar3 = new bbh(this);
        this.E = bbhVar3;
        this.D = new bbi(this);
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
        dpx.l(atiVar.b, bbl.class);
        dpx.l(atiVar.c, awp.class);
        dpx.l(atiVar.d, awo.class);
        dpx.l(atiVar.e, GalReceiver.class);
        dpx.l(atiVar.f, Size.class);
        asw aswVar = new asw(atiVar.a, atiVar.b, atiVar.d, atiVar.e);
        this.J = aswVar;
        bbq bbqVar = (bbq) dpx.s(aswVar, bbq.class);
        this.l = bbqVar.d();
        this.k = bbqVar.b();
        this.m = bbqVar.e();
        this.n = bbqVar.f();
        this.c = bbqVar.c();
        this.o = bbqVar.g();
        this.v = new axl((CarProjectionManager) car.getCarManager("projection"), bfeVar, i, i2, z);
        this.x = bbqVar.a();
        List b2 = bhc.b(i, i2, ((WindowManager) context.getSystemService(WindowManager.class)).getDefaultDisplay());
        VideoSink a4 = bbu.a((bzv) cqkVar.get(ckb.DISPLAY_TYPE_MAIN), ((bhc) b2.get(0)).a.h);
        if (!bfeVar.a()) {
            this.p = cqk.g(ckb.DISPLAY_TYPE_MAIN, a4);
            this.q = cqk.g(ckb.DISPLAY_TYPE_MAIN, b2);
            this.r = null;
        } else {
            Display display = (Display) bfcVar.a().get();
            this.r = display;
            List b3 = bhc.b(display.getWidth(), display.getHeight(), display);
            this.p = cqk.h(ckb.DISPLAY_TYPE_MAIN, a4, ckb.DISPLAY_TYPE_CLUSTER, bbu.a((bzv) cqkVar.get(ckb.DISPLAY_TYPE_CLUSTER), ((bhc) b3.get(0)).a.h));
            this.q = cqk.h(ckb.DISPLAY_TYPE_MAIN, b2, ckb.DISPLAY_TYPE_CLUSTER, b3);
        }
    }

    @Override // defpackage.zq
    public final zn C() {
        return this.F;
    }

    public final void a() {
        this.B = true;
    }

    public final void b(ckb ckbVar) {
        int i;
        for (bhc bhcVar : (List) this.q.get(ckbVar)) {
            ckz ckzVar = bhcVar.a;
            VideoSink videoSink = (VideoSink) this.p.get(ckbVar);
            videoSink.a.add(ckzVar);
            cky b = cky.b(ckzVar.b);
            if (b == null) {
                b = cky.VIDEO_800x480;
            }
            int i2 = b.j;
            int e = byl.e(ckzVar.c);
            int i3 = (e == 0 || e == 1) ? 60 : 30;
            int i4 = ckzVar.d;
            int i5 = ckzVar.e;
            int i6 = ckzVar.f;
            int i7 = ckzVar.j;
            int i8 = ckzVar.g;
            int i9 = ckzVar.a;
            int i10 = (i9 & 128) != 0 ? ckzVar.i : 10000;
            if ((i9 & 512) != 0) {
                int c = bxx.c(ckzVar.k);
                i = c == 0 ? 1 : c;
            } else {
                i = 3;
            }
            ckx ckxVar = ckzVar.l;
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
        ((VideoSink) this.p.get(ckbVar)).nativeSetDisplayIdAndType(ckbVar == ckb.DISPLAY_TYPE_MAIN ? 0 : 1, ckbVar.d);
    }

    public final void c(ckb ckbVar, KeyEvent keyEvent) {
        axl axlVar = this.v;
        synchronized (axlVar) {
            if (!axlVar.f) {
                ((csx) axl.a.c().h("com/google/android/apps/auto/aareceiver/input/InputManager", "onKeyEvent", 293, "InputManager.java")).n("onKeyEvent called on uninitialized object");
                return;
            }
            if (djc.a.a().a() && axlVar.e && (keyEvent.getKeyCode() == 126 || keyEvent.getKeyCode() == 127 || keyEvent.getKeyCode() == 86 || keyEvent.getKeyCode() == 87 || keyEvent.getKeyCode() == 88)) {
                return;
            }
            ((InputSource) axlVar.d.get(ckbVar)).d(keyEvent);
        }
    }

    public final void d(ckb ckbVar, int i) {
        VideoSink videoSink = (VideoSink) this.p.get(ckbVar);
        videoSink.c.e(i);
        videoSink.nativeSetVideoFocus(i, true);
    }

    public final boolean e() {
        return this.d.h == this && this.d.x();
    }

    public final dag f() {
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
        cly clyVar = this.z;
        String concat = clyVar != null ? " stopReason: ".concat(clyVar.toString()) : "";
        int length = String.valueOf(simpleName).length();
        StringBuilder sb = new StringBuilder(length + 20 + String.valueOf(hexString).length() + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length() + concat.length());
        sb.append(simpleName);
        sb.append("@");
        sb.append(hexString);
        sb.append(" { device: ");
        sb.append(valueOf);
        sb.append(" mode: ");
        sb.append(valueOf2);
        sb.append(concat);
        sb.append("}");
        return sb.toString();
    }
}
