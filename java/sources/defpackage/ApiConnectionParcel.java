package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApiConnectionParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(0);
    public final CertDataParcel a;
    public final boolean b;
    public final boolean c;
    public final int[] d;
    public final int e;
    public final int[] f;

    public ApiConnectionParcel(CertDataParcel bnqVar, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.a = bnqVar;
        this.b = z;
        this.c = z2;
        this.d = iArr;
        this.e = i;
        this.f = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.r(parcel, 1, this.a, i);
        VersionedParcelReader.i(parcel, 2, this.b);
        VersionedParcelReader.i(parcel, 3, this.c);
        VersionedParcelReader.q(parcel, 4, this.d);
        VersionedParcelReader.k(parcel, 5, this.e);
        VersionedParcelReader.q(parcel, 6, this.f);
        VersionedParcelReader.h(parcel, g);
    }
}
