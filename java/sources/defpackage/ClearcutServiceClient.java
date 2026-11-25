package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutServiceClient extends GmsApiServiceClientBase {
    public ClearcutServiceClient(Context context, Looper looper, SignInAccountRequest bmpVar, ConnectionCallbacksInterface bkdVar, OnConnectionFailedListenerInterface bkeVar) {
        super(context, looper, 40, bmpVar, bkdVar, bkeVar);
    }

    @Override // defpackage.GmsApiServiceClientBase, defpackage.GmsClientBase, defpackage.GoogleApiClientInterface
    public final int a() {
        return 11925000;
    }

    @Override // defpackage.GmsClientBase
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        return queryLocalInterface instanceof ClearcutServiceProxy ? (ClearcutServiceProxy) queryLocalInterface : new ClearcutServiceProxy(iBinder);
    }

    @Override // defpackage.GmsClientBase
    protected final String c() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }

    @Override // defpackage.GmsClientBase
    protected final String d() {
        return "com.google.android.gms.clearcut.service.START";
    }

    @Override // defpackage.GmsClientBase
    public final ApiAvailabilityVersionInfo[] h() {
        return bil.b;
    }
}
