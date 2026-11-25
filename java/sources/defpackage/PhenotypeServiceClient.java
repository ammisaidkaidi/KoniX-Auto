package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeServiceClient extends GmsApiServiceClientBase {
    public PhenotypeServiceClient(Context context, Looper looper, SignInAccountRequest bmpVar, ConnectionCallbacksInterface bkdVar, OnConnectionFailedListenerInterface bkeVar) {
        super(context, looper, 51, bmpVar, bkdVar, bkeVar);
    }

    @Override // defpackage.GmsApiServiceClientBase, defpackage.GmsClientBase, defpackage.GoogleApiClientInterface
    public final int a() {
        return 9410000;
    }

    @Override // defpackage.GmsClientBase
    protected final /* synthetic */ IInterface b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.phenotype.internal.IPhenotypeService");
        return queryLocalInterface instanceof PhenotypeServiceProxy ? (PhenotypeServiceProxy) queryLocalInterface : new PhenotypeServiceProxy(iBinder);
    }

    @Override // defpackage.GmsClientBase
    protected final String c() {
        return "com.google.android.gms.phenotype.internal.IPhenotypeService";
    }

    @Override // defpackage.GmsClientBase
    protected final String d() {
        return "com.google.android.gms.phenotype.service.START";
    }

    @Override // defpackage.GmsClientBase
    public final ApiAvailabilityVersionInfo[] h() {
        return bom.e;
    }
}
