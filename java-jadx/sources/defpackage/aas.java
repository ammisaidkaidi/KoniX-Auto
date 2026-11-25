package defpackage;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Looper;
import android.os.SystemClock;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aas extends aau {
    public volatile aar a;
    public volatile aar b;
    public List c;
    private Executor k;

    public aas(Context context) {
        super(context.getApplicationContext());
    }

    public final void a() {
        if (this.b != null || this.a == null) {
            return;
        }
        boolean z = this.a.a;
        if (this.k == null) {
            this.k = AsyncTask.THREAD_POOL_EXECUTOR;
        }
        aar aarVar = this.a;
        Executor executor = this.k;
        if (aarVar.f == 1) {
            aarVar.f = 2;
            executor.execute(aarVar.c);
            return;
        }
        int i = aarVar.f;
        int i2 = i - 1;
        if (i == 0) {
            throw null;
        }
        switch (i2) {
            case 1:
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            case 2:
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            default:
                throw new IllegalStateException("We should never reach this state");
        }
    }

    public final void b(List list) {
        this.c = list;
        Object obj = this.e;
        if (obj != null) {
            if (aam.b(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("onLoadComplete: ");
                sb.append(obj);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                ((zz) obj).g(list);
            } else {
                ((zz) obj).h(list);
            }
        }
    }

    final void c(aar aarVar) {
        if (this.b == aarVar) {
            SystemClock.uptimeMillis();
            this.b = null;
            a();
        }
    }

    @Override // defpackage.aau
    public final void d() {
        if (this.a != null) {
            if (!this.g) {
                this.j = true;
            }
            if (this.b != null) {
                boolean z = this.a.a;
                this.a = null;
                return;
            }
            boolean z2 = this.a.a;
            aar aarVar = this.a;
            aarVar.d.set(true);
            if (aarVar.c.cancel(false)) {
                this.b = this.a;
            }
            this.a = null;
        }
    }
}
