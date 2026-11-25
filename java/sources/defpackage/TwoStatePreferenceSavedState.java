package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TwoStatePreferenceSavedState extends PreferenceBaseSavedState {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(7);
    public boolean a;

    public TwoStatePreferenceSavedState(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt() == 1;
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a ? 1 : 0);
    }

    public TwoStatePreferenceSavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
