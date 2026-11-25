package defpackage;

import android.net.MacAddress;
import android.net.wifi.SoftApConfiguration;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AccessPointStartedCallbackB extends ProjectionAccessPointCallbackBase {
    final /* synthetic */ AccessPoint a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AccessPointStartedCallbackB(AccessPoint bdqVar) {
        super(bdqVar);
        this.a = bdqVar;
    }

    public final void onStarted(SoftApConfiguration softApConfiguration) {
        TelemetryTracker bdeVar = this.a.h;
        if (bdeVar != null) {
            bdeVar.b(LatencyEventType.AP_STARTUP, 3);
        }
        softApConfiguration.getSsid();
        synchronized (this.a.i) {
            MacAddress bssid = softApConfiguration.getBssid();
            this.a.l = AccessPoint.a(softApConfiguration.toWifiConfiguration(), bssid == null ? null : bssid.toString());
        }
        ListenableFuture d = this.a.d();
        AccessPoint bdqVar = this.a;
        ProjectionIntentHelper.p(d, bdqVar.o, bdqVar.j);
    }
}
