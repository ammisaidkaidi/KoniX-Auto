package defpackage;

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
import defpackage.awo;
import defpackage.awp;
import defpackage.azu;
import defpackage.azy;
import defpackage.bad;
import defpackage.baf;
import defpackage.bag;
import defpackage.bah;
import defpackage.baw;
import defpackage.bbl;
import defpackage.cla;
import defpackage.cly;
import defpackage.cqh;
import defpackage.csx;
import defpackage.dih;
import defpackage.dkd;
import defpackage.hh;
import j$.util.Collection;
import j$.util.Optional;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class azy {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler");
    public awo d;
    public Size e;
    final cqk h;
    public final bah i;
    public final Context j;
    public final bfe k;
    public final azi l;
    public final Optional m;
    private final bbm n;
    private final dhq o;
    public final azw b = new azw();
    public final Handler c = new Handler();
    public boolean f = false;
    public final ConcurrentHashMap g = new ConcurrentHashMap();

    public azy(Context context, bah bahVar, bbm bbmVar, bfe bfeVar, azi aziVar, dhq dhqVar, Optional optional, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.j = context;
        this.i = bahVar;
        this.n = bbmVar;
        this.k = bfeVar;
        cqi e = cqk.e();
        e.f(ckb.DISPLAY_TYPE_MAIN, new azx(ckb.DISPLAY_TYPE_MAIN, this));
        if (bfeVar.a()) {
            e.f(ckb.DISPLAY_TYPE_CLUSTER, new azx(ckb.DISPLAY_TYPE_CLUSTER, this));
        }
        this.h = e.c();
        this.l = aziVar;
        this.o = dhqVar;
        this.m = optional;
    }

    public final double a(ckb ckbVar, int i, int i2) {
        bbl bblVar = this.i.h;
        if (bblVar == null || !bblVar.q.containsKey(ckbVar)) {
            return 1.0d;
        }
        return bhc.a((List) bblVar.q.get(ckbVar), i, i2);
    }

    final Optional b(ckb ckbVar) {
        return Optional.ofNullable((baw) this.g.get(ckbVar));
    }

    public final void c(ckb ckbVar, baw bawVar) {
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
    public final void d(final Context context, awp awpVar, awo awoVar, int i, int i2, final boolean z) {
        String str;
        ?? r9;
        String str2;
        dag i3;
        final das e;
        Runnable runnable;
        final cmh cmhVar;
        if (i <= 0 || i2 <= 0) {
            ((csx) a.b().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "init", 136, "AndroidAutoHeadunitProjectionHandler.java")).q("Please provide valid display size: w=%d, h=%d", i, i2);
            for (baw bawVar : this.g.values()) {
                StringBuilder sb = new StringBuilder(50);
                sb.append("Invalid display size: w=");
                sb.append(i);
                sb.append(", h=");
                sb.append(i2);
                bawVar.g(new IllegalArgumentException(sb.toString()));
            }
            return;
        }
        if (!this.o.d()) {
            ((csx) a.b().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler", "init", 145, "AndroidAutoHeadunitProjectionHandler.java")).n("Missing permissions");
            Iterator it = this.g.values().iterator();
            while (it.hasNext()) {
                ((baw) it.next()).g(new IllegalStateException("Necessary permissions not granted"));
            }
            return;
        }
        this.d = awoVar;
        this.e = new Size(i, i2);
        bbm bbmVar = this.n;
        cqk cqkVar = this.h;
        awpVar.getClass();
        awoVar.getClass();
        cqkVar.getClass();
        Context a2 = ((dhr) bbmVar.a).a();
        Car car = (Car) bbmVar.b.a();
        car.getClass();
        bah bahVar = (bah) bbmVar.c.a();
        bahVar.getClass();
        bby bbyVar = (bby) bbmVar.d.a();
        bbyVar.getClass();
        Object a3 = bbmVar.e.a();
        awx awxVar = (awx) bbmVar.f.a();
        awxVar.getClass();
        awt awtVar = (awt) bbmVar.g.a();
        awtVar.getClass();
        axc axcVar = (axc) bbmVar.h.a();
        axcVar.getClass();
        axf axfVar = (axf) bbmVar.i.a();
        axfVar.getClass();
        ((bbs) bbmVar.j.a()).getClass();
        ((bbu) bbmVar.k.a()).getClass();
        ((bbt) bbmVar.l.a()).getClass();
        bfe a4 = ((bff) bbmVar.m).a();
        bfc a5 = ((bfd) bbmVar.n).a();
        Boolean bool = (Boolean) bbmVar.o.a();
        bool.getClass();
        boolean booleanValue = bool.booleanValue();
        bde bdeVar = (bde) bbmVar.p.a();
        bdeVar.getClass();
        final bbl bblVar = new bbl(awpVar, awoVar, i, i2, cqkVar, a2, car, bahVar, bbyVar, (ati) a3, awxVar, awtVar, axcVar, axfVar, a4, a5, booleanValue, bdeVar);
        this.b.g++;
        this.f = false;
        bblVar.F.b(new zj() { // from class: com.google.android.apps.auto.aareceiver.service.AndroidAutoHeadunitProjectionHandler$1
            @Override // defpackage.zj
            public final void a() {
                awo awoVar2;
                bah bahVar2 = azy.this.i;
                bbl bblVar2 = bblVar;
                baf g = bahVar2.g(bblVar2.h);
                if (g.b()) {
                    bahVar2.c.cancel(g.d);
                } else {
                    ((csx) bah.a.c().h("com/google/android/apps/auto/aareceiver/service/DeviceTracker", "onProjectionStarted", 210, "DeviceTracker.java")).p("Failed to find notification for %s", bblVar2.h);
                }
                bahVar2.d.g(bblVar2.h, null);
                cqh n = cqh.n(bahVar2.g);
                int size = n.size();
                for (int i4 = 0; i4 < size; i4++) {
                    ((bag) n.get(i4)).h(bblVar2);
                }
                if (!dkd.c() && (awoVar2 = bahVar2.i) != null) {
                    bahVar2.p(awoVar2);
                    bahVar2.i = null;
                }
                bahVar2.h = bblVar2;
                if (bblVar2.g == awp.WIRELESS) {
                    WaitingForConnectionActivity.a(bahVar2.e);
                }
                if (z) {
                    azy azyVar = azy.this;
                    azyVar.i.m(azyVar.d);
                }
                if (azy.this.f) {
                    bblVar.f();
                }
                azy.this.m.ifPresent(azu.a);
            }

            @Override // defpackage.zj
            public final void b() {
                Integer num;
                int i4 = bblVar.G;
                csx csxVar = (csx) azy.a.c().h("com/google/android/apps/auto/aareceiver/service/AndroidAutoHeadunitProjectionHandler$1", "onDestroy", 181, "AndroidAutoHeadunitProjectionHandler.java");
                if (i4 != 0) {
                    num = Integer.valueOf(i4 - 256);
                } else {
                    num = null;
                    i4 = 0;
                }
                csxVar.p("Session error: %s", num);
                if (i4 == 232 || i4 == 233) {
                    context.startActivity(new Intent(azy.this.j, (Class<?>) SslCertificateIssueActivity.class));
                    azy.this.b.e++;
                }
                Iterator it2 = azy.this.g.values().iterator();
                while (true) {
                    boolean z2 = true;
                    if (!it2.hasNext()) {
                        break;
                    }
                    baw bawVar2 = (baw) it2.next();
                    if (bblVar.z != cly.USER_SWITCH) {
                        z2 = false;
                    }
                    bawVar2.f(z2);
                }
                bah bahVar2 = azy.this.i;
                bbl bblVar2 = bblVar;
                if (bahVar2.h != bblVar2) {
                    ((csx) bah.a.c().h("com/google/android/apps/auto/aareceiver/service/DeviceTracker", "onProjectionFinished", 238, "DeviceTracker.java")).t("Ignore onProjectionFinished for %s, current projection session: %s", bblVar2, bahVar2.h);
                } else {
                    bahVar2.i = bblVar2.h;
                    bahVar2.d.g(bahVar2.i, bblVar2.z);
                    bahVar2.j = bblVar2.g;
                    bahVar2.h = null;
                    if (bblVar2.g == awp.WIRELESS && bblVar2.B) {
                        bahVar2.s(bahVar2.g(bblVar2.h), awp.WIRELESS);
                    }
                    if (!bblVar2.B) {
                        baf g = bahVar2.g(bblVar2.h);
                        if (g.c()) {
                            bahVar2.j(g);
                            g.f = 1;
                        } else {
                            g.f = 0;
                        }
                        bahVar2.t();
                    }
                    if (dkd.c() && bahVar2.j == awp.USB && Collection.EL.stream(bahVar2.i()).anyMatch(new bad(bahVar2, 0))) {
                        bahVar2.p(bahVar2.i);
                    }
                    if (dih.a.a().b() && bahVar2.j == awp.WIRELESS && bahVar2.i.c() == cly.PING_TIMEOUT) {
                        baf g2 = bahVar2.g(bahVar2.i);
                        if (g2.c()) {
                            Context context2 = bahVar2.e;
                            context2.startActivity(hh.d(context2, g2.g, awp.WIRELESS, cla.AUTOMATIC_RESTART));
                        }
                    }
                }
                azy.this.b.f++;
            }

            @Override // defpackage.zj
            public final /* synthetic */ void c() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void d() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void e() {
            }

            @Override // defpackage.zj
            public final /* synthetic */ void f() {
            }
        });
        bblVar.w.a(bdf.SESSION_STARTUP);
        try {
            e = das.e();
            runnable = new Runnable() { // from class: bbd
                @Override // java.lang.Runnable
                public final void run() {
                    das dasVar = das.this;
                    ((csx) bbl.a.c().h("com/google/android/apps/auto/aareceiver/session/ProjectionSession", "lambda$openTransport$2", 555, "ProjectionSession.java")).n("Cancelling transportFuture");
                    dasVar.cancel(false);
                }
            };
            bblVar.i.postDelayed(runnable, 25000L);
            bbj bbjVar = new bbj(bblVar, runnable, e);
            UsbDevice a6 = beh.a(bblVar.f, bblVar.h);
            if (bblVar.g == awp.WIRELESS && a6 != null) {
                beh.e(bblVar.f, a6);
            }
            cmj cmjVar = bblVar.c;
            cmhVar = null;
            ?? r8 = a6;
            if (bblVar.g != awp.USB) {
                r8 = 0;
            }
            cjz.b("AHU.TRANSPORT_FACTORY", "Starting...");
            r9 = cmjVar.c.iterator();
            while (true) {
                if (!r9.hasNext()) {
                    String valueOf = String.valueOf((Object) r8);
                    String.valueOf(valueOf).length();
                    str2 = "Unable to handle ".concat(String.valueOf(valueOf));
                    cjz.d("AHU.TRANSPORT_FACTORY", str2);
                    str = "Unable to handle ";
                    break;
                }
                cmh b = ((cmi) r9.next()).b(r8, bbjVar);
                if (b != null) {
                    str2 = "Start sequence finished.";
                    cjz.b("AHU.TRANSPORT_FACTORY", "Start sequence finished.");
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
                ((csx) bbl.a.c().h(str2, str3, 590, str4)).n("Factory Handle is null, openTransport failed");
                bblVar.i.removeCallbacks(runnable);
                i3 = hh.i(new NullPointerException());
                str = str3;
                r9 = str4;
            } else {
                str = "openTransport";
                r9 = "ProjectionSession.java";
                str2 = "com/google/android/apps/auto/aareceiver/session/ProjectionSession";
                e.aW(new Runnable() { // from class: bbe
                    @Override // java.lang.Runnable
                    public final void run() {
                        das dasVar = das.this;
                        cmh cmhVar2 = cmhVar;
                        if (dasVar.isCancelled()) {
                            try {
                                cmhVar2.a();
                            } catch (Exception e3) {
                                ((csx) ((csx) bbl.a.b().g(e3)).h("com/google/android/apps/auto/aareceiver/session/ProjectionSession", "lambda$openTransport$3", 601, "ProjectionSession.java")).n("Could not interrupt TransportFactory");
                            }
                        }
                    }
                }, czj.a);
                i3 = e;
            }
        } catch (IOException e3) {
            e = e3;
            ((csx) ((csx) bbl.a.b().g(e)).h(str2, str, 609, r9)).n("Error opening transport");
            i3 = hh.i(e);
            dag o = cyt.o(i3, new cny() { // from class: bbb
                @Override // defpackage.cny
                public final Object a(Object obj) {
                    bbl bblVar2 = bbl.this;
                    clz clzVar = (clz) obj;
                    for (Map.Entry entry : ((cqk) bblVar2.l).entrySet()) {
                        if (entry.getValue() != baz.a) {
                            bblVar2.j.d(((axg) entry.getKey()).a(), (clk) entry.getValue());
                        }
                    }
                    bblVar2.j.d(axg.MAIN_DISPLAY.a(), (clk) bblVar2.p.get(ckb.DISPLAY_TYPE_MAIN));
                    bblVar2.j.d(axg.MAIN_INPUT.a(), bblVar2.v.a(ckb.DISPLAY_TYPE_MAIN));
                    if (bblVar2.p.containsKey(ckb.DISPLAY_TYPE_CLUSTER)) {
                        bblVar2.j.d(axg.CLUSTER_DISPLAY.a(), (clk) bblVar2.p.get(ckb.DISPLAY_TYPE_CLUSTER));
                        bblVar2.j.d(axg.CLUSTER_INPUT.a(), bblVar2.v.a(ckb.DISPLAY_TYPE_CLUSTER));
                    }
                    bblVar2.u.a(bblVar2.j);
                    bblVar2.t.a();
                    bblVar2.v.c();
                    bblVar2.b(ckb.DISPLAY_TYPE_MAIN);
                    if (bblVar2.p.containsKey(ckb.DISPLAY_TYPE_CLUSTER)) {
                        bblVar2.b(ckb.DISPLAY_TYPE_CLUSTER);
                    }
                    bblVar2.f.bindService(new Intent(bblVar2.f, (Class<?>) MediaBrowserService.class).setAction("mediaBrowserServiceIntentAction"), bblVar2.D, 1);
                    bblVar2.F.c(zl.ON_CREATE);
                    GalReceiver galReceiver = bblVar2.j;
                    if (galReceiver.e) {
                        throw new RuntimeException("can't be started after teardown");
                    }
                    for (int i4 = 0; i4 < galReceiver.c.size(); i4++) {
                        int keyAt = galReceiver.c.keyAt(i4);
                        if (!galReceiver.nativeRegister(((clk) galReceiver.c.get(keyAt)).a())) {
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
                    clv clvVar = galReceiver.d;
                    clvVar.e = new clt(clvVar, clzVar);
                    clvVar.f = new clu(clvVar, clzVar);
                    clvVar.e.start();
                    clvVar.f.start();
                    return null;
                }
            }, new bld(bblVar.i, 1));
            if (dkm.c()) {
            }
            hh.p(o, new azv(this), czj.a);
            if (awp.WIRELESS.equals(awpVar)) {
                return;
            } else {
                return;
            }
        }
        dag o2 = cyt.o(i3, new cny() { // from class: bbb
            @Override // defpackage.cny
            public final Object a(Object obj) {
                bbl bblVar2 = bbl.this;
                clz clzVar = (clz) obj;
                for (Map.Entry entry : ((cqk) bblVar2.l).entrySet()) {
                    if (entry.getValue() != baz.a) {
                        bblVar2.j.d(((axg) entry.getKey()).a(), (clk) entry.getValue());
                    }
                }
                bblVar2.j.d(axg.MAIN_DISPLAY.a(), (clk) bblVar2.p.get(ckb.DISPLAY_TYPE_MAIN));
                bblVar2.j.d(axg.MAIN_INPUT.a(), bblVar2.v.a(ckb.DISPLAY_TYPE_MAIN));
                if (bblVar2.p.containsKey(ckb.DISPLAY_TYPE_CLUSTER)) {
                    bblVar2.j.d(axg.CLUSTER_DISPLAY.a(), (clk) bblVar2.p.get(ckb.DISPLAY_TYPE_CLUSTER));
                    bblVar2.j.d(axg.CLUSTER_INPUT.a(), bblVar2.v.a(ckb.DISPLAY_TYPE_CLUSTER));
                }
                bblVar2.u.a(bblVar2.j);
                bblVar2.t.a();
                bblVar2.v.c();
                bblVar2.b(ckb.DISPLAY_TYPE_MAIN);
                if (bblVar2.p.containsKey(ckb.DISPLAY_TYPE_CLUSTER)) {
                    bblVar2.b(ckb.DISPLAY_TYPE_CLUSTER);
                }
                bblVar2.f.bindService(new Intent(bblVar2.f, (Class<?>) MediaBrowserService.class).setAction("mediaBrowserServiceIntentAction"), bblVar2.D, 1);
                bblVar2.F.c(zl.ON_CREATE);
                GalReceiver galReceiver = bblVar2.j;
                if (galReceiver.e) {
                    throw new RuntimeException("can't be started after teardown");
                }
                for (int i4 = 0; i4 < galReceiver.c.size(); i4++) {
                    int keyAt = galReceiver.c.keyAt(i4);
                    if (!galReceiver.nativeRegister(((clk) galReceiver.c.get(keyAt)).a())) {
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
                clv clvVar = galReceiver.d;
                clvVar.e = new clt(clvVar, clzVar);
                clvVar.f = new clu(clvVar, clzVar);
                clvVar.e.start();
                clvVar.f.start();
                return null;
            }
        }, new bld(bblVar.i, 1));
        if (dkm.c()) {
            hh.p(o2, new bbk(bblVar), czj.a);
        }
        hh.p(o2, new azv(this), czj.a);
        if (awp.WIRELESS.equals(awpVar) || o2.isDone() || z) {
            return;
        }
        WaitingForConnectionActivity.b(context, o2);
    }

    public final void e(ckb ckbVar, KeyEvent keyEvent) {
        bbl bblVar = this.i.h;
        if (bblVar != null) {
            bblVar.c(ckbVar, keyEvent);
            this.b.c++;
        }
    }

    public final void f(ckb ckbVar, baw bawVar) {
        if (dkj.c()) {
            this.g.remove(ckbVar, bawVar);
        } else {
            this.g.remove(ckbVar);
        }
    }

    public final void g(ckb ckbVar, int i) {
        bbl bblVar = this.i.h;
        if (bblVar != null) {
            bblVar.d(ckbVar, i);
            this.b.d = i;
        }
    }
}
