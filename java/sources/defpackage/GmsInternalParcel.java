package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GmsInternalParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(7);
    public final int a;
    public List b;

    public GmsInternalParcel(int i, List list) {
        this.a = i;
        this.b = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.w(parcel, 2, this.b);
        VersionedParcelReader.h(parcel, g);
    }
}
