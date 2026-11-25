package defpackage;

import j$.util.function.BiFunction;
import j$.util.function.BinaryOperator;
import j$.util.function.Function;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class cox implements BinaryOperator {
    private final /* synthetic */ int d;
    public static final /* synthetic */ cox c = new cox(2);
    public static final /* synthetic */ cox b = new cox(1);
    public static final /* synthetic */ cox a = new cox(0);

    private /* synthetic */ cox(int i) {
        this.d = i;
    }

    @Override // j$.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.d) {
            case 0:
                cqr cqrVar = (cqr) obj;
                Iterator it = ((cqr) obj2).a.iterator();
                while (it.hasNext()) {
                    cqrVar.a((crv) it.next());
                }
                return cqrVar;
            case 1:
                cqc cqcVar = (cqc) obj;
                cqc cqcVar2 = (cqc) obj2;
                cqcVar.b(cqcVar2.a, cqcVar2.b);
                return cqcVar;
            default:
                cqu cquVar = (cqu) obj;
                cquVar.i((cqu) obj2);
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
