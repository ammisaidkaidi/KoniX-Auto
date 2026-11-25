package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class boy implements Comparable {
    public final int a;
    public final bpb[] b;
    public final String[] c;
    public final Map d = new TreeMap();

    public boy(int i, bpb[] bpbVarArr, String[] strArr) {
        this.a = i;
        this.b = bpbVarArr;
        for (bpb bpbVar : bpbVarArr) {
            this.d.put(bpbVar.b, bpbVar);
        }
        this.c = strArr;
        if (strArr != null) {
            Arrays.sort(strArr);
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.a - ((boy) obj).a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof boy) {
            boy boyVar = (boy) obj;
            if (this.a == boyVar.a && qx.n(this.d, boyVar.d) && Arrays.equals(this.c, boyVar.c)) {
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
            sb.append((bpb) it.next());
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
}
