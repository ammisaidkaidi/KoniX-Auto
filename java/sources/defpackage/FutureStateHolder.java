package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureStateHolder {
    static final FutureStateHolder a = new FutureStateHolder();
    final Runnable b;
    final Executor c;
    FutureStateHolder next;

    public FutureStateHolder() {
        this.b = null;
        this.c = null;
    }

    public FutureStateHolder(Runnable runnable, Executor executor) {
        this.b = runnable;
        this.c = executor;
    }
}
