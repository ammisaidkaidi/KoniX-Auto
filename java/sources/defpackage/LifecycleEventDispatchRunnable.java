package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LifecycleEventDispatchRunnable implements Runnable {
    final LifecycleEvent a;
    private boolean b = false;
    private final LifecycleRegistry c;

    public LifecycleEventDispatchRunnable(LifecycleRegistry znVar, LifecycleEvent zlVar) {
        this.c = znVar;
        this.a = zlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.b) {
            return;
        }
        this.c.c(this.a);
        this.b = true;
    }
}
