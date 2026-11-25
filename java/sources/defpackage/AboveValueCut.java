package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AboveValueCut extends RangeCut {
    public static final AboveValueCut a = new AboveValueCut();
    private static final long serialVersionUID = 0;

    private AboveValueCut() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // defpackage.RangeCut
    /* renamed from: a */
    public final int compareTo(RangeCut cpsVar) {
        return cpsVar == this ? 0 : 1;
    }

    @Override // defpackage.RangeCut, java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((RangeCut) obj);
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "+∞";
    }
}
