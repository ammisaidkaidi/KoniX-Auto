package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class csh extends crt implements Serializable {
    static final csh a = new csh();
    private static final long serialVersionUID = 0;

    private csh() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // defpackage.crt
    public final crt a() {
        return crs.a;
    }

    @Override // defpackage.crt, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
