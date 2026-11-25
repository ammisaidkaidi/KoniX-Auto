package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SignInServiceClient extends GmsApiServiceClientBase implements SignInApiInterface {
    public final SignInAccountRequest s;
    public final Integer t;
    private final boolean u;
    private final Bundle v;

    public SignInServiceClient(Context context, Looper looper, SignInAccountRequest bmpVar, Bundle bundle, ConnectionCallbacksInterface bkdVar, OnConnectionFailedListenerInterface bkeVar) {
        super(context, looper, 44, bmpVar, bkdVar, bkeVar);
        this.u = true;
        this.s = bmpVar;
        this.v = bundle;
        this.t = bmpVar.g;
    }

    @Override // defpackage.GmsApiServiceClientBase, defpackage.GmsClientBase, defpackage.GoogleApiClientInterface
    public final int a() {
        return 12451000;
    }

    @Override // defpackage.GmsClientBase
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof SignInServiceProxy ? (SignInServiceProxy) queryLocalInterface : new SignInServiceProxy(iBinder);
    }

    @Override // defpackage.GmsClientBase
    protected final String c() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // defpackage.GmsClientBase
    protected final String d() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // defpackage.GmsClientBase, defpackage.GoogleApiClientInterface
    public final boolean o() {
        return this.u;
    }

    @Override // defpackage.GmsClientBase
    protected final Bundle v() {
        if (!this.b.getPackageName().equals(this.s.d)) {
            this.v.putString("com.google.android.gms.signin.internal.realClientPackageName", this.s.d);
        }
        return this.v;
    }
}
