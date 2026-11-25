package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* compiled from: PG */
/* loaded from: classes.dex */
public class gb implements Parcelable {
    public static final Parcelable.Creator CREATOR = new aw(15);
    ga a;

    public gb(Parcel parcel) {
        ga fyVar;
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            fyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            fyVar = (queryLocalInterface == null || !(queryLocalInterface instanceof ga)) ? new fy(readStrongBinder) : (ga) queryLocalInterface;
        }
        this.a = fyVar;
    }

    protected void a() {
    }

    public final void b(int i, Bundle bundle) {
        ga gaVar = this.a;
        if (gaVar != null) {
            try {
                gaVar.a(i, bundle);
            } catch (RemoteException e) {
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.a == null) {
                this.a = new fz(this);
            }
            parcel.writeStrongBinder(this.a.asBinder());
        }
    }
}
