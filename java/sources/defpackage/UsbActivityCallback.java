package defpackage;

import com.google.android.apps.auto.aareceiver.transport.usb.NewDeviceActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UsbActivityCallback implements ActivityResultLauncherCallback {
    final /* synthetic */ NewDeviceActivityBase a;

    public UsbActivityCallback(NewDeviceActivityBase beaVar) {
        this.a = beaVar;
    }

    @Override // defpackage.ActivityResultLauncherCallback
    public final void a() {
        NewDeviceActivityBase beaVar = this.a;
        if (beaVar.a) {
            return;
        }
        beaVar.a = true;
        Object aT = beaVar.aT();
        NewDeviceActivity newDeviceActivity = (NewDeviceActivity) beaVar;
        DaggerSingleProvider assVar = (DaggerSingleProvider) aT;
        newDeviceActivity.b = (DeviceTracker) assVar.a.p.a();
        newDeviceActivity.c = (DeviceRegistryBase) assVar.a.m.a();
        newDeviceActivity.d = (WirelessDiscoveryController) assVar.a.E.a();
        newDeviceActivity.e = (AndroidAutoHeadunitProjectionHandler) assVar.a.z.a();
        newDeviceActivity.l = assVar.a.d();
        newDeviceActivity.m = (TelemetryTracker) assVar.a.x.a();
        newDeviceActivity.n = (UsbSerialProvider) assVar.a.L.a();
    }
}
