package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ViewBaseSavedState implements Parcelable {
    public final Parcelable d;
    public static final ViewBaseSavedState c = new AbsSavedStateEmptyHolder();
    public static final Parcelable.Creator CREATOR = new BaseSavedStateCreator(2);

    public ViewBaseSavedState() {
        this.d = null;
    }

    protected ViewBaseSavedState(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.d = readParcelable == null ? c : readParcelable;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.d, i);
    }

    protected ViewBaseSavedState(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.d = parcelable == c ? null : parcelable;
    }
}
