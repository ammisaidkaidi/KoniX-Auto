package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bjb extends bnt {
    public static final Parcelable.Creator CREATOR = new acg(17);
    public final String a;

    @Deprecated
    public final int b;
    private final long c;

    public bjb(String str, int i, long j) {
        this.a = str;
        this.b = i;
        this.c = j;
    }

    public bjb(String str, long j) {
        this.a = str;
        this.c = j;
        this.b = -1;
    }

    public final long a() {
        long j = this.c;
        return j == -1 ? this.b : j;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof bjb) {
            bjb bjbVar = (bjb) obj;
            String str = this.a;
            if (((str != null && str.equals(bjbVar.a)) || (this.a == null && bjbVar.a == null)) && a() == bjbVar.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Long.valueOf(a())});
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        hq.d("name", this.a, arrayList);
        hq.d("version", Long.valueOf(a()), arrayList);
        return hq.c(arrayList, this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.s(parcel, 1, this.a);
        io.k(parcel, 2, this.b);
        io.l(parcel, 3, a());
        io.h(parcel, g);
    }
}
