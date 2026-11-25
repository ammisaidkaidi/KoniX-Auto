package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class crs extends crt implements Serializable {
    public static final crs a = new crs();
    private static final long serialVersionUID = 0;

    private crs() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // defpackage.crt
    public final crt a() {
        return csh.a;
    }

    @Override // defpackage.crt, java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
