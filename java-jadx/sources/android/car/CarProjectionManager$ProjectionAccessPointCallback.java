package android.car;

import android.net.wifi.WifiConfiguration;

/* loaded from: classes2.dex */
public abstract class CarProjectionManager$ProjectionAccessPointCallback {
    public static final int ERROR_GENERIC = 2;
    public static final int ERROR_INCOMPATIBLE_MODE = 3;
    public static final int ERROR_NO_CHANNEL = 1;
    public static final int ERROR_TETHERING_DISALLOWED = 4;

    public void onStarted(WifiConfiguration wifiConfiguration) {
    }

    public void onStopped() {
    }

    public void onFailed(int i) {
    }
}
