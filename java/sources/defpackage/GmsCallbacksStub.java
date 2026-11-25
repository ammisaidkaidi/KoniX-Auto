package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GmsCallbacksStub extends AidlServiceStub implements IInterface {
    private GmsClientBase a;
    private final int b;

    public GmsCallbacksStub(GmsClientBase bmnVar, int i) {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
        this.a = bmnVar;
        this.b = i;
    }

    public final void b(int i, IBinder iBinder, Bundle bundle) {
        ThreadAndNullChecksUtil.m(this.a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.a.x(i, iBinder, bundle, this.b);
        this.a = null;
    }

    @Override // defpackage.AidlServiceStub
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (NavInstructionTypeEnum) {
            case 1:
                b(parcel.readInt(), parcel.readStrongBinder(), (Bundle) ServiceBinderHelper.a(parcel, Bundle.CREATOR));
                break;
            case 2:
                parcel.readInt();
                Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
                break;
            case 3:
                int readInt = parcel.readInt();
                IBinder readStrongBinder = parcel.readStrongBinder();
                ConnectionResultParcel bmrVar = (ConnectionResultParcel) ServiceBinderHelper.a(parcel, ConnectionResultParcel.CREATOR);
                GmsClientBase bmnVar = this.a;
                ThreadAndNullChecksUtil.m(bmnVar, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
                ThreadAndNullChecksUtil.d(bmrVar);
                bmnVar.m = bmrVar;
                if (bmnVar.g()) {
                    ApiConnectionParcel bmsVar = bmrVar.d;
                    CertDataSingleton.a().b(bmsVar == null ? null : bmsVar.a);
                }
                b(readInt, readStrongBinder, bmrVar.a);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }

    public GmsCallbacksStub() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }
}
