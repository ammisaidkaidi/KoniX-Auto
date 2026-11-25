package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bop extends bnt {
    public static final Parcelable.Creator CREATOR = new bmt(14);
    public final List a;

    public bop(List list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof bop) {
            return this.a.equals(((bop) obj).a);
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FlagOverrides(");
        boolean z = true;
        for (boo booVar : this.a) {
            if (!z) {
                sb.append(", ");
            }
            booVar.a(sb);
            z = false;
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.w(parcel, 2, this.a);
        io.h(parcel, g);
    }
}
