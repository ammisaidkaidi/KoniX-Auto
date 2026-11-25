package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cqc extends cpz {
    public cqc() {
        super(4);
    }

    @Override // defpackage.cpz
    public final /* synthetic */ void d(Object obj) {
        super.c(obj);
    }

    public final cqh f() {
        this.c = true;
        return cqh.l(this.a, this.b);
    }

    public final void g(Object obj) {
        super.c(obj);
    }

    public final void h(Iterable iterable) {
        super.e(iterable);
    }

    public final void i(Iterator it) {
        while (it.hasNext()) {
            super.c(it.next());
        }
    }

    public cqc(int i) {
        super(i);
    }
}
