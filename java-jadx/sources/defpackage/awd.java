package defpackage;

import android.os.Handler;

/* compiled from: PG */
/* loaded from: classes.dex */
final class awd implements bdr {
    final /* synthetic */ awg a;
    final /* synthetic */ cla b;
    final /* synthetic */ awo c;
    final /* synthetic */ awh d;

    public awd(awh awhVar, awg awgVar, cla claVar, awo awoVar) {
        this.d = awhVar;
        this.a = awgVar;
        this.b = claVar;
        this.c = awoVar;
    }

    @Override // defpackage.bdr
    public final /* synthetic */ void a(int i) {
    }

    @Override // defpackage.bdr
    public final void b(bdt bdtVar) {
        String str;
        awh awhVar = this.d;
        awg awgVar = this.a;
        cla claVar = this.b;
        bdq bdqVar = awhVar.f;
        synchronized (bdqVar.i) {
            str = bdqVar.k;
        }
        int localPort = awhVar.m.a().getLocalPort();
        int i = awgVar.b;
        if (i == 6) {
            ddf n = cld.e.n();
            if (n.c) {
                n.k();
                n.c = false;
            }
            cld cldVar = (cld) n.b;
            str.getClass();
            int i2 = cldVar.a | 1;
            cldVar.a = i2;
            cldVar.b = str;
            int i3 = i2 | 2;
            cldVar.a = i3;
            cldVar.c = localPort;
            cldVar.d = claVar.d;
            cldVar.a = i3 | 4;
            awhVar.j(awgVar.a(), 1, (cld) n.h());
            awgVar.b = 8;
            awhVar.g(awgVar);
            Handler handler = awhVar.h;
            handler.sendMessageDelayed(handler.obtainMessage(1, awgVar), 25000L);
        } else if (i == 7) {
            String a = awgVar.a();
            ddf n2 = cle.e.n();
            if (n2.c) {
                n2.k();
                n2.c = false;
            }
            cle cleVar = (cle) n2.b;
            cleVar.d = 0;
            int i4 = cleVar.a | 4;
            cleVar.a = i4;
            str.getClass();
            int i5 = i4 | 1;
            cleVar.a = i5;
            cleVar.b = str;
            cleVar.a = i5 | 2;
            cleVar.c = localPort;
            awhVar.j(a, 7, n2.h());
        } else {
            ((csx) awh.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "sendWifiStart", 757, "WirelessDiscoveryController.java")).p("sendWifiStart failed, unexpected device state: %s", awgVar);
        }
        this.d.d.q(this.c, true);
        awh awhVar2 = this.d;
        awg awgVar2 = this.a;
        awhVar2.f(awgVar2);
        Handler handler2 = awhVar2.h;
        handler2.sendMessageDelayed(handler2.obtainMessage(3, awgVar2), 30000L);
    }

    @Override // defpackage.bdr
    public final /* synthetic */ void c() {
    }
}
