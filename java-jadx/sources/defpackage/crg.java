package defpackage;

import java.io.Serializable;
import java.util.Comparator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class crg implements Serializable {
    private static final long serialVersionUID = 0;
    final Comparator a;
    final Object[] b;

    public crg(Comparator comparator, Object[] objArr) {
        this.a = comparator;
        this.b = objArr;
    }

    Object readResolve() {
        crf crfVar = new crf(this.a);
        Object[] objArr = this.b;
        crfVar.b(objArr, objArr.length);
        return crfVar.f();
    }
}
