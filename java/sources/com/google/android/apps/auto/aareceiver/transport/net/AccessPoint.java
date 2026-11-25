package com.google.android.apps.auto.aareceiver.transport.net;

import android.car.CarProjectionManager;
import android.car.CarProjectionManager$ProjectionAccessPointCallback;
import android.content.Context;
import android.content.IntentFilter;
import android.location.LocationManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccessPoint {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint");
    public static final boolean b;
    static final String c;
    static final String d;
    public final CarProjectionManager e;
    public final WifiManager f;
    public final Context g;
    public final TelemetryTracker h;
    public final ListeningExecutorService j;
    public String k;
    public WifiConfiguration l;
    String m;
    public int p;
    private final NetworkInterfaceUtil q;
    private final Handler s;
    private final LocationManager t;
    public final Object i = new Object();
    private final ArrayList r = new ArrayList();
    final CarProjectionManager$ProjectionAccessPointCallback n = new AccessPointStartedCallbackA(this);
    private final CarProjectionManager$ProjectionAccessPointCallback u = new AccessPointStartedCallbackB(this);
    public final ListenableFutureCallback o = new AccessPointConfigFutureCallback(this);

    static {
        boolean z = Build.VERSION.SDK_INT > 29 || Build.VERSION.RELEASE.equals("R");
        b = z;
        c = true != z ? "wifi_ap_interface_name" : "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME";
        d = true != z ? "wifi_ap_mode" : "android.net.wifi.extra.WIFI_AP_MODE";
    }

    public AccessPoint(Context context, WifiManager wifiManager, CarProjectionManager carProjectionManager, NetworkInterfaceUtil bdwVar, ListeningExecutorService dahVar, TelemetryTracker bdeVar, LocationManager locationManager) {
        this.g = context;
        this.f = wifiManager;
        this.q = bdwVar;
        carProjectionManager.getClass();
        this.e = carProjectionManager;
        this.j = dahVar;
        this.h = bdeVar;
        this.t = locationManager;
        this.s = new AccessPointTimeoutHandler(this);
        if (AaReceiverFlagsDkoFacade.c()) {
            h(new AccessPointListenerAdapterA(this));
        }
        context.registerReceiver(new WifiApStateReceiver(this), new IntentFilter("android.net.wifi.WIFI_AP_STATE_CHANGED"));
    }

    public static WifiConfiguration a(WifiConfiguration wifiConfiguration, String str) {
        if (wifiConfiguration == null) {
            return null;
        }
        if (str != null) {
            wifiConfiguration.BSSID = str;
        }
        return wifiConfiguration;
    }

    public final ApConfiguration b() {
        WifiConfiguration wifiConfiguration;
        String str;
        int i;
        synchronized (this.i) {
            wifiConfiguration = this.l;
            str = this.k;
            i = this.p;
        }
        if (wifiConfiguration == null) {
            return null;
        }
        return new ApConfiguration(wifiConfiguration.SSID, wifiConfiguration.BSSID, wifiConfiguration.preSharedKey, i, str);
    }

    public final ImmutableList c() {
        ImmutableList n;
        synchronized (this.i) {
            n = ImmutableList.n(this.r);
        }
        return n;
    }

    public final ListenableFuture d() {
        return this.j.submit(new AccessPointHostIpCallable(this, 0));
    }

    /* JADX WARN: Unreachable blocks removed: 9, instructions: 23 */
    final String e(String str) {
        return CarCompat.getApBssidSafe(str);
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.BlockNode.getPredecessors()" because "to" is null
        	at jadx.core.dex.visitors.blocks.BlockSplitter.removeConnection(BlockSplitter.java:165)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.removeExcHandler(BlockExceptionHandler.java:324)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.lambda$prepareTryBlocks$2(BlockExceptionHandler.java:207)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.prepareTryBlocks(BlockExceptionHandler.java:207)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:60)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:372)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:56)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:49)
        */
    /* JADX WARN: Unreachable blocks removed: 13, instructions: 25 */
    final java.net.InetAddress f() {
        /*
            r6 = this;
            java.lang.String r0 = r6.m
            java.net.InetAddress r0 = com.google.android.apps.auto.aareceiver.compat.CarCompat.getApHostInetAddress(r0)
            return r0
            java.lang.Object r0 = r6.i
            monitor-enter(r0)
            java.lang.String r1 = r6.m     // Catch: java.lang.Throwable -> L37
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L37
            r0 = 0
            if (r1 != 0) goto L2a
            FloggerLoggerFactory r1 = com.google.android.apps.auto.aareceiver.transport.net.AccessPoint.a
            LoggerApi r1 = r1.c()
            java.lang.String r2 = "com/google/android/apps/auto/aareceiver/transport/net/AccessPoint"
            java.lang.String r3 = "getHostIp"
            r4 = 637(0x27d, float:8.93E-43)
            java.lang.String r5 = "AccessPoint.java"
            LoggerApi r1 = r1.h(r2, r3, r4, r5)
            ParameterizedLoggerApi r1 = (defpackage.ParameterizedLoggerApi) r1
            java.lang.String r2 = "Network interface for access point is unknown"
            r1.n(r2)
            return r0
        L2a:
            NetworkInterfaceUtil r2 = r6.q
            j$.util.Optional r1 = r2.a(r1)
            java.lang.Object r0 = r1.orElse(r0)
            java.net.InetAddress r0 = (java.net.InetAddress) r0
            return r0
        L37:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L37
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.auto.aareceiver.transport.net.AccessPoint.f():java.net.InetAddress");
    }

    public final void g() {
        synchronized (this.i) {
            this.l = null;
        }
    }

    public final void h(AccessPointStateListener bdrVar) {
        synchronized (this.i) {
            if (this.r.contains(bdrVar)) {
                ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint", "registerObserver", 475, "AccessPoint.java")).n("Observer already registered");
                return;
            }
            this.r.add(bdrVar);
            ApConfiguration b2 = b();
            if (b2 == null || b2.d == null) {
                return;
            }
            bdrVar.b(b2);
        }
    }

    public final void i(AccessPointStateListener bdrVar) {
        AccessPointListenerAdapterB bdnVar = new AccessPointListenerAdapterB(this, bdrVar);
        h(bdnVar);
        synchronized (this.i) {
            if (this.r.contains(bdrVar)) {
                Handler handler = this.s;
                handler.sendMessageDelayed(handler.obtainMessage(1, bdnVar), 30000L);
            }
        }
    }

    public final void j() {
        ApConfiguration b2 = b();
        if (b2 != null) {
            if (b2.d == null) {
                ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint", "start", 250, "AccessPoint.java")).n("Access point created, but host IP address was not provisioned");
                ProjectionIntentHelper.p(d(), this.o, this.j);
                return;
            }
            ImmutableList c2 = c();
            int size = c2.size();
            for (int i = 0; NavInstructionTypeEnum < size; i++) {
                ((AccessPointStateListener) c2.get(NavInstructionTypeEnum)).b(b2);
            }
            return;
        }
        LocationManager locationManager = this.t;
        if (1 == 0) {
            ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint", "start", 257, "AccessPoint.java")).n("Can't start access point, location services might be disabled.");
            return;
        }
        try {
            this.h.a(LatencyEventType.AP_STARTUP);
            if (ProtoLiteMessageBase) {
                CarCompat.startProjectionAccessPoint(this.e, this.u);
            } else {
                CarCompat.startProjectionAccessPoint(this.e, this.n);
            }
        } catch (IllegalStateException e) {
            this.h.b(LatencyEventType.AP_STARTUP, 5);
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.c().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint", "start", 275, "AccessPoint.java")).n("AccessPoint startup already running.");
        }
    }

    public final boolean k() {
        ApConfiguration b2 = b();
        return (b2 == null || b2.d == null) ? false : true;
    }

    public final boolean l(AccessPointStateListener bdrVar) {
        boolean remove;
        synchronized (this.i) {
            this.s.removeMessages(1, bdrVar);
            remove = this.r.remove(bdrVar);
        }
        return remove;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("AccessPoint");
        synchronized (this.i) {
            StaggeredGridLayoutParams.append("{");
            WifiConfiguration wifiConfiguration = this.l;
            if (wifiConfiguration == null) {
                StaggeredGridLayoutParams.append("AP is N/A");
            } else {
                String str2 = wifiConfiguration.SSID;
                StaggeredGridLayoutParams.append("AP SSID: ");
                StaggeredGridLayoutParams.append(GuavaPlatformUtils.c(str2));
                StaggeredGridLayoutParams.append(", IP: ");
                StaggeredGridLayoutParams.append(this.k);
                StaggeredGridLayoutParams.append(", iface: ");
                StaggeredGridLayoutParams.append(this.m);
                StaggeredGridLayoutParams.append(", accessPointType: ");
                int i = this.p;
                if (NavInstructionTypeEnum != 0) {
                    switch (NavInstructionTypeEnum) {
                        case 1:
                            str = "STATIC";
                            break;
                        default:
                            str = "DYNAMIC";
                            break;
                    }
                } else {
                    str = "null";
                }
                StaggeredGridLayoutParams.append(str);
            }
            StaggeredGridLayoutParams.append("}");
        }
        return StaggeredGridLayoutParams.toString();
    }
}
