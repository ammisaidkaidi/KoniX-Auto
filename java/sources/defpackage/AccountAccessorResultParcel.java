package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccountAccessorResultParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(5);
    final int a;
    final IBinder b;
    public final ConnectionResultCodes c;
    public final boolean d;
    public final boolean e;

    public AccountAccessorResultParcel(int i, IBinder iBinder, ConnectionResultCodes bizVar, boolean z, boolean z2) {
        this.a = i;
        this.b = iBinder;
        this.c = bizVar;
        this.d = z;
        this.e = z2;
    }

    public final AccountAccessorProxy a() {
        IBinder iBinder = this.b;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
        return queryLocalInterface instanceof AccountAccessorProxy ? (AccountAccessorProxy) queryLocalInterface : new AccountAccessorProxy(iBinder);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccountAccessorResultParcel)) {
            return false;
        }
        AccountAccessorResultParcel bnoVar = (AccountAccessorResultParcel) obj;
        return this.c.equals(bnoVar.c) && ThreadAndNullChecksUtil.n(a(), bnoVar.a());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.p(parcel, 2, this.b);
        VersionedParcelReader.r(parcel, 3, this.c, i);
        VersionedParcelReader.i(parcel, 4, this.d);
        VersionedParcelReader.i(parcel, 5, this.e);
        VersionedParcelReader.h(parcel, g);
    }
}
