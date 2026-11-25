package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class csm extends cot {
    final Iterator a;
    final /* synthetic */ csn b;

    public csm(csn csnVar) {
        this.b = csnVar;
        this.a = csnVar.a.iterator();
    }

    @Override // defpackage.cot
    protected final Object a() {
        while (this.a.hasNext()) {
            Object next = this.a.next();
            if (!this.b.b.contains(next)) {
                return next;
            }
        }
        b();
        return null;
    }
}
