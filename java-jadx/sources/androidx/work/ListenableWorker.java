package androidx.work;

import android.content.Context;
import defpackage.agk;
import defpackage.dag;
import java.util.UUID;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ListenableWorker {
    public Context a;
    public WorkerParameters b;
    public volatile boolean c;
    public boolean d;
    public boolean e;

    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.a = context;
        this.b = workerParameters;
    }

    public final agk a() {
        return this.b.b;
    }

    public void aM() {
    }

    public final void aN() {
        this.c = true;
        aM();
    }

    public abstract dag b();

    public final UUID c() {
        return this.b.a;
    }

    public final Executor d() {
        return this.b.c;
    }

    public boolean g() {
        return this.e;
    }
}
