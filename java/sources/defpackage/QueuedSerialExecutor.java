package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
final class QueuedSerialExecutor extends AtomicReference implements Executor, Runnable {
    FutureListenerDispatcher a;
    Executor b;
    Runnable c;
    Thread d;

    public QueuedSerialExecutor(Executor executor, FutureListenerDispatcher czqVar) {
        super(FutureTaskStateEnum.NOT_RUN);
        this.b = executor;
        this.a = czqVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (get() == FutureTaskStateEnum.CANCELLED) {
            this.b = null;
            this.a = null;
            return;
        }
        this.d = Thread.currentThread();
        try {
            FutureListenerDispatcher czqVar = this.a;
            czqVar.getClass();
            ExecutorTaskHolder czpVar = czqVar.a;
            if (czpVar.a == this.d) {
                this.a = null;
                ex.r(czpVar.b == null);
                czpVar.b = runnable;
                Executor executor = this.b;
                executor.getClass();
                czpVar.c = executor;
                this.b = null;
            } else {
                Executor executor2 = this.b;
                executor2.getClass();
                this.b = null;
                this.c = runnable;
                executor2.execute(this);
            }
        } finally {
            this.d = null;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Thread currentThread = Thread.currentThread();
        if (currentThread != this.d) {
            Runnable runnable = this.c;
            runnable.getClass();
            this.c = null;
            runnable.run();
            return;
        }
        ExecutorTaskHolder czpVar = new ExecutorTaskHolder();
        czpVar.a = currentThread;
        FutureListenerDispatcher czqVar = this.a;
        czqVar.getClass();
        czqVar.a = czpVar;
        this.a = null;
        try {
            Runnable runnable2 = this.c;
            runnable2.getClass();
            this.c = null;
            runnable2.run();
            while (true) {
                Runnable runnable3 = czpVar.b;
                boolean z = true;
                boolean z2 = runnable3 != null;
                Executor executor = czpVar.c;
                if (executor == null) {
                    z = false;
                }
                if (!z || !z2) {
                    return;
                }
                czpVar.b = null;
                czpVar.c = null;
                executor.execute(runnable3);
            }
        } finally {
            czpVar.a = null;
        }
    }
}
