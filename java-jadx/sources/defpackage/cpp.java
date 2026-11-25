package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cpp extends cps {
    public static final cpp a = new cpp();
    private static final long serialVersionUID = 0;

    private cpp() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // defpackage.cps
    /* renamed from: a */
    public final int compareTo(cps cpsVar) {
        return cpsVar == this ? 0 : 1;
    }

    @Override // defpackage.cps, java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((cps) obj);
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "+∞";
    }
}
