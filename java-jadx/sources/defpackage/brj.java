package defpackage;

import java.util.ArrayDeque;
import java.util.Queue;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class brj {
    private final Object a = new Object();
    private Queue b;
    private boolean c;

    public final void a(bri briVar) {
        synchronized (this.a) {
            if (this.b == null) {
                this.b = new ArrayDeque();
            }
            this.b.add(briVar);
        }
    }

    public final void b(brh brhVar) {
        bri briVar;
        synchronized (this.a) {
            if (this.b != null && !this.c) {
                this.c = true;
                while (true) {
                    synchronized (this.a) {
                        briVar = (bri) this.b.poll();
                        if (briVar == null) {
                            this.c = false;
                            return;
                        }
                    }
                    briVar.a(brhVar);
                }
            }
        }
    }
}
