package defpackage;

import android.net.MacAddress;
import android.net.wifi.SoftApConfiguration;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bdj extends bdo {
    final /* synthetic */ bdq a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bdj(bdq bdqVar) {
        super(bdqVar);
        this.a = bdqVar;
    }

    public final void onStarted(SoftApConfiguration softApConfiguration) {
        bde bdeVar = this.a.h;
        if (bdeVar != null) {
            bdeVar.b(bdf.AP_STARTUP, 3);
        }
        softApConfiguration.getSsid();
        synchronized (this.a.i) {
            MacAddress bssid = softApConfiguration.getBssid();
            this.a.l = bdq.a(softApConfiguration.toWifiConfiguration(), bssid == null ? null : bssid.toString());
        }
        dag d = this.a.d();
        bdq bdqVar = this.a;
        hh.p(d, bdqVar.o, bdqVar.j);
    }
}
