package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bid extends bnt {
    public static final Parcelable.Creator CREATOR = new acg(12);
    public final List a;

    public bid(List list) {
        this.a = Collections.unmodifiableList(list);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }

    public final String toString() {
        return "BatchedLogErrorParcelable[LogErrors: " + this.a + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.w(parcel, 1, this.a);
        io.h(parcel, g);
    }
}
