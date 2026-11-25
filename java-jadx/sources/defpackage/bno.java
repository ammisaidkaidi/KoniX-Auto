package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bno extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(5);
    final int a;
    final IBinder b;
    public final biz c;
    public final boolean d;
    public final boolean e;

    public bno(int i, IBinder iBinder, biz bizVar, boolean z, boolean z2) {
        this.a = i;
        this.b = iBinder;
        this.c = bizVar;
        this.d = z;
        this.e = z2;
    }

    public final bng a() {
        IBinder iBinder = this.b;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
        return queryLocalInterface instanceof bng ? (bng) queryLocalInterface : new bng(iBinder);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bno)) {
            return false;
        }
        bno bnoVar = (bno) obj;
        return this.c.equals(bnoVar.c) && hr.n(a(), bnoVar.a());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.p(parcel, 2, this.b);
        io.r(parcel, 3, this.c, i);
        io.i(parcel, 4, this.d);
        io.i(parcel, 5, this.e);
        io.h(parcel, g);
    }
}
