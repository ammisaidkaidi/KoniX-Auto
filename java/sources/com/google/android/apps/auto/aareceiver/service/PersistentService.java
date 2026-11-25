package com.google.android.apps.auto.aareceiver.service;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.os.Build;
import android.os.IBinder;
import com.achour.tweaks.Bubble;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import defpackage.RfcommChannelStateHolder;
import defpackage.StartableServiceInterface;
import com.google.android.apps.auto.aareceiver.bluetooth.WirelessDiscoveryController;
import com.google.android.apps.auto.aareceiver.phenotype.ExperimentFlagDumper;
import com.google.android.apps.auto.aareceiver.sensors.RearViewMonitor;
import com.google.android.apps.auto.aareceiver.service.BluetoothStateChangeReceiver;
import com.google.android.apps.auto.aareceiver.service.DeviceTracker;
import defpackage.PersistentServiceHost;
import defpackage.PersistentServiceFieldHolder;
import defpackage.PersistentServiceDeviceReceiver;
import com.google.android.apps.auto.aareceiver.service.PersistentServiceController;
import defpackage.OemSettings;
import defpackage.ParameterizedLoggerApi;
import defpackage.FloggerLoggerFactory;
import defpackage.AppContextModule;
import defpackage.AaReceiverFlags45356776Facade;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: PG */
/* loaded from: classes.dex */
public class PersistentService extends PersistentServiceHost {
    public static final String a;
    private static final FloggerLoggerFactory k = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/service/PersistentService");
    public WirelessDiscoveryController b;
    public PersistentServiceController c;
    public OemSettings d;
    public DeviceTracker e;
    public RfcommChannelStateHolder f;
    public RearViewMonitor g;
    public ExperimentFlagDumper h;
    public AppContextModule j;
    private boolean l = false;
    private final BroadcastReceiver m = new PersistentServiceDeviceReceiver(this);
    final BluetoothStateChangeReceiver i = new BluetoothStateChangeReceiver();
    private final PersistentServiceFieldHolder n = new PersistentServiceFieldHolder(this);

    static {
        int i = Build.VERSION.SDK_INT;
        a = "android.bluetooth.device.action.ALIAS_CHANGED";
    }

    public final void a() {
        this.f.b();
        if (this.b.i() || !this.d.e()) {
            return;
        }
        this.b.d();
    }

    public final void b() {
        WirelessDiscoveryController awhVar = this.b;
        StartableServiceInterface avzVar = awhVar.l;
        if (avzVar != null) {
            avzVar.a();
            awhVar.l = null;
        }
    }

    @Override // android.app.Service
    protected final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (strArr != null && strArr.length > 0 && "crash".equals(strArr[0])) {
            throw new RuntimeException("Imitation of crash!");
        }
        String name = getClass().getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 8);
        sb.append("*** ");
        sb.append(name);
        sb.append(" ***");
        printWriter.println(sb.toString());
        boolean z = this.l;
        StringBuilder sb2 = new StringBuilder(12);
        sb2.append("bound: ");
        sb2.append(z);
        printWriter.println(sb2.toString());
        WirelessDiscoveryController awhVar = this.b;
        if (awhVar != null) {
            printWriter.println(String.valueOf(awhVar.getClass().getSimpleName()).concat(":"));
            printWriter.println("  Devices: ".concat(awhVar.b.toString()));
            String valueOf = String.valueOf(awhVar.l);
            String.valueOf(valueOf).length();
            printWriter.println("  RfcommServer: ".concat(String.valueOf(valueOf)));
            String valueOf2 = String.valueOf(awhVar.f);
            String.valueOf(valueOf2).length();
            printWriter.println("  AccessPoint: ".concat(String.valueOf(valueOf2)));
            String valueOf3 = String.valueOf(awhVar.d);
            String.valueOf(valueOf3).length();
            printWriter.println("  Device Tracker: ".concat(String.valueOf(valueOf3)));
            LocationManager locationManager = awhVar.g;
            StringBuilder sb3 = new StringBuilder(25);
            sb3.append("  Location Enabled: ");
            sb3.append(true);
            printWriter.println(sb3.toString());
            boolean hasMessages = awhVar.h.hasMessages(1);
            StringBuilder sb4 = new StringBuilder(22);
            sb4.append("  Start Pending: ");
            sb4.append(hasMessages);
            printWriter.println(sb4.toString());
        } else {
            printWriter.println("wirelessController is null");
        }
        PersistentServiceController batVar = this.c;
        if (batVar != null) {
            String simpleName = batVar.getClass().getSimpleName();
            boolean z2 = batVar.e;
            String valueOf4 = String.valueOf(batVar.d);
            StringBuilder sb5 = new StringBuilder(String.valueOf(simpleName).length() + 32 + String.valueOf(valueOf4).length());
            sb5.append(simpleName);
            sb5.append("{request sent: ");
            sb5.append(z2);
            sb5.append(", service: ");
            sb5.append(valueOf4);
            sb5.append("}");
            printWriter.println(sb5.toString());
        } else {
            printWriter.println("serviceController is null");
        }
        if (this.h == null || !AaReceiverFlags45356776Facade.a.a().a()) {
            return;
        }
        this.h.a(printWriter);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        this.l = true;
        return null;
    }

    @Override // defpackage.PersistentServiceHost, android.app.Service
    public final void onCreate() {
        super.onCreate();
        CarCompat.initPersistentService(this);
        Bubble.start(this);
        this.c.b(this);
        a();
        this.d.h(this.n);
        this.e.t();
        registerReceiver(this.m, new IntentFilter(a));
        registerReceiver(this.i, new IntentFilter("android.bluetooth.device.action.BOND_STATE_CHANGED"));
        RearViewMonitor aziVar = this.g;
        if (aziVar.d && !aziVar.e) {
            aziVar.e = true;
            CarCompat.registerPropertyCallback(aziVar.b, aziVar.g, 289408000, 0.0f);
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        unregisterReceiver(this.m);
        unregisterReceiver(this.i);
        this.j.b(2);
        this.d.i(this.n);
        this.c.b(null);
        RearViewMonitor aziVar = this.g;
        if (aziVar.d && aziVar.e) {
            aziVar.e = false;
            CarCompat.unregisterPropertyCallback(aziVar.b, aziVar.g, 289408000);
        }
        b();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        CarCompat.onPersistentServiceStart(this);
        if (!"CRASH_RECOVERY".equals(intent != null ? intent.getAction() : null)) {
            return 1;
        }
        ((ParameterizedLoggerApi) k.c().h("com/google/android/apps/auto/aareceiver/service/PersistentService", "onStartCommand", 115, "PersistentService.java")).n("Recovered from the crash");
        return 1;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        this.l = false;
        return false;
    }
}
