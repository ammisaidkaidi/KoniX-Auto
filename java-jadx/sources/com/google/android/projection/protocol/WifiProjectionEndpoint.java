package com.google.android.projection.protocol;

import com.google.android.apps.auto.aareceiver.compat.CarCompat;
import defpackage.axk;
import defpackage.bdt;
import defpackage.clk;
import defpackage.cll;
import defpackage.clm;
import j$.util.Collection;

/* compiled from: PG */
/* loaded from: classes.dex */
public class WifiProjectionEndpoint implements WifiProjectionCallbacks, clk {
    private String a;
    private clm b;
    private long mNativeWifiProjectionEndpoint;

    public WifiProjectionEndpoint(String str, clm clmVar) {
        this.a = str;
        this.b = clmVar;
        if (str == null) {
            throw new NullPointerException("Null car wifi BSSID");
        }
    }

    private native int nativeInit(int i, long j, String str);

    private native void nativeShutdown();

    @Override // defpackage.clw
    public final long a() {
        return this.mNativeWifiProjectionEndpoint;
    }

    @Override // defpackage.clw
    public final void b() {
        nativeShutdown();
    }

    @Override // defpackage.clk
    public final boolean c(int i, long j) {
        return nativeInit(i, j, this.a) == 0;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.projection.protocol.CarWifi$CarWifiCredentials] */
    @Override // com.google.android.projection.protocol.WifiProjectionCallbacks
    public final CarWifi$CarWifiCredentials onWifiCredentialsRequest() {
        clm clmVar = this.b;
        cll cllVar = new cll();
        bdt bdtVar = clmVar.a;
        cllVar.a = bdtVar.a;
        cllVar.b = bdtVar.c;
        cllVar.d = 6;
        cllVar.c = Collection.EL.stream(clmVar.c.a()).mapToInt(axk.d).toArray();
        final String str = cllVar.a;
        final String str2 = cllVar.b;
        final int i = cllVar.d;
        final int[] iArr = cllVar.c;
        return new Object(str, str2, i, iArr) { // from class: com.google.android.projection.protocol.CarWifi$CarWifiCredentials
            public final int a;
            public final int[] supportedWifiChannels;
            public final String wifiPassword;
            public final String wifiSsid;

            {
                this.wifiSsid = str;
                this.wifiPassword = str2;
                this.a = i;
                this.supportedWifiChannels = iArr;
            }

            private int getAccessPointType() {
                return CarCompat.getAccessPointTypeNumber();
            }

            private int getWifiSecurityModeNumber() {
                int i2 = this.a;
                int i3 = i2 - 1;
                if (i2 != 0) {
                    return i3;
                }
                throw null;
            }
        };
    }
}
