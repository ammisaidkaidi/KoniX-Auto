package defpackage;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqp extends bnt implements bki {
    public static final Parcelable.Creator CREATOR = new bmt(16);
    final int a;
    public int b;
    public Intent c;

    public bqp() {
        this(2, 0, null);
    }

    public bqp(int i, int i2, Intent intent) {
        this.a = i;
        this.b = i2;
        this.c = intent;
    }

    @Override // defpackage.bki
    public final Status a() {
        return this.b == 0 ? Status.a : Status.c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 1, this.a);
        io.k(parcel, 2, this.b);
        io.r(parcel, 3, this.c, i);
        io.h(parcel, g);
    }
}
