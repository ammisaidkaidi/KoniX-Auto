package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class boi extends bnt implements Comparable {
    public static final Parcelable.Creator CREATOR = new bmt(8);
    public final int a;
    public final bon[] b;
    public final String[] c;
    public final Map d = new TreeMap();

    public boi(int i, bon[] bonVarArr, String[] strArr) {
        this.a = i;
        this.b = bonVarArr;
        for (bon bonVar : bonVarArr) {
            this.d.put(bonVar.a, bonVar);
        }
        this.c = strArr;
        if (strArr != null) {
            Arrays.sort(strArr);
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.a - ((boi) obj).a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof boi) {
            boi boiVar = (boi) obj;
            if (this.a == boiVar.a && qs.b(this.d, boiVar.d) && Arrays.equals(this.c, boiVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.a);
        sb.append(", (");
        Iterator it = this.d.values().iterator();
        while (it.hasNext()) {
            sb.append((bon) it.next());
            sb.append(", ");
        }
        sb.append("), (");
        String[] strArr = this.c;
        if (strArr != null) {
            for (String str : strArr) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append("))");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = io.g(parcel);
        io.k(parcel, 2, this.a);
        io.v(parcel, 3, this.b, i);
        io.t(parcel, 4, this.c);
        io.h(parcel, g);
    }
}
