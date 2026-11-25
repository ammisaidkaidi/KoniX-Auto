package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApiAvailabilityVersionInfo extends SafeParcelableBase {
    public static final Parcelable.Creator CREATOR = new GmsSafeParcelableCreatorSwitch(17);
    public final String a;

    @Deprecated
    public final int b;
    private final long c;

    public ApiAvailabilityVersionInfo(String str, int i, long j) {
        this.a = str;
        this.b = i;
        this.c = j;
    }

    public ApiAvailabilityVersionInfo(String str, long j) {
        this.a = str;
        this.c = j;
        this.b = -1;
    }

    public final long a() {
        long j = this.c;
        return j == -1 ? this.b : j;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ApiAvailabilityVersionInfo) {
            ApiAvailabilityVersionInfo bjbVar = (ApiAvailabilityVersionInfo) obj;
            String str = this.a;
            if (((str != null && str.equals(bjbVar.a)) || (this.a == null && bjbVar.a == null)) && a() == bjbVar.a()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, Long.valueOf(a())});
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        ViewCompatApi28Statics.d("name", this.a, arrayList);
        ViewCompatApi28Statics.d("version", Long.valueOf(a()), arrayList);
        return ViewCompatApi28Statics.c(arrayList, this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.s(parcel, 1, this.a);
        VersionedParcelReader.k(parcel, 2, this.b);
        VersionedParcelReader.l(parcel, 3, a());
        VersionedParcelReader.h(parcel, g);
    }
}
