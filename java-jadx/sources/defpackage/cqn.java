package defpackage;

import java.util.Iterator;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cqn extends cst {
    final Iterator a;
    Object b = null;
    Iterator c = crk.a;
    final /* synthetic */ cqq d;

    public cqn(cqq cqqVar) {
        this.d = cqqVar;
        this.a = cqqVar.b.entrySet().listIterator();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final boolean hasNext() {
        return this.c.hasNext() || this.a.hasNext();
    }

    @Override // java.util.Iterator, j$.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (!this.c.hasNext()) {
            Map.Entry entry = (Map.Entry) this.a.next();
            this.b = entry.getKey();
            this.c = ((cqa) entry.getValue()).listIterator();
        }
        Object obj = this.b;
        obj.getClass();
        return new cqb(obj, this.c.next());
    }
}
