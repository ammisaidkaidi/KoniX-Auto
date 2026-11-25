package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SeekBarPreferenceSavedState extends PreferenceBaseSavedState {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(6);
    public int a;
    public int b;
    public int c;

    public SeekBarPreferenceSavedState(Parcel parcel) {
        super(parcel);
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
    }

    public SeekBarPreferenceSavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
