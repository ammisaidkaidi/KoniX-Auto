package defpackage;

import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aer {
    public final String a;
    public final boolean b;
    public final List c;
    public final List d;

    public aer(String str, List list) {
        this(str, false, list, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aer)) {
            return false;
        }
        aer aerVar = (aer) obj;
        if (this.b == aerVar.b && this.c.equals(aerVar.c) && this.d.equals(aerVar.d)) {
            return this.a.startsWith("index_") ? aerVar.a.startsWith("index_") : this.a.equals(aerVar.a);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.a.startsWith("index_") ? -1184239155 : this.a.hashCode()) * 31) + (this.b ? 1 : 0)) * 31) + this.c.hashCode()) * 31) + this.d.hashCode();
    }

    public final String toString() {
        return "Index{name='" + this.a + "', unique=" + this.b + ", columns=" + this.c + ", orders=" + this.d + '}';
    }

    public aer(String str, boolean z, List list, List list2) {
        this.a = str;
        this.b = z;
        this.c = list;
        this.d = (list2 == null || list2.size() == 0) ? Collections.nCopies(list.size(), "ASC") : list2;
    }
}
