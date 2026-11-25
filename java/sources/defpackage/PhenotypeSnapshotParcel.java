package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeSnapshotParcel extends SafeParcelableBase implements Comparable {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(15);
    public final int a;
    public final int b;

    public PhenotypeSnapshotParcel(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(PhenotypeSnapshotParcel boqVar) {
        int i = this.a;
        int i2 = boqVar.a;
        if (NavInstructionTypeEnum < i2) {
            return -1;
        }
        if (NavInstructionTypeEnum > i2) {
            return 1;
        }
        int i3 = this.b;
        int i4 = boqVar.b;
        if (i3 < i4) {
            return -1;
        }
        return i3 > i4 ? 1 : 0;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof PhenotypeSnapshotParcel) && compareTo((PhenotypeSnapshotParcel) obj) == 0;
    }

    public final int hashCode() {
        return (this.a * 31) + this.b;
    }

    public final String toString() {
        return "GenericDimension(" + this.a + ", " + this.b + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.k(parcel, 2, this.b);
        VersionedParcelReader.h(parcel, g);
    }
}
