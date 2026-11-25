package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.VersionedParcelableCreatorSwitch;
import defpackage.VersionedParcelWriter;
import defpackage.VersionedParcelableMarker;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator CREATOR = new VersionedParcelableCreatorSwitch(0);
    public final VersionedParcelableMarker a;

    public ParcelImpl(VersionedParcelableMarker agcVar) {
        this.a = agcVar;
    }

    public ParcelImpl(Parcel parcel) {
        this.a = new VersionedParcelWriter(parcel).c();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        new VersionedParcelWriter(parcel).k(this.a);
    }
}
