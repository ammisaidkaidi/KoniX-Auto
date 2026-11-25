package defpackage;

import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkManagerInternalRunnable implements Runnable {
    private final WorkExecutionListener a;
    private final String b;
    private final ListenableFuture c;

    public WorkManagerInternalRunnable(WorkExecutionListener ahcVar, String str, ListenableFuture dagVar) {
        this.a = ahcVar;
        this.b = str;
        this.c = dagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            z = ((Boolean) this.c.get()).booleanValue();
        } catch (InterruptedException | ExecutionException e) {
            z = true;
        }
        this.a.a(this.b, z);
    }
}
