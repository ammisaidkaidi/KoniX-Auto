package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bnr extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(7);
    public final int a;
    public List b;

    public bnr(int i, List list) {
        this.a = i;
        this.b = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.w(parcel, 2, this.b);
        io.h(parcel, g);
    }
}
