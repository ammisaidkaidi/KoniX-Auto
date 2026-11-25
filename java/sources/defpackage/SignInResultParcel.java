package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SignInResultParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(18);
    final int a;
    final SignInConnectionParcel b;

    public SignInResultParcel(int i, SignInConnectionParcel bnnVar) {
        this.a = i;
        this.b = bnnVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.r(parcel, 2, this.b, i);
        VersionedParcelReader.h(parcel, g);
    }
}
