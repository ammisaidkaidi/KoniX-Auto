package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bis extends bmy {
    public bis(Context context, Looper looper, bmp bmpVar, bkd bkdVar, bke bkeVar) {
        super(context, looper, 40, bmpVar, bkdVar, bkeVar);
    }

    @Override // defpackage.bmy, defpackage.bmn, defpackage.bjx
    public final int a() {
        return 11925000;
    }

    @Override // defpackage.bmn
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerService");
        return queryLocalInterface instanceof biu ? (biu) queryLocalInterface : new biu(iBinder);
    }

    @Override // defpackage.bmn
    protected final String c() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }

    @Override // defpackage.bmn
    protected final String d() {
        return "com.google.android.gms.clearcut.service.START";
    }

    @Override // defpackage.bmn
    public final bjb[] h() {
        return bil.b;
    }
}
