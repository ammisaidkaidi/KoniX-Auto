package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.afz;
import defpackage.agb;
import defpackage.agc;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator CREATOR = new afz(0);
    public final agc a;

    public ParcelImpl(agc agcVar) {
        this.a = agcVar;
    }

    public ParcelImpl(Parcel parcel) {
        this.a = new agb(parcel).c();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        new agb(parcel).k(this.a);
    }
}
