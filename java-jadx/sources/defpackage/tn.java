package defpackage;

import java.util.ArrayDeque;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class tn {
    public final ArrayDeque a;
    private final Runnable b;

    public tn() {
        this(null);
    }

    public final void a() {
        Iterator descendingIterator = this.a.descendingIterator();
        while (descendingIterator.hasNext()) {
            tl tlVar = (tl) descendingIterator.next();
            if (tlVar.a) {
                cr crVar = tlVar.c;
                crVar.Z(true);
                if (crVar.e.a) {
                    crVar.U();
                    return;
                } else {
                    crVar.d.a();
                    return;
                }
            }
        }
        this.b.run();
    }

    public tn(Runnable runnable) {
        this.a = new ArrayDeque();
        this.b = runnable;
    }
}
