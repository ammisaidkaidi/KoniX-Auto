package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CertDataParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(6);
    public final int a;
    public final boolean b;
    public final boolean c;
    public final int d;
    public final int e;

    public CertDataParcel(int i, boolean z, boolean z2, int i2, int i3) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = i2;
        this.e = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.i(parcel, 2, this.b);
        VersionedParcelReader.i(parcel, 3, this.c);
        VersionedParcelReader.k(parcel, 4, this.d);
        VersionedParcelReader.k(parcel, 5, this.e);
        VersionedParcelReader.h(parcel, g);
    }
}
