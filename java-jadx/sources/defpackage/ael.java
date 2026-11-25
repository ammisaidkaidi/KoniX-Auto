package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ael implements Executor {
    private final Executor a;
    private final ArrayDeque b = new ArrayDeque();
    private Runnable c;

    public ael(Executor executor) {
        this.a = executor;
    }

    final synchronized void a() {
        Runnable runnable = (Runnable) this.b.poll();
        this.c = runnable;
        if (runnable != null) {
            this.a.execute(runnable);
        }
    }

    @Override // java.util.concurrent.Executor
    public final synchronized void execute(Runnable runnable) {
        this.b.offer(new aek(this, runnable));
        if (this.c == null) {
            a();
        }
    }
}
