package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class dap implements Runnable {
    final /* synthetic */ Runnable a;

    public dap(Runnable runnable) {
        this.a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.run();
    }

    public final String toString() {
        return this.a.toString();
    }
}
