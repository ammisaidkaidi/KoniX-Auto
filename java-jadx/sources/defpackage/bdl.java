package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.SoftApConfiguration;
import android.net.wifi.WifiConfiguration;
import android.os.Bundle;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import j$.util.Objects;
import j$.util.Optional;
import java.net.InetAddress;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bdl extends BroadcastReceiver {
    final /* synthetic */ bdq a;

    public bdl(bdq bdqVar) {
        this.a = bdqVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        WifiConfiguration wifiConfiguration;
        Bundle extras = intent.getExtras();
        if (extras == null) {
            ((csx) bdq.a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$4", "onReceive", 219, "AccessPoint.java")).p("Received %s without extras", "android.net.wifi.WIFI_AP_STATE_CHANGED");
            return;
        }
        bdq bdqVar = this.a;
        int i = extras.getInt("wifi_state");
        extras.getInt("previous_wifi_state");
        String string = extras.getString(bdq.c);
        int i2 = extras.getInt(bdq.d);
        if (i != 12 && i != 13) {
            if ((i == 10 || i == 11) && !CarCompat.shouldIgnoreApDisabledBroadcast()) {
                synchronized (bdqVar.i) {
                    if (dib.d() && Objects.equals(bdqVar.m, string)) {
                        bdqVar.m = null;
                    }
                    if (!dib.a.a().b() || (wifiConfiguration = bdqVar.l) == null || Objects.equals(bdqVar.e(string), wifiConfiguration.BSSID)) {
                        synchronized (bdqVar.i) {
                            if (bdqVar.l != null) {
                                bdqVar.g();
                                CarCompat.stopProjectionAccessPoint(bdqVar.e);
                            }
                        }
                        return;
                    }
                    return;
                }
            }
            return;
        }
        synchronized (bdqVar.i) {
            if (!dib.d() || bdqVar.m == null) {
                bdqVar.m = string;
                InetAddress f = bdqVar.f();
                if (f != null) {
                    bdqVar.k = f.getHostAddress();
                }
                if (i2 == 2) {
                    bdqVar.p = 2;
                } else if (i2 == 1) {
                    bdqVar.p = 1;
                    i2 = 1;
                }
                Context context2 = bdqVar.g;
                if (0 != 0) {
                    ((csx) bdq.a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint", "handleOnApStateChanged", 341, "AccessPoint.java")).n("android.permission.OVERRIDE_WIFI_CONFIG not granted.");
                    return;
                }
                WifiConfiguration wifiApConfigurationSafe = CarCompat.getWifiApConfigurationSafe(bdqVar.f);
                if (wifiApConfigurationSafe == null) {
                    ((csx) bdq.a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint", "handleOnApStateChanged", 347, "AccessPoint.java")).n("No AP WifiConfiguration returned by WifiManager.");
                    return;
                }
                if (i2 == 1) {
                    if (dib.a.a().c()) {
                        if (bdq.b) {
                            SoftApConfiguration softApConfiguration = bdqVar.f.getSoftApConfiguration();
                            if (softApConfiguration != null && softApConfiguration.getBand() == 1) {
                                ((csx) bdq.a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint", "handleOnApStateChanged", 356, "AccessPoint.java")).n("AP supports only 2GHz");
                                return;
                            }
                        } else {
                            Optional b = bhi.b(wifiApConfigurationSafe);
                            if (b.isPresent() && ((Integer) b.get()).intValue() == 0) {
                                ((csx) bdq.a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint", "handleOnApStateChanged", 362, "AccessPoint.java")).n("AP supports only 2GHz");
                                return;
                            }
                        }
                    }
                    if (wifiApConfigurationSafe.allowedKeyManagement.get(0)) {
                        ((csx) bdq.a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint", "handleOnApStateChanged", 368, "AccessPoint.java")).n("AP is an open network and is not supported");
                        return;
                    }
                    bdqVar.l = bdq.a(wifiApConfigurationSafe, bdqVar.e(string));
                }
            }
        }
    }
}
