package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeConfigParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(14);
    public final List a;

    public PhenotypeConfigParcel(List list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PhenotypeConfigParcel) {
            return this.a.equals(((PhenotypeConfigParcel) obj).a);
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FlagOverrides(");
        boolean z = true;
        for (PhenotypeSyncParcel booVar : this.a) {
            if (!z) {
                StaggeredGridLayoutParams.append(", ");
            }
            booVar.a(StaggeredGridLayoutParams);
            z = false;
        }
        StaggeredGridLayoutParams.append(")");
        return StaggeredGridLayoutParams.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.w(parcel, 2, this.a);
        VersionedParcelReader.h(parcel, g);
    }
}
