package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class fz extends Binder implements ga {
    final /* synthetic */ gb a;

    public fz() {
        attachInterface(this, "android.support.v4.os.IResultReceiver");
    }

    @Override // defpackage.ga
    public final void a(int i, Bundle bundle) {
        this.a.a();
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            case 1598968902:
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }

    public fz(gb gbVar) {
        this.a = gbVar;
        attachInterface(this, "android.support.v4.os.IResultReceiver");
    }
}
