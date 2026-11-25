package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeFlagComparableValue implements Comparable {
    public final int a;
    public final PhenotypeFlagTypedValue[] b;
    public final String[] c;
    public final Map d = new TreeMap();

    public PhenotypeFlagComparableValue(int i, PhenotypeFlagTypedValue[] bpbVarArr, String[] strArr) {
        this.a = i;
        this.b = bpbVarArr;
        for (PhenotypeFlagTypedValue bpbVar : bpbVarArr) {
            this.d.put(bpbVar.b, bpbVar);
        }
        this.c = strArr;
        if (strArr != null) {
            Arrays.sort(strArr);
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.a - ((PhenotypeFlagComparableValue) obj).a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof PhenotypeFlagComparableValue) {
            PhenotypeFlagComparableValue boyVar = (PhenotypeFlagComparableValue) obj;
            if (this.a == boyVar.a && ItemTouchHelperCallbackBase.n(this.d, boyVar.d) && Arrays.equals(this.c, boyVar.c)) {
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
            StaggeredGridLayoutParams.append((PhenotypeFlagTypedValue) it.next());
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
}
