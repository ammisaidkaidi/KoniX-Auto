package com.google.android.projection.protocol;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.IntentFilter;
import android.provider.Settings;
import defpackage.auz;
import defpackage.ava;
import defpackage.avb;
import defpackage.avh;
import defpackage.avi;
import defpackage.bah;
import defpackage.bbl;
import defpackage.bdf;
import defpackage.clj;
import defpackage.clk;
import defpackage.csx;
import defpackage.czj;
import defpackage.dad;
import defpackage.dag;
import defpackage.das;
import defpackage.dik;
import defpackage.dkm;
import defpackage.hh;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public class BluetoothEndpoint implements BluetoothCallbacks, clk {
    private final clj a;
    private final String b;
    private final int[] c;
    private long mNativeBluetoothEndpoint;

    public BluetoothEndpoint(clj cljVar, String str, int[] iArr) {
        this.a = cljVar;
        this.b = str;
        this.c = iArr;
    }

    private native int nativeInit(int i, long j);

    private native void nativeSetDeviceInfo(String str, int[] iArr);

    private native void nativeShutdown();

    @Override // defpackage.clw
    public final long a() {
        return this.mNativeBluetoothEndpoint;
    }

    @Override // defpackage.clw
    public final void b() {
        nativeShutdown();
    }

    @Override // defpackage.clk
    public final boolean c(int i, long j) {
        if (nativeInit(i, j) != 0) {
            return false;
        }
        nativeSetDeviceInfo(this.b, this.c);
        return true;
    }

    public native void nativeOnReadyForPairing(boolean z);

    public native void nativeRequestDelayedPairing();

    public native void nativeSendAuthData(String str, int i);

    @Override // com.google.android.projection.protocol.BluetoothCallbacks
    public final void onAuthenticationResult(int i) {
        avi aviVar = (avi) this.a;
        aviVar.n.removeCallbacks(aviVar.p);
        aviVar.c(i == 0);
    }

    @Override // com.google.android.projection.protocol.BluetoothCallbacks
    public final void onPairingRequest(String str, int i) {
        boolean z;
        Executor executor;
        clj cljVar = this.a;
        if (!BluetoothAdapter.checkBluetoothAddress(str)) {
            ((csx) avi.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "onPairingRequest", 211, "BluetoothPeerManager.java")).p("Invalid MD Bluetooth address in BluetoothPairingRequest: %s", str);
            return;
        }
        avi aviVar = (avi) cljVar;
        BluetoothDevice remoteDevice = aviVar.f.c.getRemoteDevice(str);
        synchronized (aviVar.i) {
            BluetoothDevice bluetoothDevice = ((avi) cljVar).j;
            if (bluetoothDevice != null && !bluetoothDevice.equals(remoteDevice)) {
                ((csx) avi.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "onPairingRequest", 221, "BluetoothPeerManager.java")).t("Mismatched phone Bluetooth address - expected %s, got %s", ((avi) cljVar).j, remoteDevice);
                return;
            }
            if (((avi) cljVar).j == null) {
                ((avi) cljVar).j = remoteDevice;
                if (((avi) cljVar).d.e() != null) {
                    bah bahVar = ((avi) cljVar).c;
                    bahVar.a(remoteDevice, ((avi) cljVar).d.e());
                    bahVar.t();
                    z = true;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            dag dagVar = ((avi) cljVar).k;
            if (dagVar == null) {
                final avb avbVar = ((avi) cljVar).f;
                final bbl bblVar = ((avi) cljVar).e;
                if (avbVar.c == null) {
                    dagVar = hh.i(new IllegalStateException("Bluetooth adapter is not available on this device"));
                } else {
                    synchronized (avbVar.f) {
                        if (avbVar.h.add(bblVar)) {
                            avbVar.a.post(new Runnable() { // from class: auy
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final avb avbVar2 = avb.this;
                                    final bbl bblVar2 = bblVar;
                                    bblVar2.F.b(new zj() { // from class: com.google.android.apps.auto.aareceiver.bluetooth.BluetoothAdapterManager$1
                                        @Override // defpackage.zj
                                        public final /* synthetic */ void a() {
                                        }

                                        @Override // defpackage.zj
                                        public final void b() {
                                            avb avbVar3 = avb.this;
                                            bbl bblVar3 = bblVar2;
                                            synchronized (avbVar3.f) {
                                                avbVar3.h.remove(bblVar3);
                                                if (avbVar3.g && avbVar3.h.isEmpty()) {
                                                    avbVar3.c.disable();
                                                    avbVar3.g = false;
                                                }
                                            }
                                        }

                                        @Override // defpackage.zj
                                        public final /* synthetic */ void c() {
                                        }

                                        @Override // defpackage.zj
                                        public final /* synthetic */ void d() {
                                        }

                                        @Override // defpackage.zj
                                        public final /* synthetic */ void e() {
                                        }

                                        @Override // defpackage.zj
                                        public final /* synthetic */ void f() {
                                        }
                                    });
                                }
                            });
                        }
                        if (avbVar.c.isEnabled()) {
                            dagVar = dad.a;
                        } else {
                            das e = das.e();
                            final auz auzVar = new auz(e);
                            e.aW(new Runnable() { // from class: aux
                                @Override // java.lang.Runnable
                                public final void run() {
                                    avb avbVar2 = avb.this;
                                    avbVar2.b.unregisterReceiver(auzVar);
                                }
                            }, czj.a);
                            avbVar.b.registerReceiver(auzVar, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
                            avbVar.g = Settings.Global.getInt(avbVar.b.getContentResolver(), "bluetooth_on", 1) != 1;
                            if (dik.c()) {
                                avbVar.d.a(bdf.BT_ADAPTER_STARTUP);
                            }
                            boolean enable = avbVar.c.enable();
                            if (dik.c() && !enable) {
                                if (avbVar.c.isEnabled()) {
                                    e.k(null);
                                } else {
                                    e.l(new IllegalStateException("BT Adapter couldn't be started"));
                                }
                            }
                            if (dik.c() && dkm.c()) {
                                if (enable) {
                                    hh.p(e, new ava(avbVar), avbVar.e);
                                } else {
                                    avbVar.d.b(bdf.BT_ADAPTER_STARTUP, 5);
                                }
                            }
                            dagVar = e;
                        }
                    }
                }
            }
            if (dagVar.isDone()) {
                executor = czj.a;
            } else {
                ((avi) cljVar).h.nativeRequestDelayedPairing();
                ((avi) cljVar).k = dagVar;
                executor = ((avi) cljVar).g;
            }
            hh.p(dagVar, new avh((avi) cljVar, z, remoteDevice), executor);
        }
    }
}
