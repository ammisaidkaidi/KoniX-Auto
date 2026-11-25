package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class boo extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(13);
    public final String a;
    public final String b;
    public final bon c;
    public final boolean d;

    public boo(String str, String str2, bon bonVar, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = bonVar;
        this.d = z;
    }

    public final String a(StringBuilder sb) {
        sb.append("FlagOverride(");
        sb.append(this.a);
        sb.append(", ");
        sb.append(this.b);
        sb.append(", ");
        this.c.a(sb);
        sb.append(", ");
        sb.append(this.d);
        sb.append(")");
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof boo)) {
            return false;
        }
        boo booVar = (boo) obj;
        return qs.b(this.a, booVar.a) && qs.b(this.b, booVar.b) && qs.b(this.c, booVar.c) && this.d == booVar.d;
    }

    public final String toString() {
        return a(new StringBuilder());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.s(parcel, 2, this.a);
        io.s(parcel, 3, this.b);
        io.r(parcel, 4, this.c, i);
        io.i(parcel, 5, this.d);
        io.h(parcel, g);
    }
}
