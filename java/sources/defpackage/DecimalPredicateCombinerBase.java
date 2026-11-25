package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
abstract class DecimalPredicateCombinerBase implements Serializable, ad {
    private static final long serialVersionUID = 1;
    protected final DecimalPredicate a;
    protected final DecimalPredicate b;

    protected DecimalPredicateCombinerBase(DecimalPredicate adVar, DecimalPredicate adVar2) {
        this.a = adVar;
        this.b = adVar2;
    }
}
