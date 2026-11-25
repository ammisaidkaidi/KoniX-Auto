package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeRegistrationParcel extends SafeParcelableBase implements Comparable {
    public static final Parcelable.Creator CREATOR = new ConnectionResultCreator(8);
    public final int a;
    public final PhenotypeFlagValueParcel[] b;
    public final String[] c;
    public final Map d = new TreeMap();

    public PhenotypeRegistrationParcel(int i, PhenotypeFlagValueParcel[] bonVarArr, String[] strArr) {
        this.a = i;
        this.b = bonVarArr;
        for (PhenotypeFlagValueParcel bonVar : bonVarArr) {
            this.d.put(bonVar.a, bonVar);
        }
        this.c = strArr;
        if (strArr != null) {
            Arrays.sort(strArr);
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.a - ((PhenotypeRegistrationParcel) obj).a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PhenotypeRegistrationParcel) {
            PhenotypeRegistrationParcel boiVar = (PhenotypeRegistrationParcel) obj;
            if (this.a == boiVar.a && AdapterDataObserver.b(this.d, boiVar.d) && Arrays.equals(this.c, boiVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        StaggeredGridLayoutParams.append(this.a);
        StaggeredGridLayoutParams.append(", (");
        Iterator it = this.d.values().iterator();
        while (it.hasNext()) {
            StaggeredGridLayoutParams.append((PhenotypeFlagValueParcel) it.next());
            StaggeredGridLayoutParams.append(", ");
        }
        StaggeredGridLayoutParams.append("), (");
        String[] strArr = this.c;
        if (strArr != null) {
            for (String str : strArr) {
                StaggeredGridLayoutParams.append(str);
                StaggeredGridLayoutParams.append(", ");
            }
        } else {
            StaggeredGridLayoutParams.append("null");
        }
        StaggeredGridLayoutParams.append("))");
        return StaggeredGridLayoutParams.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = VersionedParcelReader.g(parcel);
        VersionedParcelReader.k(parcel, 2, this.a);
        VersionedParcelReader.v(parcel, 3, this.b, i);
        VersionedParcelReader.t(parcel, 4, this.c);
        VersionedParcelReader.h(parcel, g);
    }
}
