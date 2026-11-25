package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MultisetEntryIterator extends AbstractListIteratorBase {
    final Iterator a;
    final /* synthetic */ MultisetEntrySet b;

    public MultisetEntryIterator(MultisetEntrySet csnVar) {
        this.b = csnVar;
        this.a = csnVar.a.iterator();
    }

    @Override // defpackage.AbstractListIteratorBase
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
