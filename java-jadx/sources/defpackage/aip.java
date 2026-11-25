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
public final class aip implements ahc {
    public static final String a = agr.b("SystemAlarmDispatcher");
    final Context b;
    public final alu c;
    public final ahf d;
    public final ahx e;
    final aig f;
    final List g;
    Intent h;
    public ain i;
    public final amh j;
    private final Handler k;

    public aip(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        this.f = new aig(applicationContext);
        this.c = new alu();
        ahx c = ahx.c(context);
        this.e = c;
        ahf ahfVar = c.f;
        this.d = ahfVar;
        this.j = c.i;
        ahfVar.b(this);
        this.g = new ArrayList();
        this.h = null;
        this.k = new Handler(Looper.getMainLooper());
    }

    @Override // defpackage.ahc
    public final void a(String str, boolean z) {
        d(new aim(this, aig.d(this.b, str, z), 0));
    }

    public final void b() {
        if (this.k.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    public final void c() {
        agr.a().d(new Throwable[0]);
        this.d.c(this);
        alu aluVar = this.c;
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
        PowerManager.WakeLock a2 = alk.a(this.b, "ProcessCommand");
        try {
            a2.acquire();
            this.e.i.a(new ail(this));
        } finally {
            a2.release();
        }
    }

    public final void f(Intent intent, int i) {
        agr a2 = agr.a();
        String.format("Adding command %s (%s)", intent, Integer.valueOf(i));
        a2.d(new Throwable[0]);
        b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            agr.a();
            agr.g(a, "Unknown command. Ignoring", new Throwable[0]);
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
