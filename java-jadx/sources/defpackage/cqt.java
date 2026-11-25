package defpackage;

import java.io.Serializable;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cqt extends cow implements Serializable {
    public static final cqt a = new cqt(cqh.p());
    public static final cqt b = new cqt(cqh.q(crv.a));
    private final transient cqh c;

    public cqt(cqh cqhVar) {
        this.c = cqhVar;
    }

    public static cqr a() {
        return new cqr();
    }

    @Override // defpackage.crx
    public final /* bridge */ /* synthetic */ Set b() {
        return this.c.isEmpty() ? csf.a : new csg(this.c, crv.a());
    }

    Object writeReplace() {
        return new cqs(this.c);
    }
}
