package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class GuavaComparisonChain {
    public static final GuavaComparisonChain b = new ActiveComparisonChain();
    public static final GuavaComparisonChain c = new InactiveComparisonChain(-1);
    public static final GuavaComparisonChain d = new InactiveComparisonChain(1);

    public abstract int a();

    public abstract GuavaComparisonChain b(Comparable comparable, Comparable comparable2);
}
