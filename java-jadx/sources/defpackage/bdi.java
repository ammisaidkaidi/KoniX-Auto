package defpackage;

import android.net.wifi.WifiConfiguration;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bdi extends bdo {
    final /* synthetic */ bdq a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bdi(bdq bdqVar) {
        super(bdqVar);
        this.a = bdqVar;
    }

    @Override // android.car.CarProjectionManager$ProjectionAccessPointCallback
    public final void onStarted(WifiConfiguration wifiConfiguration) {
        bde bdeVar = this.a.h;
        if (bdeVar != null) {
            bdeVar.b(bdf.AP_STARTUP, 3);
        }
        String str = wifiConfiguration.SSID;
        synchronized (this.a.i) {
            this.a.l = wifiConfiguration;
        }
        dag d = this.a.d();
        bdq bdqVar = this.a;
        hh.p(d, bdqVar.o, bdqVar.j);
    }
}
