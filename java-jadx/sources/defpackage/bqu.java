package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqu extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(18);
    final int a;
    final bnn b;

    public bqu(int i, bnn bnnVar) {
        this.a = i;
        this.b = bnnVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.r(parcel, 2, this.b, i);
        io.h(parcel, g);
    }
}
