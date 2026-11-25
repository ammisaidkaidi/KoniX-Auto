package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WirelessDiscoveryDeviceCallback {
    final /* synthetic */ WirelessDiscoveryController a;

    public WirelessDiscoveryDeviceCallback(WirelessDiscoveryController awhVar) {
        this.a = awhVar;
    }

    public final void a(String str) {
        WirelessDiscoveryController awhVar = this.a;
        WirelessDeviceConnectionState awgVar = (WirelessDeviceConnectionState) awhVar.b.remove(str);
        if (awgVar != null) {
            awhVar.d.k(awgVar.a);
            if (awhVar.d.h != null) {
                awhVar.d.h.a();
            }
        }
    }
}
