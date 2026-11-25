package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class EditTextPreferenceSavedState extends PreferenceBaseSavedState {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(2);
    public String a;

    public EditTextPreferenceSavedState(Parcel parcel) {
        super(parcel);
        this.a = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a);
    }

    public EditTextPreferenceSavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
