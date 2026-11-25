package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkTaskExecutorHolder {
    public final SerialTaskExecutor_alh a;
    public final Handler b = new Handler(Looper.getMainLooper());
    public final Executor c = new WorkExecutorWrapper(this);

    public WorkTaskExecutorHolder(Executor executor) {
        this.a = new SerialTaskExecutor_alh(executor);
    }

    public final void a(Runnable runnable) {
        this.a.execute(runnable);
    }
}
