package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bia extends bnt {
    public static final Parcelable.Creator CREATOR = new acg(11);
    final int a;
    public String b;

    public bia() {
        this.a = 1;
    }

    public bia(int i, String str) {
        this.a = i;
        this.b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.s(parcel, 2, this.b);
        io.h(parcel, g);
    }
}
