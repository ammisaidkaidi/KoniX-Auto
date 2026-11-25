package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqs extends bnt implements bki {
    public static final Parcelable.Creator CREATOR = new bmt(17);
    public final List a;
    public final String b;

    public bqs(List list, String str) {
        this.a = list;
        this.b = str;
    }

    @Override // defpackage.bki
    public final Status a() {
        return this.b != null ? Status.a : Status.c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.u(parcel, 1, this.a);
        io.s(parcel, 2, this.b);
        io.h(parcel, g);
    }
}
