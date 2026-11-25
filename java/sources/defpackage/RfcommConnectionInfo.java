package defpackage;

import android.bluetooth.BluetoothSocket;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RfcommConnectionInfo {
    public final String a;
    public final BluetoothSocket b;
    public final RfcommChannel c;

    public RfcommConnectionInfo(BluetoothSocket bluetoothSocket, RfcommChannel avpVar) {
        this.a = bluetoothSocket.getRemoteDevice().getAddress();
        this.b = bluetoothSocket;
        this.c = avpVar;
    }

    public final String toString() {
        String simpleName = getClass().getSimpleName();
        String str = this.a;
        boolean isConnected = this.b.isConnected();
        String obj = this.c.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 37 + String.valueOf(str).length() + obj.length());
        StaggeredGridLayoutParams.append(simpleName);
        StaggeredGridLayoutParams.append("{address: ");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(", socket: ");
        StaggeredGridLayoutParams.append(isConnected);
        StaggeredGridLayoutParams.append(", channel: ");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
