package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureListenerNode {
    static final FutureListenerNode a = new FutureListenerNode(null, null);
    final Runnable b;
    final Executor c;
    FutureListenerNode d;

    public FutureListenerNode(Runnable runnable, Executor executor) {
        this.b = runnable;
        this.c = executor;
    }
}
