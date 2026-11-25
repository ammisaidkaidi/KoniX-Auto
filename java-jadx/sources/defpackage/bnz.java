package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bnz extends bmy {
    public bnz(Context context, Looper looper, bmp bmpVar, bky bkyVar, blu bluVar) {
        super(context, looper, 270, bmpVar, bkyVar, bluVar);
    }

    @Override // defpackage.bmy, defpackage.bmn, defpackage.bjx
    public final int a() {
        return 203400000;
    }

    @Override // defpackage.bmn
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return queryLocalInterface instanceof bnv ? (bnv) queryLocalInterface : new bnv(iBinder);
    }

    @Override // defpackage.bmn
    protected final String c() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // defpackage.bmn
    protected final String d() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // defpackage.bmn
    protected final boolean f() {
        return true;
    }

    @Override // defpackage.bmn
    public final bjb[] h() {
        return bix.b;
    }

    @Override // defpackage.bmn
    protected final Bundle v() {
        return new Bundle();
    }
}
