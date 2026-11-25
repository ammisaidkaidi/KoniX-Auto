package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqv extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(19);
    final int a;
    public final biz b;
    public final bno c;

    public bqv(int i, biz bizVar, bno bnoVar) {
        this.a = i;
        this.b = bizVar;
        this.c = bnoVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.r(parcel, 2, this.b, i);
        io.r(parcel, 3, this.c, i);
        io.h(parcel, g);
    }
}
