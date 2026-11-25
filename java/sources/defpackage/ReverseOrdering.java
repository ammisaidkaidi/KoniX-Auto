package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ReverseOrdering extends GuavaOrdering implements Serializable {
    public static final ReverseOrdering a = new ReverseOrdering();
    private static final long serialVersionUID = 0;

    private ReverseOrdering() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // defpackage.GuavaOrdering
    public final GuavaOrdering a() {
        return csh.a;
    }

    @Override // defpackage.GuavaOrdering, java.util.Comparator
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
