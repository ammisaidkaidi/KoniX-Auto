package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class OrDecimalPredicate extends DecimalPredicateCombinerBase {
    private static final long serialVersionUID = 1405488568664762222L;

    public OrDecimalPredicate(DecimalPredicate adVar, DecimalPredicate adVar2) {
        super(adVar, adVar2);
    }

    @Override // defpackage.DecimalPredicate
    public final boolean a(DecimalQuantityValue aeVar) {
        return this.a.a(aeVar) || this.b.a(aeVar);
    }

    public final String toString() {
        String obj = this.a.toString();
        String obj2 = this.b.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 4 + String.valueOf(obj2).length());
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append(" or ");
        StaggeredGridLayoutParams.append(obj2);
        return StaggeredGridLayoutParams.toString();
    }
}
