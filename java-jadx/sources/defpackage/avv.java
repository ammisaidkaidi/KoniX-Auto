package defpackage;

import android.bluetooth.BluetoothSocket;

/* compiled from: PG */
/* loaded from: classes.dex */
final class avv {
    public final String a;
    public final BluetoothSocket b;
    public final avp c;

    public avv(BluetoothSocket bluetoothSocket, avp avpVar) {
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
        sb.append(simpleName);
        sb.append("{address: ");
        sb.append(str);
        sb.append(", socket: ");
        sb.append(isConnected);
        sb.append(", channel: ");
        sb.append(obj);
        sb.append("}");
        return sb.toString();
    }
}
