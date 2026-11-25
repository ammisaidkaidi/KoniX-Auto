package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bim extends bnt {
    public static final Parcelable.Creator CREATOR = new acg(13);
    public final String a;
    public final int b;
    public final int c;

    public bim(String str, int i, int i2) {
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Integer.valueOf(this.b), Integer.valueOf(this.c)});
    }

    public final String toString() {
        return "LogErrorParcelable[LogSourceName: " + this.a + ", ClearcutStatusCode: " + this.b + ", ErrorCount: " + this.c + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.s(parcel, 1, this.a);
        io.k(parcel, 2, this.b);
        io.k(parcel, 3, this.c);
        io.h(parcel, g);
    }
}
