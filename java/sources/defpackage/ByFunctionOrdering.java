package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ByFunctionOrdering extends GuavaOrdering implements Serializable {
    static final ByFunctionOrdering a = new ByFunctionOrdering();
    private static final long serialVersionUID = 0;

    private ByFunctionOrdering() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // defpackage.GuavaOrdering
    public final GuavaOrdering a() {
        return crs.a;
    }

    @Override // defpackage.GuavaOrdering, java.util.Comparator
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
