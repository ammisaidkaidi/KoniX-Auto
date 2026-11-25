package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.Log;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bnj extends asq implements IInterface {
    private bmn a;
    private final int b;

    public bnj(bmn bmnVar, int i) {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
        this.a = bmnVar;
        this.b = i;
    }

    public final void b(int i, IBinder iBinder, Bundle bundle) {
        hr.m(this.a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.a.x(i, iBinder, bundle, this.b);
        this.a = null;
    }

    @Override // defpackage.asq
    protected final boolean w(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                b(parcel.readInt(), parcel.readStrongBinder(), (Bundle) asr.a(parcel, Bundle.CREATOR));
                break;
            case 2:
                parcel.readInt();
                Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
                break;
            case 3:
                int readInt = parcel.readInt();
                IBinder readStrongBinder = parcel.readStrongBinder();
                bmr bmrVar = (bmr) asr.a(parcel, bmr.CREATOR);
                bmn bmnVar = this.a;
                hr.m(bmnVar, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
                hr.d(bmrVar);
                bmnVar.m = bmrVar;
                if (bmnVar.g()) {
                    bms bmsVar = bmrVar.d;
                    bnp.a().b(bmsVar == null ? null : bmsVar.a);
                }
                b(readInt, readStrongBinder, bmrVar.a);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }

    public bnj() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }
}
