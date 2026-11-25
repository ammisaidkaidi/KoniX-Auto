package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cqf implements Serializable {
    private static final long serialVersionUID = 0;
    final Object[] a;

    public cqf(Object[] objArr) {
        this.a = objArr;
    }

    Object readResolve() {
        return cqh.o(this.a);
    }
}
