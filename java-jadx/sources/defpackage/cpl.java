package defpackage;

import java.io.Serializable;
import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cpl extends crt implements Serializable {
    private static final long serialVersionUID = 0;
    final Comparator a;

    public cpl(Comparator comparator) {
        comparator.getClass();
        this.a = comparator;
    }

    @Override // defpackage.crt, java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.a.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof cpl) {
            return this.a.equals(((cpl) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
