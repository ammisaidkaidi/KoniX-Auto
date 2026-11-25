package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class BackStackStateParcelable implements Parcelable {
    public static final Parcelable.Creator CREATOR = new MediaDescriptionCompatCreator(4);
    final String a;
    final String b;
    final boolean c;
    final int d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final boolean i;
    final Bundle j;
    final boolean k;
    final int l;
    Bundle m;

    public BackStackStateParcelable(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readInt() != 0;
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        this.h = parcel.readInt() != 0;
        this.i = parcel.readInt() != 0;
        this.j = parcel.readBundle();
        this.k = parcel.readInt() != 0;
        this.m = parcel.readBundle();
        this.l = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        StaggeredGridLayoutParams.append("FragmentState{");
        StaggeredGridLayoutParams.append(this.a);
        StaggeredGridLayoutParams.append(" (");
        StaggeredGridLayoutParams.append(this.b);
        StaggeredGridLayoutParams.append(")}:");
        if (this.c) {
            StaggeredGridLayoutParams.append(" fromLayout");
        }
        if (this.e != 0) {
            StaggeredGridLayoutParams.append(" id=0x");
            StaggeredGridLayoutParams.append(Integer.toHexString(this.e));
        }
        String str = this.f;
        if (str != null && !str.isEmpty()) {
            StaggeredGridLayoutParams.append(" tag=");
            StaggeredGridLayoutParams.append(this.f);
        }
        if (this.g) {
            StaggeredGridLayoutParams.append(" retainInstance");
        }
        if (this.h) {
            StaggeredGridLayoutParams.append(" removing");
        }
        if (this.i) {
            StaggeredGridLayoutParams.append(" detached");
        }
        if (this.k) {
            StaggeredGridLayoutParams.append(" hidden");
        }
        return StaggeredGridLayoutParams.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h ? 1 : 0);
        parcel.writeInt(this.i ? 1 : 0);
        parcel.writeBundle(this.j);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeBundle(this.m);
        parcel.writeInt(this.l);
    }

    public BackStackStateParcelable(AndroidxFragment brVar) {
        this.a = brVar.getClass().getName();
        this.b = brVar.m;
        this.c = brVar.v;
        this.d = brVar.E;
        this.e = brVar.F;
        this.f = brVar.G;
        this.g = brVar.J;
        this.h = brVar.t;
        this.i = brVar.I;
        this.j = brVar.n;
        this.k = brVar.H;
        this.l = brVar.X.ordinal();
    }
}
