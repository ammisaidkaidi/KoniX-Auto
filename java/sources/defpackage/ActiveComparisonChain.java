package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ActiveComparisonChain extends GuavaComparisonChain {
    @Override // defpackage.GuavaComparisonChain
    public final int a() {
        return 0;
    }

    @Override // defpackage.GuavaComparisonChain
    public final GuavaComparisonChain b(Comparable comparable, Comparable comparable2) {
        int compareTo = comparable.compareTo(comparable2);
        return compareTo < 0 ? cpo.c : compareTo > 0 ? cpo.d : cpo.b;
    }
}
