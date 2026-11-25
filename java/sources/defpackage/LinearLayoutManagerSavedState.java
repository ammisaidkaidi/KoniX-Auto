package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LinearLayoutManagerSavedState implements Parcelable {
    public static final Parcelable.Creator CREATOR = new MediaDescriptionCompatCreator(18);
    public int a;
    public int b;
    public boolean c;

    public LinearLayoutManagerSavedState() {
    }

    public LinearLayoutManagerSavedState(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt() == 1;
    }

    public LinearLayoutManagerSavedState(LinearLayoutManagerSavedState pzVar) {
        this.a = pzVar.a;
        this.b = pzVar.b;
        this.c = pzVar.c;
    }

    public final void a() {
        this.a = -1;
    }

    public final boolean b() {
        return this.a >= 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c ? 1 : 0);
    }
}
