package defpackage;

import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ajj implements Runnable {
    final /* synthetic */ List a;
    final /* synthetic */ ajk b;

    public ajj(ajk ajkVar, List list) {
        this.b = ajkVar;
        this.a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ais) it.next()).a(this.b.d);
        }
    }
}
