package defpackage;

import com.google.android.projection.protocol.WifiProjectionEndpoint;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class clm {
    public final bdt a;
    public final WifiProjectionEndpoint b;
    public final bhi c;

    public clm(bdt bdtVar, bhi bhiVar) {
        this.a = bdtVar;
        this.c = bhiVar;
        this.b = new WifiProjectionEndpoint(bdtVar.b, this);
    }

    public clm() {
    }
}
