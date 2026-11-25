package defpackage;

import j$.util.function.BiFunction;
import j$.util.function.BinaryOperator;
import j$.util.function.Function;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class DesugarEnumBinaryOperator implements BinaryOperator {
    private final /* synthetic */ int d;
    public static final /* synthetic */ DesugarEnumBinaryOperator c = new DesugarEnumBinaryOperator(2);
    public static final /* synthetic */ DesugarEnumBinaryOperator b = new DesugarEnumBinaryOperator(1);
    public static final /* synthetic */ DesugarEnumBinaryOperator a = new DesugarEnumBinaryOperator(0);

    private /* synthetic */ cox(int i) {
        this.d = i;
    }

    @Override // j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.d) {
            case 0:
                RangeSetBuilder cqrVar = (RangeSetBuilder) obj;
                Iterator it = ((RangeSetBuilder) obj2).a.iterator();
                while (it.hasNext()) {
                    cqrVar.a((GuavaRange) it.next());
                }
                return cqrVar;
            case 1:
                ImmutableListBuilder cqcVar = (ImmutableListBuilder) obj;
                ImmutableListBuilder cqcVar2 = (ImmutableListBuilder) obj2;
                cqcVar.b(cqcVar2.a, cqcVar2.b);
                return cqcVar;
            default:
                ImmutableSetBuilder cquVar = (ImmutableSetBuilder) obj;
                cquVar.i((ImmutableSetBuilder) obj2);
                return cquVar;
        }
    }

    @Override // j$.util.function.BiFunction
    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.d) {
        }
        return BiFunction.CC.$default$andThen(this, function);
    }
}
