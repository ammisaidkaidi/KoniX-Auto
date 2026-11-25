package defpackage;

import java.util.concurrent.Future;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FutureListenerRunnable_czy implements Runnable {
    ListenableFuture a;
    Future b;

    public FutureListenerRunnable_czy(ListenableFuture dagVar, Future future) {
        this.a = dagVar;
        this.b = future;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ProjectionIntentHelper.q(this.a, this.b);
        this.a = null;
        this.b = null;
    }
}
