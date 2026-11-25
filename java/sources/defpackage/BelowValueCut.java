package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class BelowValueCut extends RangeCut {
    public static final BelowValueCut a = new BelowValueCut();
    private static final long serialVersionUID = 0;

    private BelowValueCut() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // defpackage.RangeCut
    /* renamed from: a */
    public final int compareTo(RangeCut cpsVar) {
        return cpsVar == this ? 0 : -1;
    }

    @Override // defpackage.RangeCut, java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((RangeCut) obj);
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "-∞";
    }
}
