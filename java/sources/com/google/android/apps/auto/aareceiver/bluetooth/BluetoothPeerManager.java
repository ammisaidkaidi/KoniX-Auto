package com.google.android.apps.auto.aareceiver.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.car.CarProjectionManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import com.google.android.projection.protocol.BluetoothEndpoint;
import com.google.android.apps.auto.aareceiver.bluetooth.BluetoothPeerManager;
import defpackage.ProjectionDevice;
import defpackage.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BluetoothPeerManager implements GalEndpointCallback {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager");
    public final Context b;
    public final DeviceTracker c;
    public final ProjectionDevice d;
    public final ProjectionSession e;
    public final BluetoothAdapterManager f;
    public final Executor g;
    public final BluetoothEndpoint h;
    public final Runnable o;
    public final Runnable p;
    private final CarProjectionManager s;
    public final Object i = new Object();
    public BluetoothDevice j = null;
    public ListenableFuture k = null;
    public boolean l = false;
    public final AtomicBoolean m = new AtomicBoolean(false);
    public final Handler n = new Handler(Looper.getMainLooper());
    public final BroadcastReceiver q = new BluetoothPairingRequestReceiver(this);
    public final BroadcastReceiver r = new BluetoothProfileStateReceiver(this);

    public BluetoothPeerManager(final Context context, CarProjectionManager carProjectionManager, DeviceTracker bahVar, ProjectionDevice awoVar, final ProjectionSession bblVar, BluetoothAdapterManager avbVar, Executor executor) {
        final int i = 0;
        final int i2 = 1;
        this.o = new Runnable(this) { // from class: ave
            public final /* synthetic */ BluetoothPeerManager a;

            {
                this.a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        BluetoothPeerManager aviVar = this.a;
                        ((ParameterizedLoggerApi) BluetoothPeerManager.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "handlePairingTimeout", 415, "BluetoothPeerManager.java")).n("Timed out receiving BluetoothAuthenticationResult, denying pairing request");
                        aviVar.c(false);
                        return;
                    default:
                        BluetoothPeerManager aviVar2 = this.a;
                        synchronized (aviVar2.i) {
                            aviVar2.b();
                        }
                        return;
                }
            }
        };
        this.p = new Runnable(this) { // from class: ave
            public final /* synthetic */ BluetoothPeerManager a;

            {
                this.a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (NavInstructionTypeEnum) {
                    case 0:
                        BluetoothPeerManager aviVar = this.a;
                        ((ParameterizedLoggerApi) BluetoothPeerManager.a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "handlePairingTimeout", 415, "BluetoothPeerManager.java")).n("Timed out receiving BluetoothAuthenticationResult, denying pairing request");
                        aviVar.c(false);
                        return;
                    default:
                        BluetoothPeerManager aviVar2 = this.a;
                        synchronized (aviVar2.i) {
                            aviVar2.b();
                        }
                        return;
                }
            }
        };
        this.b = context;
        this.s = carProjectionManager;
        this.c = bahVar;
        this.d = awoVar;
        this.e = bblVar;
        this.f = avbVar;
        this.g = executor;
        this.h = new BluetoothEndpoint(this, avbVar.c.getAddress(), new int[]{2, 4});
        bblVar.F.b(new ProjectionSessionLifecycleListener_zj() { // from class: com.google.android.apps.auto.aareceiver.bluetooth.BluetoothPeerManager$3
            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void a() {
                ProjectionDevice awoVar2;
                IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.PAIRING_REQUEST");
                intentFilter.setPriority(999);
                context.registerReceiver(BluetoothPeerManager.this.q, intentFilter);
                context.registerReceiver(BluetoothPeerManager.this.r, new IntentFilter("android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"));
                synchronized (BluetoothPeerManager.this.i) {
                    if (BluetoothPeerManager.this.j == null && (awoVar2 = bblVar.h) != null && awoVar2.a() != null) {
                        BluetoothPeerManager.this.j = awoVar2.a();
                        BluetoothPeerManager.this.b();
                    }
                }
            }

            @Override // defpackage.ProjectionSessionLifecycleListener_zj
            public final void b() {
                BluetoothPeerManager aviVar = BluetoothPeerManager.this;
                synchronized (aviVar.i) {
                    ListenableFuture dagVar = aviVar.k;
                    if (dagVar != null) {
                        dagVar.cancel(false);
                    }
                    aviVar.k = null;
                    aviVar.d();
                }
                aviVar.b.unregisterReceiver(aviVar.q);
                aviVar.b.unregisterReceiver(aviVar.r);
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

    public final BluetoothDevice a() {
        BluetoothDevice bluetoothDevice;
        synchronized (this.i) {
            bluetoothDevice = this.j;
        }
        return bluetoothDevice;
    }

    public final void b() {
        BluetoothAdapter bluetoothAdapter;
        if (this.l || (bluetoothAdapter = this.f.c) == null || !bluetoothAdapter.isEnabled()) {
            return;
        }
        boolean requestBluetoothProfileInhibit = CarCompat.requestBluetoothProfileInhibit(this.s, this.j, 11);
        this.l = requestBluetoothProfileInhibit;
        if (requestBluetoothProfileInhibit) {
            return;
        }
        ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "ensureA2dpInhibitedLocked", 341, "BluetoothPeerManager.java")).n("Failed to inhibit A2DP, audio may not come from projected device");
    }

    public final void c(boolean z) {
        BluetoothDevice a2 = a();
        if (a2 == null) {
            ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/bluetooth/BluetoothPeerManager", "finishSspPairing", 432, "BluetoothPeerManager.java")).n("Unexpected BluetoothAuthenticationResult or timeout before BluetoothPairingRequest");
        } else if (this.m.getAndSet(false)) {
            a2.setPairingConfirmation(IcuMessageFormat);
        }
    }

    public final void d() {
        if (this.l) {
            CarCompat.releaseBluetoothProfileInhibit(this.s, this.j, 11);
            this.l = false;
        }
    }
}
