package defpackage;

import androidx.work.Worker;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ListenableWorkerStartRunnable implements Runnable {
    final /* synthetic */ Worker a;

    public ListenableWorkerStartRunnable(Worker worker) {
        this.a = worker;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.a.f.e(this.a.h());
        } catch (Throwable th) {
            this.a.f.f(ActivityResultDispatchRunnable);
        }
    }
}
