package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class InactiveComparisonChain extends GuavaComparisonChain {
    final int a;

    public InactiveComparisonChain(int i) {
        this.a = i;
    }

    @Override // defpackage.GuavaComparisonChain
    public final int a() {
        return this.a;
    }

    @Override // defpackage.GuavaComparisonChain
    public final GuavaComparisonChain b(Comparable comparable, Comparable comparable2) {
        return this;
    }
}
