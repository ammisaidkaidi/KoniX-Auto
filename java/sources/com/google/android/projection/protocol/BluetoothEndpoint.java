package com.google.android.projection.protocol;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.IntentFilter;
import android.provider.Settings;
import defpackage.BluetoothAdapterStateReceiver;
import defpackage.BluetoothAdapterManagerCallback;
import com.google.android.apps.auto.aareceiver.bluetooth.BluetoothAdapterManager;
import defpackage.BluetoothPeerManagerFutureCallback;
import com.google.android.apps.auto.aareceiver.bluetooth.BluetoothPeerManager;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import com.google.android.apps.auto.aareceiver.session.ProjectionSession;
import defpackage.LatencyEventType;
import defpackage.GalEndpointCallback;
import defpackage.GalServiceEndpoint;
import defpackage.ParameterizedLoggerApi;
import defpackage.DirectExecutorEnum_czj;
import defpackage.ImmediateListenableFuture;
import defpackage.ListenableFuture;
import defpackage.SettableFuture;
import defpackage.AaReceiverFlags45355406Facade;
import defpackage.AaReceiverFlagsDkoFacade;
import defpackage.ProjectionIntentHelper;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public class BluetoothEndpoint implements BluetoothCallbacks, clk {
    private final GalEndpointCallback a;
    private final String b;
    private final int[] c;
    private long mNativeBluetoothEndpoint;

    public BluetoothEndpoint(GalEndpointCallback cljVar, String str, int[] iArr) {
        this.a = cljVar;
        this.b = str;
        this.c = iArr;
    }

    private native int nativeInit(int i, long j);

    private native void nativeSetDeviceInfo(String str, int[] iArr);

    private native void nativeShutdown();

    @Override // defpackage.FrameTimingCallback
    public final long a() {
        return this.mNativeBluetoothEndpoint;
    }

    @Override // defpackage.FrameTimingCallback
    public final void b() {
        nativeShutdown();
    }

    @Override // defpackage.GalServiceEndpoint
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
        BluetoothPeerManager aviVar = (BluetoothPeerManager) this.a;
        aviVar.n.removeCallbacks(aviVar.p);
        aviVar.c(i == 0);
    }

    @Override // com.google.android.projection.protocol.BluetoothCallbacks
    public final void onPairingRequest(String str, int i) {
        boolean z;
        Executor executor;
        GalEndpointCallback cljVar = this.a;
        if (!BluetoothAdapter.checkBluetoothAddress(str)) {
            ((ParameterizedLoggerApi) BluetoothPeerManager.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "onPairingRequest", 211, "BluetoothPeerManager.java")).p("Invalid MD Bluetooth address in BluetoothPairingRequest: %s", str);
            return;
        }
        BluetoothPeerManager aviVar = (BluetoothPeerManager) cljVar;
        BluetoothDevice remoteDevice = aviVar.f.c.getRemoteDevice(str);
        synchronized (aviVar.i) {
            BluetoothDevice bluetoothDevice = ((BluetoothPeerManager) cljVar).j;
            if (bluetoothDevice != null && !bluetoothDevice.equals(remoteDevice)) {
                ((ParameterizedLoggerApi) BluetoothPeerManager.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "onPairingRequest", 221, "BluetoothPeerManager.java")).t("Mismatched phone Bluetooth address - expected %s, got %s", ((BluetoothPeerManager) cljVar).j, remoteDevice);
                return;
            }
            if (((BluetoothPeerManager) cljVar).j == null) {
                ((BluetoothPeerManager) cljVar).j = remoteDevice;
                if (((BluetoothPeerManager) cljVar).d.e() != null) {
                    DeviceTracker bahVar = ((BluetoothPeerManager) cljVar).c;
                    bahVar.a(remoteDevice, ((BluetoothPeerManager) cljVar).d.e());
                    bahVar.t();
                    z = true;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            ListenableFuture dagVar = ((BluetoothPeerManager) cljVar).k;
            if (dagVar == null) {
                final BluetoothAdapterManager avbVar = ((BluetoothPeerManager) cljVar).f;
                final ProjectionSession bblVar = ((BluetoothPeerManager) cljVar).e;
                if (avbVar.c == null) {
                    dagVar = ProjectionIntentHelper.i(new IllegalStateException("Bluetooth adapter is not available on this device"));
                } else {
                    synchronized (avbVar.f) {
                        if (avbVar.h.add(bblVar)) {
                            avbVar.a.post(new Runnable() { // from class: auy
                                @Override // java.lang.Runnable
                                public final void run() {
                                    final BluetoothAdapterManager avbVar2 = BluetoothAdapterManager.this;
                                    final ProjectionSession bblVar2 = bblVar;
                                    bblVar2.F.b(new zj() { // from class: com.google.android.apps.auto.aareceiver.bluetooth.BluetoothAdapterManager$1
                                        @Override // defpackage.ProjectionSessionLifecycleListener_zj
                                        public final /* synthetic */ void a() {
                                        }

                                        @Override // defpackage.ProjectionSessionLifecycleListener_zj
                                        public final void b() {
                                            BluetoothAdapterManager avbVar3 = BluetoothAdapterManager.this;
                                            ProjectionSession bblVar3 = bblVar2;
                                            synchronized (avbVar3.f) {
                                                avbVar3.h.remove(bblVar3);
                                                if (avbVar3.g && avbVar3.h.isEmpty()) {
                                                    avbVar3.c.disable();
                                                    avbVar3.g = false;
                                                }
                                            }
                                        }

                                        @Override // defpackage.ProjectionSessionLifecycleListener_zj
                                        public final /* synthetic */ void c() {
                                        }

                                        @Override // defpackage.ProjectionSessionLifecycleListener_zj
                                        public final /* synthetic */ void d() {
                                        }

                                        @Override // defpackage.ProjectionSessionLifecycleListener_zj
                                        public final /* synthetic */ void e() {
                                        }

                                        @Override // defpackage.ProjectionSessionLifecycleListener_zj
                                        public final /* synthetic */ void f() {
                                        }
                                    });
                                }
                            });
                        }
                        if (avbVar.c.isEnabled()) {
                            dagVar = dad.a;
                        } else {
                            SettableFuture e = SettableFuture.e();
                            final BluetoothAdapterStateReceiver auzVar = new BluetoothAdapterStateReceiver(e);
                            e.aW(new Runnable() { // from class: aux
                                @Override // java.lang.Runnable
                                public final void run() {
                                    BluetoothAdapterManager avbVar2 = BluetoothAdapterManager.this;
                                    avbVar2.b.unregisterReceiver(auzVar);
                                }
                            }, czj.a);
                            avbVar.b.registerReceiver(auzVar, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
                            avbVar.g = Settings.Global.getInt(avbVar.b.getContentResolver(), "bluetooth_on", 1) != 1;
                            if (AaReceiverFlags45355406Facade.c()) {
                                avbVar.d.a(LatencyEventType.BT_ADAPTER_STARTUP);
                            }
                            boolean enable = avbVar.c.enable();
                            if (AaReceiverFlags45355406Facade.c() && !enable) {
                                if (avbVar.c.isEnabled()) {
                                    e.k(null);
                                } else {
                                    e.l(new IllegalStateException("BT Adapter couldn't be started"));
                                }
                            }
                            if (AaReceiverFlags45355406Facade.c() && AaReceiverFlagsDkoFacade.c()) {
                                if (enable) {
                                    ProjectionIntentHelper.p(e, new BluetoothAdapterManagerCallback(avbVar), avbVar.e);
                                } else {
                                    avbVar.d.b(LatencyEventType.BT_ADAPTER_STARTUP, 5);
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
                ((BluetoothPeerManager) cljVar).h.nativeRequestDelayedPairing();
                ((BluetoothPeerManager) cljVar).k = dagVar;
                executor = ((BluetoothPeerManager) cljVar).g;
            }
            ProjectionIntentHelper.p(dagVar, new BluetoothPeerManagerFutureCallback((BluetoothPeerManager) cljVar, z, remoteDevice), executor);
        }
    }
}
