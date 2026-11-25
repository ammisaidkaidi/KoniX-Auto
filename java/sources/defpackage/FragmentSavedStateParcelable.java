package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentSavedStateParcelable implements Parcelable {
    public static final Parcelable.Creator CREATOR = new MediaDescriptionCompatCreator(3);
    ArrayList a;
    ArrayList b;
    ArrayList c;
    FragmentSavedState[] d;
    int e;
    String f;
    ArrayList g;
    ArrayList h;
    ArrayList i;
    ArrayList j;
    ArrayList k;

    public FragmentSavedStateParcelable() {
        this.f = null;
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = new ArrayList();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.a);
        parcel.writeStringList(this.b);
        parcel.writeStringList(this.c);
        parcel.writeTypedArray(this.d, i);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeStringList(this.g);
        parcel.writeTypedList(this.h);
        parcel.writeStringList(this.i);
        parcel.writeTypedList(this.j);
        parcel.writeTypedList(this.k);
    }

    public FragmentSavedStateParcelable(Parcel parcel) {
        this.f = null;
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.a = parcel.createTypedArrayList(BackStackStateParcelable.CREATOR);
        this.b = parcel.createStringArrayList();
        this.c = parcel.createStringArrayList();
        this.d = (FragmentSavedState[]) parcel.createTypedArray(FragmentSavedState.CREATOR);
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.createStringArrayList();
        this.h = parcel.createTypedArrayList(FragmentOpParcelable.CREATOR);
        this.i = parcel.createStringArrayList();
        this.j = parcel.createTypedArrayList(Bundle.CREATOR);
        this.k = parcel.createTypedArrayList(ParcelableFragmentState.CREATOR);
    }
}
