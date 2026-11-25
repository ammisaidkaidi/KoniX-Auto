package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bnq extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(6);
    public final int a;
    public final boolean b;
    public final boolean c;
    public final int d;
    public final int e;

    public bnq(int i, boolean z, boolean z2, int i2, int i3) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = i2;
        this.e = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.i(parcel, 2, this.b);
        io.i(parcel, 3, this.c);
        io.k(parcel, 4, this.d);
        io.k(parcel, 5, this.e);
        io.h(parcel, g);
    }
}
