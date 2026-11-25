package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bmr extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(1);
    Bundle a;
    bjb[] b;
    int c;
    public bms d;

    public bmr() {
    }

    public bmr(Bundle bundle, bjb[] bjbVarArr, int i, bms bmsVar) {
        this.a = bundle;
        this.b = bjbVarArr;
        this.c = i;
        this.d = bmsVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.m(parcel, 1, this.a);
        io.v(parcel, 2, this.b, i);
        io.k(parcel, 3, this.c);
        io.r(parcel, 4, this.d, i);
        io.h(parcel, g);
    }
}
