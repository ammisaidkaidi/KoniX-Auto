package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeTokenParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(10);
    public final byte[] a;

    public PhenotypeTokenParcel(byte[] bArr) {
        this.a = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.n(parcel, 2, this.a);
        VersionedParcelReader.h(parcel, g);
    }
}
