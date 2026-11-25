package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class GoogleAuthServiceClientImpl extends GmsApiServiceClientBase {
    public GoogleAuthServiceClientImpl(Context context, Looper looper, SignInAccountRequest bmpVar, ConnectionStateListener bkyVar, UnregisterListenerInterface bluVar) {
        super(context, looper, 224, bmpVar, bkyVar, bluVar);
    }

    @Override // defpackage.GmsApiServiceClientBase, defpackage.GmsClientBase, defpackage.GoogleApiClientInterface
    public final int a() {
        return 17895000;
    }

    @Override // defpackage.GmsClientBase
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.account.data.IGoogleAuthService");
        return queryLocalInterface instanceof GoogleAuthServiceStub ? (GoogleAuthServiceStub) queryLocalInterface : new GoogleAuthServiceStub(iBinder);
    }

    @Override // defpackage.GmsClientBase
    protected final String c() {
        return "com.google.android.gms.auth.account.data.IGoogleAuthService";
    }

    @Override // defpackage.GmsClientBase
    protected final String d() {
        return "com.google.android.gms.auth.account.authapi.START";
    }

    @Override // defpackage.GmsClientBase, defpackage.GoogleApiClientInterface
    public final void e(String str) {
        String valueOf = String.valueOf(str);
        Log.w("GoogleAuthSvcClientImpl", valueOf.length() != 0 ? "GoogleAuthServiceClientImpl disconnected with reason: ".concat(valueOf) : new String("GoogleAuthServiceClientImpl disconnected with reason: "));
        super.e(str);
    }

    @Override // defpackage.GmsClientBase
    protected final boolean f() {
        return true;
    }

    @Override // defpackage.GmsClientBase
    public final boolean g() {
        return true;
    }

    @Override // defpackage.GmsClientBase
    public final ApiAvailabilityVersionInfo[] h() {
        return new ApiAvailabilityVersionInfo[]{bhl.b, bhl.c, bhl.a};
    }
}
