package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MultisetElementIterator extends AbstractListIteratorBase {
    final Iterator a;
    final /* synthetic */ MultisetElementSet b;

    public MultisetElementIterator(MultisetElementSet cslVar) {
        this.b = cslVar;
        this.a = cslVar.a.iterator();
    }

    @Override // defpackage.AbstractListIteratorBase
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
