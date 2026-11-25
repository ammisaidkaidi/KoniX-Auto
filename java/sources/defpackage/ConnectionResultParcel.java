package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConnectionResultParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(1);
    Bundle a;
    ApiAvailabilityVersionInfo[] b;
    int c;
    public ApiConnectionParcel d;

    public ConnectionResultParcel() {
    }

    public ConnectionResultParcel(Bundle bundle, ApiAvailabilityVersionInfo[] bjbVarArr, int i, ApiConnectionParcel bmsVar) {
        this.a = bundle;
        this.b = bjbVarArr;
        this.c = i;
        this.d = bmsVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.m(parcel, 1, this.a);
        VersionedParcelReader.v(parcel, 2, this.b, i);
        VersionedParcelReader.k(parcel, 3, this.c);
        VersionedParcelReader.r(parcel, 4, this.d, i);
        VersionedParcelReader.h(parcel, g);
    }
}
