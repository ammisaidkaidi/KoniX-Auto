package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bms extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(0);
    public final bnq a;
    public final boolean b;
    public final boolean c;
    public final int[] d;
    public final int e;
    public final int[] f;

    public bms(bnq bnqVar, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.a = bnqVar;
        this.b = z;
        this.c = z2;
        this.d = iArr;
        this.e = i;
        this.f = iArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.r(parcel, 1, this.a, i);
        io.i(parcel, 2, this.b);
        io.i(parcel, 3, this.c);
        io.q(parcel, 4, this.d);
        io.k(parcel, 5, this.e);
        io.q(parcel, 6, this.f);
        io.h(parcel, g);
    }
}
