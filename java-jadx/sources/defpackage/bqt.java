package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqt extends bmy implements bqn {
    public final bmp s;
    public final Integer t;
    private final boolean u;
    private final Bundle v;

    public bqt(Context context, Looper looper, bmp bmpVar, Bundle bundle, bkd bkdVar, bke bkeVar) {
        super(context, looper, 44, bmpVar, bkdVar, bkeVar);
        this.u = true;
        this.s = bmpVar;
        this.v = bundle;
        this.t = bmpVar.g;
    }

    @Override // defpackage.bmy, defpackage.bmn, defpackage.bjx
    public final int a() {
        return 12451000;
    }

    @Override // defpackage.bmn
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof bqr ? (bqr) queryLocalInterface : new bqr(iBinder);
    }

    @Override // defpackage.bmn
    protected final String c() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // defpackage.bmn
    protected final String d() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // defpackage.bmn, defpackage.bjx
    public final boolean o() {
        return this.u;
    }

    @Override // defpackage.bmn
    protected final Bundle v() {
        if (!this.b.getPackageName().equals(this.s.d)) {
            this.v.putString("com.google.android.gms.signin.internal.realClientPackageName", this.s.d);
        }
        return this.v;
    }
}
