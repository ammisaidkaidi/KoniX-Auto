package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ParcelableFragmentState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new MediaDescriptionCompatCreator(2);
    final String a;
    final int b;

    public ParcelableFragmentState(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
    }
}
