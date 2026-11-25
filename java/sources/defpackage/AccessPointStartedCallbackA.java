package defpackage;

import android.net.wifi.WifiConfiguration;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AccessPointStartedCallbackA extends ProjectionAccessPointCallbackBase {
    final /* synthetic */ AccessPoint a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public AccessPointStartedCallbackA(AccessPoint bdqVar) {
        super(bdqVar);
        this.a = bdqVar;
    }

    @Override // android.car.CarProjectionManager$ProjectionAccessPointCallback
    public final void onStarted(WifiConfiguration wifiConfiguration) {
        TelemetryTracker bdeVar = this.a.h;
        if (bdeVar != null) {
            bdeVar.b(LatencyEventType.AP_STARTUP, 3);
        }
        String str = wifiConfiguration.SSID;
        synchronized (this.a.i) {
            this.a.l = wifiConfiguration;
        }
        ListenableFuture d = this.a.d();
        AccessPoint bdqVar = this.a;
        ProjectionIntentHelper.p(d, bdqVar.o, bdqVar.j);
    }
}
