package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SignInResponseParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(19);
    final int a;
    public final ConnectionResultCodes b;
    public final AccountAccessorResultParcel c;

    public SignInResponseParcel(int i, ConnectionResultCodes bizVar, AccountAccessorResultParcel bnoVar) {
        this.a = i;
        this.b = bizVar;
        this.c = bnoVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.r(parcel, 2, this.b, i);
        VersionedParcelReader.r(parcel, 3, this.c, i);
        VersionedParcelReader.h(parcel, g);
    }
}
