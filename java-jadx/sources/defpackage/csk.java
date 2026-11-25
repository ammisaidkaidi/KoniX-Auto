package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class csk extends cot {
    final Iterator a;
    final /* synthetic */ csl b;

    public csk(csl cslVar) {
        this.b = cslVar;
        this.a = cslVar.a.iterator();
    }

    @Override // defpackage.cot
    protected final Object a() {
        while (this.a.hasNext()) {
            Object next = this.a.next();
            if (this.b.b.contains(next)) {
                return next;
            }
        }
        b();
        return null;
    }
}
