package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClientTelemetryServiceClient extends GmsApiServiceClientBase {
    public ClientTelemetryServiceClient(Context context, Looper looper, SignInAccountRequest bmpVar, ConnectionStateListener bkyVar, UnregisterListenerInterface bluVar) {
        super(context, looper, 270, bmpVar, bkyVar, bluVar);
    }

    @Override // defpackage.GmsApiServiceClientBase, defpackage.GmsClientBase, defpackage.GoogleApiClientInterface
    public final int a() {
        return 203400000;
    }

    @Override // defpackage.GmsClientBase
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return queryLocalInterface instanceof AccountAccessorStubProxy ? (AccountAccessorStubProxy) queryLocalInterface : new AccountAccessorStubProxy(iBinder);
    }

    @Override // defpackage.GmsClientBase
    protected final String c() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // defpackage.GmsClientBase
    protected final String d() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // defpackage.GmsClientBase
    protected final boolean f() {
        return true;
    }

    @Override // defpackage.GmsClientBase
    public final ApiAvailabilityVersionInfo[] h() {
        return bix.b;
    }

    @Override // defpackage.GmsClientBase
    protected final Bundle v() {
        return new Bundle();
    }
}
