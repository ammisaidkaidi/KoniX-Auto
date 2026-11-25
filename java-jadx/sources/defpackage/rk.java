package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class rk extends yv {
    public static final Parcelable.Creator CREATOR = new sr(1);
    public Parcelable a;

    public rk(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.a = parcel.readParcelable(classLoader == null ? ra.class.getClassLoader() : classLoader);
    }

    @Override // defpackage.yv, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.a, 0);
    }

    public rk(Parcelable parcelable) {
        super(parcelable);
    }
}
