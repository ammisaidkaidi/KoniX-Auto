package defpackage;

import java.util.concurrent.Future;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class czy implements Runnable {
    dag a;
    Future b;

    public czy(dag dagVar, Future future) {
        this.a = dagVar;
        this.b = future;
    }

    @Override // java.lang.Runnable
    public final void run() {
        hh.q(this.a, this.b);
        this.a = null;
        this.b = null;
    }
}
