package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class amh {
    public final alh a;
    public final Handler b = new Handler(Looper.getMainLooper());
    public final Executor c = new amg(this);

    public amh(Executor executor) {
        this.a = new alh(executor);
    }

    public final void a(Runnable runnable) {
        this.a.execute(runnable);
    }
}
