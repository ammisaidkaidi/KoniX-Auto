package defpackage;

import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class wl extends wk {
    public int m;

    public wl(wt wtVar) {
        super(wtVar);
        this.l = wtVar instanceof wp ? 2 : 3;
    }

    @Override // defpackage.wk
    public final void c(int i) {
        if (this.i) {
            return;
        }
        this.i = true;
        this.f = i;
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            ((wi) it.next()).f();
        }
    }
}
