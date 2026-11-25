package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqk extends bmy {
    public bqk(Context context, Looper looper, bmp bmpVar, bkd bkdVar, bke bkeVar) {
        super(context, looper, 51, bmpVar, bkdVar, bkeVar);
    }

    @Override // defpackage.bmy, defpackage.bmn, defpackage.bjx
    public final int a() {
        return 9410000;
    }

    @Override // defpackage.bmn
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
        return queryLocalInterface instanceof bqj ? (bqj) queryLocalInterface : new bqj(iBinder);
    }

    @Override // defpackage.bmn
    protected final String c() {
        return "com.google.android.gms.phenotype.internal.IPhenotypeService";
    }

    @Override // defpackage.bmn
    protected final String d() {
        return "com.google.android.gms.phenotype.service.START";
    }

    @Override // defpackage.bmn
    public final bjb[] h() {
        return bom.e;
    }
}
