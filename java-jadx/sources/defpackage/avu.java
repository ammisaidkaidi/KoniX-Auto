package defpackage;

import android.bluetooth.BluetoothSocket;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;

/* compiled from: PG */
/* loaded from: classes.dex */
final class avu {
    final /* synthetic */ String a;
    final /* synthetic */ BluetoothSocket b;
    final /* synthetic */ avx c;

    public avu(avx avxVar, String str, BluetoothSocket bluetoothSocket) {
        this.c = avxVar;
        this.a = str;
        this.b = bluetoothSocket;
    }

    public final void a() {
        synchronized (this.c.b) {
            avv avvVar = (avv) this.c.c.get(this.a);
            if (avvVar == null || avvVar.b != this.b) {
                ((csx) avx.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer$1", "onConnectionFailure", 126, "RfcommServer.java")).n("onConnectionFailure received, but there was another socket opened with the same device, ignoring failure.");
            } else {
                this.c.c.remove(this.a);
                awa awaVar = this.c.d;
                String str = this.a;
                awaVar.a(str);
                CarCompat.onRfcommDisconnected(str);
            }
        }
    }
}
