package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cpm extends cpo {
    @Override // defpackage.cpo
    public final int a() {
        return 0;
    }

    @Override // defpackage.cpo
    public final cpo b(Comparable comparable, Comparable comparable2) {
        int compareTo = comparable.compareTo(comparable2);
        return compareTo < 0 ? cpo.c : compareTo > 0 ? cpo.d : cpo.b;
    }
}
