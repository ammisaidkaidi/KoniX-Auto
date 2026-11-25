package defpackage;

import com.google.android.projection.protocol.WifiProjectionEndpoint;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WifiCredentialsProvider {
    public final ApConfiguration a;
    public final WifiProjectionEndpoint b;
    public final WifiUtils c;

    public WifiCredentialsProvider(ApConfiguration bdtVar, WifiUtils bhiVar) {
        this.a = bdtVar;
        this.c = bhiVar;
        this.b = new WifiProjectionEndpoint(bdtVar.b, this);
    }

    public WifiCredentialsProvider() {
    }
}
