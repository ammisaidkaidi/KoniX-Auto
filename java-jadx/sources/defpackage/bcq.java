package defpackage;

import j$.util.DesugarArrays;
import j$.util.function.Predicate;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum bcq {
    NEVER_PROJECTED(-1),
    BACKGROUND(0),
    FOREGROUND(1);

    public final int d;

    bcq(int i) {
        this.d = i;
    }

    public static bcq a(final int i) {
        return (bcq) DesugarArrays.stream(values()).filter(new Predicate() { // from class: bcp
            @Override // j$.util.function.Predicate
            public final /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate.CC.$default$and(this, predicate);
            }

            @Override // j$.util.function.Predicate
            public final /* synthetic */ Predicate negate() {
                return Predicate.CC.$default$negate(this);
            }

            @Override // j$.util.function.Predicate
            public final /* synthetic */ Predicate or(Predicate predicate) {
                return Predicate.CC.$default$or(this, predicate);
            }

            @Override // j$.util.function.Predicate
            public final boolean test(Object obj) {
                int i2 = i;
                bcq bcqVar = bcq.NEVER_PROJECTED;
                return i2 == ((bcq) obj).d;
            }
        }).findFirst().orElse(NEVER_PROJECTED);
    }
}
