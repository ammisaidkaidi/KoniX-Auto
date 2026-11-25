package defpackage;

import j$.util.Objects;
import j$.util.function.Predicate;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class asn implements Predicate {
    private final /* synthetic */ int d;
    public static final /* synthetic */ asn c = new asn(3);
    public static final /* synthetic */ asn b = new asn(2);
    public static final /* synthetic */ asn a = new asn(0);

    public /* synthetic */ asn(int i) {
        this.d = i;
    }

    @Override // j$.util.function.Predicate
    public final /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.d) {
        }
        return Predicate.CC.$default$and(this, predicate);
    }

    @Override // j$.util.function.Predicate
    public final /* synthetic */ Predicate negate() {
        switch (this.d) {
        }
        return Predicate.CC.$default$negate(this);
    }

    @Override // j$.util.function.Predicate
    public final /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.d) {
        }
        return Predicate.CC.$default$or(this, predicate);
    }

    @Override // j$.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.d) {
            case 0:
                amo amoVar = (amo) obj;
                int i = amoVar.a;
                int i2 = amoVar.b;
                return true;
            case 1:
                throw null;
            case 2:
                return Objects.nonNull(obj);
            default:
                Integer num = (Integer) obj;
                return num.intValue() >= 2400 && num.intValue() < 6000;
        }
    }
}
