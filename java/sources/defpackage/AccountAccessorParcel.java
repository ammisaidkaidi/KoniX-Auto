package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AccountAccessorParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(3);
    public final int a;
    public final int b;
    public final int c;
    public final long d;
    public final long e;
    public final String f;
    public final String g;
    public final int h;
    public final int i;

    public AccountAccessorParcel(int i, int i2, int i3, long j, long j2, String str, String str2, int i4, int i5) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = j;
        this.e = j2;
        this.f = str;
        this.g = str2;
        this.h = i4;
        this.i = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.k(parcel, 2, this.b);
        VersionedParcelReader.k(parcel, 3, this.c);
        VersionedParcelReader.l(parcel, 4, this.d);
        VersionedParcelReader.l(parcel, 5, this.e);
        VersionedParcelReader.s(parcel, 6, this.f);
        VersionedParcelReader.s(parcel, 7, this.g);
        VersionedParcelReader.k(parcel, 8, this.h);
        VersionedParcelReader.k(parcel, 9, this.i);
        VersionedParcelReader.h(parcel, g);
    }
}
