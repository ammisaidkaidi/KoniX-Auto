package com.google.android.apps.auto.aareceiver.bluetooth;

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
public final class RfcommServer extends Thread implements StartableServiceInterface {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer");
    private static final Long e = 1000L;
    public final Object b;
    public final Map c;
    public final WirelessDiscoveryDeviceCallback d;
    private final RfcommChannelCallback f;
    private final TwoProviderHolder g;
    private final Executor h;
    private BluetoothServerSocket i;
    private volatile boolean j;

    public RfcommServer(WirelessDiscoveryDeviceCallback awaVar, Executor executor, RfcommChannelCallback avwVar, TwoProviderHolder avqVar) {
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
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            RfcommConnectionInfo avvVar = (RfcommConnectionInfo) arrayList.get(NavInstructionTypeEnum);
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

    @Override // defpackage.StartableServiceInterface
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
        final RfcommConnectionInfo avvVar;
        this.h.execute(new Runnable() { // from class: avr
            @Override // java.lang.Runnable
            public final void run() {
                RfcommServer avxVar = RfcommServer.this;
                WirelessDiscoveryController awhVar = avxVar.d.a;
                awhVar.l = avxVar;
                awhVar.k.b(LatencyEventType.RFCOMM_STARTUP, 3);
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
                    ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer", "run", 148, "RfcommServer.java")).p("Failed to open RFCOMM socket: %s", e3.getMessage());
                    b();
                    SystemClock.sleep(e.longValue());
                } catch (SecurityException e4) {
                    ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.c().g(e4)).h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer", "run", 155, "RfcommServer.java")).n("Received security exception, shutting down RFCOMM server");
                    a();
                }
            }
            BluetoothServerSocket bluetoothServerSocket = this.i;
            if (bluetoothServerSocket != null && (accept = bluetoothServerSocket.accept()) != null) {
                BluetoothDevice remoteDevice = accept.getRemoteDevice();
                CarCompat.onRfcommConnected(remoteDevice);
                String address = remoteDevice.getAddress();
                TwoProviderHolder avqVar = this.g;
                RfcommServerFailureCallback avuVar = new RfcommServerFailureCallback(this, address, accept);
                InputStream inputStream = accept.getInputStream();
                OutputStream outputStream = accept.getOutputStream();
                address.getClass();
                inputStream.getClass();
                outputStream.getClass();
                Executor executor = (Executor) avqVar.a.a();
                executor.getClass();
                Executor executor2 = (Executor) avqVar.b.a();
                executor2.getClass();
                RfcommChannel avpVar = new RfcommChannel(address, avuVar, inputStream, outputStream, executor, executor2);
                avpVar.c.start();
                RfcommConnectionInfo avvVar2 = new RfcommConnectionInfo(accept, avpVar);
                synchronized (this.b) {
                    avvVar = (RfcommConnectionInfo) this.c.put(avvVar2.a, avvVar2);
                }
                if (avvVar != null) {
                    ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/RfcommServer", "listenForConnection", 96, "RfcommServer.java")).p("RFCOMM connection established with the device %s, while active connection with the same device exists.", avvVar2.a);
                    this.h.execute(new Runnable() { // from class: avt
                        @Override // java.lang.Runnable
                        public final void run() {
                            RfcommServer.this.d.a(avvVar.a);
                        }
                    });
                }
                this.h.execute(new Runnable() { // from class: avs
                    @Override // java.lang.Runnable
                    public final void run() {
                        RfcommServer avxVar = RfcommServer.this;
                        BluetoothSocket bluetoothSocket = accept;
                        WirelessDiscoveryDeviceCallback awaVar = avxVar.d;
                        BluetoothDevice remoteDevice2 = bluetoothSocket.getRemoteDevice();
                        WirelessDiscoveryController awhVar = awaVar.a;
                        if (!awhVar.i.f(remoteDevice2.getAddress())) {
                            ((ParameterizedLoggerApi) WirelessDiscoveryController.a.c().h("com/google/android/apps/auto/aareceiver/bluetooth/WirelessDiscoveryController", "onDeviceConnected", 394, "WirelessDiscoveryController.java")).p("Wireless projection is disabled for %s", remoteDevice2);
                        } else if (!AaReceiverFlags45360454Facade.a.a().a() || awhVar.f.k()) {
                            awhVar.b(remoteDevice2);
                        } else {
                            awhVar.f.i(new AccessPointFailureCallback(awhVar, remoteDevice2));
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
        StaggeredGridLayoutParams.append(simpleName);
        StaggeredGridLayoutParams.append("{BluetoothAdapter: ");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append(",\n ServerSocket: ");
        StaggeredGridLayoutParams.append(valueOf2);
        StaggeredGridLayoutParams.append(",\n ConnectedDevices: ");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("\n}");
        return StaggeredGridLayoutParams.toString();
    }
}
