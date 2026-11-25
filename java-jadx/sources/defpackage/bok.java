package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bok extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(10);
    public final byte[] a;

    public bok(byte[] bArr) {
        this.a = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.n(parcel, 2, this.a);
        io.h(parcel, g);
    }
}
