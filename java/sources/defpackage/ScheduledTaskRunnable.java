package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ScheduledTaskRunnable extends CombinedFutureBase implements Runnable {
    private final Runnable a;

    public ScheduledTaskRunnable(Runnable runnable) {
        runnable.getClass();
        this.a = runnable;
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final String a() {
        String obj = this.a.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 7);
        StaggeredGridLayoutParams.append("task=[");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.a.run();
        } catch (Throwable th) {
            l(ActivityResultDispatchRunnable);
            SharedSecretsStackGetter.b(ActivityResultDispatchRunnable);
            throw new RuntimeException(ActivityResultDispatchRunnable);
        }
    }
}
