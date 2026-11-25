package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SerialTaskExecutorRunnable implements Runnable {
    final SerialTaskExecutor_alh a;
    final Runnable b;

    public SerialTaskExecutorRunnable(SerialTaskExecutor_alh alhVar, Runnable runnable) {
        this.a = alhVar;
        this.b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.b.run();
        } finally {
            this.a.a();
        }
    }
}
