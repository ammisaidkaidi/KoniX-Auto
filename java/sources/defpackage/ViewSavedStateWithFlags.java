package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ViewSavedStateWithFlags extends ViewBaseSavedState {
    public static final Parcelable.Creator CREATOR = new BaseSavedStateCreator(0);
    public int a;
    public boolean b;

    public ViewSavedStateWithFlags(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.a = parcel.readInt();
        this.b = parcel.readInt() != 0;
    }

    @Override // defpackage.ViewBaseSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.a);
        parcel.writeInt(this.b ? 1 : 0);
    }

    public ViewSavedStateWithFlags(Parcelable parcelable) {
        super(parcelable);
    }
}
