package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeSyncParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(13);
    public final String a;
    public final String b;
    public final PhenotypeFlagValueParcel c;
    public final boolean d;

    public PhenotypeSyncParcel(String str, String str2, PhenotypeFlagValueParcel bonVar, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = bonVar;
        this.d = z;
    }

    public final String a(StringBuilder sb) {
        StaggeredGridLayoutParams.append("FlagOverride(");
        StaggeredGridLayoutParams.append(this.a);
        StaggeredGridLayoutParams.append(", ");
        StaggeredGridLayoutParams.append(this.b);
        StaggeredGridLayoutParams.append(", ");
        this.c.a(StaggeredGridLayoutParams);
        StaggeredGridLayoutParams.append(", ");
        StaggeredGridLayoutParams.append(this.d);
        StaggeredGridLayoutParams.append(")");
        return StaggeredGridLayoutParams.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PhenotypeSyncParcel)) {
            return false;
        }
        PhenotypeSyncParcel booVar = (PhenotypeSyncParcel) obj;
        return AdapterDataObserver.b(this.a, booVar.a) && AdapterDataObserver.b(this.b, booVar.b) && AdapterDataObserver.b(this.c, booVar.c) && this.d == booVar.d;
    }

    public final String toString() {
        return a(new StringBuilder());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.s(parcel, 2, this.a);
        VersionedParcelReader.s(parcel, 3, this.b);
        VersionedParcelReader.r(parcel, 4, this.c, i);
        VersionedParcelReader.i(parcel, 5, this.d);
        VersionedParcelReader.h(parcel, g);
    }
}
