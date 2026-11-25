package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AndDecimalPredicate extends DecimalPredicateCombinerBase {
    private static final long serialVersionUID = 7766999779862263523L;

    public AndDecimalPredicate(DecimalPredicate adVar, DecimalPredicate adVar2) {
        super(adVar, adVar2);
    }

    @Override // defpackage.DecimalPredicate
    public final boolean a(DecimalQuantityValue aeVar) {
        return this.a.a(aeVar) && this.b.a(aeVar);
    }

    public final String toString() {
        String obj = this.a.toString();
        String obj2 = this.b.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 5 + String.valueOf(obj2).length());
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append(" and ");
        StaggeredGridLayoutParams.append(obj2);
        return StaggeredGridLayoutParams.toString();
    }
}
