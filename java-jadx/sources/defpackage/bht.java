package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bht extends bmy {
    public bht(Context context, Looper looper, bmp bmpVar, bky bkyVar, blu bluVar) {
        super(context, looper, 224, bmpVar, bkyVar, bluVar);
    }

    @Override // defpackage.bmy, defpackage.bmn, defpackage.bjx
    public final int a() {
        return 17895000;
    }

    @Override // defpackage.bmn
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.account.data.IGoogleAuthService");
        return queryLocalInterface instanceof bhu ? (bhu) queryLocalInterface : new bhu(iBinder);
    }

    @Override // defpackage.bmn
    protected final String c() {
        return "com.google.android.gms.auth.account.data.IGoogleAuthService";
    }

    @Override // defpackage.bmn
    protected final String d() {
        return "com.google.android.gms.auth.account.authapi.START";
    }

    @Override // defpackage.bmn, defpackage.bjx
    public final void e(String str) {
        String valueOf = String.valueOf(str);
        Log.w("GoogleAuthSvcClientImpl", valueOf.length() != 0 ? "GoogleAuthServiceClientImpl disconnected with reason: ".concat(valueOf) : new String("GoogleAuthServiceClientImpl disconnected with reason: "));
        super.e(str);
    }

    @Override // defpackage.bmn
    protected final boolean f() {
        return true;
    }

    @Override // defpackage.bmn
    public final boolean g() {
        return true;
    }

    @Override // defpackage.bmn
    public final bjb[] h() {
        return new bjb[]{bhl.b, bhl.c, bhl.a};
    }
}
