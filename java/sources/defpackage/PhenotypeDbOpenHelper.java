package defpackage;

import android.util.Base64;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeDbOpenHelper {
    public final String a;
    public final byte[] b;
    public final String c;
    public final PhenotypeFlagComparableValue[] d;
    public final Map e = new TreeMap();
    public final boolean f;
    public final long g;

    public PhenotypeDbOpenHelper(String str, String str2, PhenotypeFlagComparableValue[] boyVarArr, boolean z, byte[] bArr, long j) {
        this.a = str;
        this.c = str2;
        this.d = boyVarArr;
        this.f = z;
        this.b = bArr;
        this.g = j;
        for (PhenotypeFlagComparableValue boyVar : boyVarArr) {
            this.e.put(Integer.valueOf(boyVar.a), boyVar);
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PhenotypeDbOpenHelper) {
            PhenotypeDbOpenHelper bozVar = (PhenotypeDbOpenHelper) obj;
            if (ItemTouchHelperCallbackBase.n(this.a, bozVar.a) && ItemTouchHelperCallbackBase.n(this.c, bozVar.c) && this.e.equals(bozVar.e) && this.f == bozVar.f && Arrays.equals(this.b, bozVar.b) && this.g == bozVar.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.c, this.e, Boolean.valueOf(this.f), this.b, Long.valueOf(this.g)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Configurations('");
        StaggeredGridLayoutParams.append(this.a);
        StaggeredGridLayoutParams.append("', '");
        StaggeredGridLayoutParams.append(this.c);
        StaggeredGridLayoutParams.append("', (");
        Iterator it = this.e.values().iterator();
        while (it.hasNext()) {
            StaggeredGridLayoutParams.append((PhenotypeFlagComparableValue) it.next());
            StaggeredGridLayoutParams.append(", ");
        }
        StaggeredGridLayoutParams.append("), ");
        StaggeredGridLayoutParams.append(this.f);
        StaggeredGridLayoutParams.append(", ");
        byte[] bArr = this.b;
        StaggeredGridLayoutParams.append(bArr == null ? "null" : Base64.encodeToString(bArr, 3));
        StaggeredGridLayoutParams.append(", ");
        StaggeredGridLayoutParams.append(this.g);
        StaggeredGridLayoutParams.append(')');
        return StaggeredGridLayoutParams.toString();
    }
}
