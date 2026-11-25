package defpackage;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ConfigPackageVersion implements Comparable, Parcelable {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(20);
    public final String a;
    public final long b;
    public final int c;
    public final String d;

    public ConfigPackageVersion(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readLong();
        this.c = parcel.readInt();
        this.d = parcel.readString();
    }

    public ConfigPackageVersion(String str, long j, int i) {
        this.a = str;
        this.b = j;
        this.c = i;
        this.d = "";
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.a.compareTo(((ConfigPackageVersion) obj).a);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ConfigPackageVersion) {
            return this.a.equals(((ConfigPackageVersion) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeLong(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
    }
}
