package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DropDownPreferenceSavedState extends PreferenceBaseSavedState {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(5);
    public final int a;

    public DropDownPreferenceSavedState(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a);
    }

    public DropDownPreferenceSavedState(Parcelable parcelable, int i) {
        super(parcelable);
        this.a = i;
    }
}
