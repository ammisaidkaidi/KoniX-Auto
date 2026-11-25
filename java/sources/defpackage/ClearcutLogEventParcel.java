package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ClearcutLogEventParcel extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(11);
    final int a;
    public String b;

    public ClearcutLogEventParcel() {
        this.a = 1;
    }

    public ClearcutLogEventParcel(int i, String str) {
        this.a = i;
        this.b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 1, this.a);
        VersionedParcelReader.s(parcel, 2, this.b);
        VersionedParcelReader.h(parcel, g);
    }
}
