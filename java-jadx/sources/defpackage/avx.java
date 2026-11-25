package defpackage;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.os.SystemClock;
import android.util.ArrayMap;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class avx extends Thread implements avz {
    public static final csz a = csz.g("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer");
    private static final Long e = 1000L;
    public final Object b;
    public final Map c;
    public final awa d;
    private final avw f;
    private final avq g;
    private final Executor h;
    private BluetoothServerSocket i;
    private volatile boolean j;

    public avx(awa awaVar, Executor executor, avw avwVar, avq avqVar) {
        super("RFCOMM Server");
        this.b = new Object();
        this.j = false;
        this.c = new ArrayMap();
        this.d = awaVar;
        this.h = executor;
        this.f = avwVar;
        this.g = avqVar;
    }

    private final void b() {
        ArrayList arrayList;
        synchronized (this.b) {
            arrayList = new ArrayList(this.c.values());
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            avv avvVar = (avv) arrayList.get(i);
            try {
                avvVar.b.close();
            } catch (IOException e2) {
            }
            avvVar.c.d = true;
        }
        arrayList.clear();
        BluetoothServerSocket bluetoothServerSocket = this.i;
        if (bluetoothServerSocket != null) {
            try {
                bluetoothServerSocket.close();
            } catch (IOException e3) {
            }
            this.i = null;
        }
    }

    @Override // defpackage.avz
    public final void a() {
        this.j = true;
        interrupt();
        b();
        try {
            join(3000L);
        } catch (InterruptedException e2) {
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        final BluetoothSocket accept;
        final avv avvVar;
        this.h.execute(new Runnable() { // from class: avr
            @Override // java.lang.Runnable
            public final void run() {
                avx avxVar = avx.this;
                awh awhVar = avxVar.d.a;
                awhVar.l = avxVar;
                awhVar.k.b(bdf.RFCOMM_STARTUP, 3);
            }
        });
        while (!this.j) {
            while (!this.j && this.i == null) {
                try {
                    try {
                        this.i = this.f.a();
                    } catch (InterruptedException e2) {
                    }
                } catch (IOException e3) {
                    ((csx) a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer", "run", 148, "RfcommServer.java")).p("Failed to open RFCOMM socket: %s", e3.getMessage());
                    b();
                    SystemClock.sleep(e.longValue());
                } catch (SecurityException e4) {
                    ((csx) ((csx) a.c().g(e4)).h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer", "run", 155, "RfcommServer.java")).n("Received security exception, shutting down RFCOMM server");
                    a();
                }
            }
            BluetoothServerSocket bluetoothServerSocket = this.i;
            if (bluetoothServerSocket != null && (accept = bluetoothServerSocket.accept()) != null) {
                BluetoothDevice remoteDevice = accept.getRemoteDevice();
                CarCompat.onRfcommConnected(remoteDevice);
                String address = remoteDevice.getAddress();
                avq avqVar = this.g;
                avu avuVar = new avu(this, address, accept);
                InputStream inputStream = accept.getInputStream();
                OutputStream outputStream = accept.getOutputStream();
                address.getClass();
                inputStream.getClass();
                outputStream.getClass();
                Executor executor = (Executor) avqVar.a.a();
                executor.getClass();
                Executor executor2 = (Executor) avqVar.b.a();
                executor2.getClass();
                avp avpVar = new avp(address, avuVar, inputStream, outputStream, executor, executor2);
                avpVar.c.start();
                avv avvVar2 = new avv(accept, avpVar);
                synchronized (this.b) {
                    avvVar = (avv) this.c.put(avvVar2.a, avvVar2);
                }
                if (avvVar != null) {
                    ((csx) a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer", "listenForConnection", 96, "RfcommServer.java")).p("RFCOMM connection established with the device %s, while active connection with the same device exists.", avvVar2.a);
                    this.h.execute(new Runnable() { // from class: avt
                        @Override // java.lang.Runnable
                        public final void run() {
                            avx.this.d.a(avvVar.a);
                        }
                    });
                }
                this.h.execute(new Runnable() { // from class: avs
                    @Override // java.lang.Runnable
                    public final void run() {
                        avx avxVar = avx.this;
                        BluetoothSocket bluetoothSocket = accept;
                        awa awaVar = avxVar.d;
                        BluetoothDevice remoteDevice2 = bluetoothSocket.getRemoteDevice();
                        awh awhVar = awaVar.a;
                        if (!awhVar.i.f(remoteDevice2.getAddress())) {
                            ((csx) awh.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "onDeviceConnected", 394, "WirelessDiscoveryController.java")).p("Wireless projection is disabled for %s", remoteDevice2);
                        } else if (!dle.a.a().a() || awhVar.f.k()) {
                            awhVar.b(remoteDevice2);
                        } else {
                            awhVar.f.i(new awe(awhVar, remoteDevice2));
                            awhVar.f.j();
                        }
                    }
                });
            }
        }
    }

    @Override // java.lang.Thread
    public final String toString() {
        HashMap hashMap;
        synchronized (this.b) {
            hashMap = new HashMap(this.c);
        }
        String simpleName = getClass().getSimpleName();
        String valueOf = String.valueOf(this.f);
        String valueOf2 = String.valueOf(this.i);
        String obj = hashMap.toString();
        int length = String.valueOf(simpleName).length();
        StringBuilder sb = new StringBuilder(length + 59 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length() + obj.length());
        sb.append(simpleName);
        sb.append("{BluetoothAdapter: ");
        sb.append(valueOf);
        sb.append(",\n ServerSocket: ");
        sb.append(valueOf2);
        sb.append(",\n ConnectedDevices: ");
        sb.append(obj);
        sb.append("\n}");
        return sb.toString();
    }
}
