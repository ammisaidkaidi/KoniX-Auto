package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;

/* compiled from: PG */
/* loaded from: classes.dex */
public class PreferenceBaseSavedState extends AbsSavedState {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(4);

    public PreferenceBaseSavedState(Parcel parcel) {
        super(parcel);
    }

    public PreferenceBaseSavedState(Parcelable parcelable) {
        super(parcelable);
    }
}
