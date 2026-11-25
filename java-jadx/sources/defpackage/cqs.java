package defpackage;

import java.io.Serializable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cqs implements Serializable {
    private final cqh a;

    public cqs(cqh cqhVar) {
        this.a = cqhVar;
    }

    Object readResolve() {
        return this.a.isEmpty() ? cqt.a : fv.G(this.a, cqh.q(crv.a)) ? cqt.b : new cqt(this.a);
    }
}
