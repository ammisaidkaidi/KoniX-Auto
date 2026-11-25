package defpackage;

import android.bluetooth.BluetoothDevice;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WirelessDeviceConnectionState {
    public final BluetoothDevice a;
    int b = 1;

    public WirelessDeviceConnectionState(BluetoothDevice bluetoothDevice) {
        this.a = bluetoothDevice;
    }

    final String a() {
        return this.a.getAddress();
    }

    public final String toString() {
        String str;
        String valueOf = String.valueOf(this.a);
        switch (this.b) {
            case 1:
                str = "RFCOMM_CONNECTED";
                break;
            case 2:
                str = "VERSION_REQUESTED";
                break;
            case 3:
                str = "WIFI_NOT_SUPPORTED";
                break;
            case 4:
                str = "INVALID_VERSION";
                break;
            case 5:
                str = "VERSION_VERIFIED";
                break;
            case 6:
                str = "WIFI_START_REQUESTED_BY_HU";
                break;
            case 7:
                str = "WIFI_START_REQUESTED_BY_MD";
                break;
            case 8:
                str = "WIFI_START_REQUEST_SENT";
                break;
            case 9:
                str = "ERROR";
                break;
            case 10:
                str = "STARTED";
                break;
            default:
                str = "null";
                break;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9 + str.length());
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(", state: ");
        StaggeredGridLayoutParams.append(str);
        return StaggeredGridLayoutParams.toString();
    }
}
