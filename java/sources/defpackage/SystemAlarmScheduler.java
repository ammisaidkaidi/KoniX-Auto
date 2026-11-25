package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemAlarmScheduler implements WorkExecutionListener {
    public static final String a = WorkLogger.b("SystemAlarmDispatcher");
    final Context b;
    public final WorkExecutionTimer c;
    public final WorkProcessor d;
    public final WorkManagerImpl e;
    final SystemAlarmExecutionListener f;
    final List g;
    Intent h;
    public SimpleCompletionCallback i;
    public final WorkTaskExecutorHolder j;
    private final Handler k;

    public SystemAlarmScheduler(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        this.f = new SystemAlarmExecutionListener(applicationContext);
        this.c = new WorkExecutionTimer();
        WorkManagerImpl c = WorkManagerImpl.c(context);
        this.e = c;
        WorkProcessor ahfVar = c.f;
        this.d = ahfVar;
        this.j = c.i;
        ahfVar.b(this);
        this.g = new ArrayList();
        this.h = null;
        this.k = new Handler(Looper.getMainLooper());
    }

    @Override // defpackage.WorkExecutionListener
    public final void a(String str, boolean z) {
        d(new SystemAlarmCompletionRunnable(this, SystemAlarmExecutionListener.d(this.b, str, z), 0));
    }

    public final void b() {
        if (this.k.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    public final void c() {
        WorkLogger.a().d(new Throwable[0]);
        this.d.c(this);
        WorkExecutionTimer aluVar = this.c;
        if (!aluVar.a.isShutdown()) {
            aluVar.a.shutdownNow();
        }
        this.i = null;
    }

    final void d(Runnable runnable) {
        this.k.post(runnable);
    }

    public final void e() {
        b();
        PowerManager.WakeLock a2 = WorkWakeLocks.a(this.b, "ProcessCommand");
        try {
            a2.acquire();
            this.e.i.a(new SystemAlarmDispatcher(this));
        } finally {
            a2.release();
        }
    }

    public final void f(Intent intent, int i) {
        WorkLogger a2 = WorkLogger.a();
        String.format("Adding command %s (%s)", intent, Integer.valueOf(NavInstructionTypeEnum));
        a2.d(new Throwable[0]);
        b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            WorkLogger.a();
            WorkLogger.g(a, "Unknown command. Ignoring", new Throwable[0]);
            return;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            b();
            synchronized (this.g) {
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    if ("ACTION_CONSTRAINTS_CHANGED".equals(((Intent) it.next()).getAction())) {
                        return;
                    }
                }
            }
        }
        intent.putExtra("KEY_START_ID", i);
        synchronized (this.g) {
            boolean z = !this.g.isEmpty();
            this.g.add(intent);
            if (!z) {
                e();
            }
        }
    }
}
