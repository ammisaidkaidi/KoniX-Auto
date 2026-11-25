package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class alu {
    public final ScheduledExecutorService a;
    public final Map b;
    public final Map c;
    public final Object d;
    private final ThreadFactory e;

    static {
        agr.b("WorkTimer");
    }

    public alu() {
        alr alrVar = new alr();
        this.e = alrVar;
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new Object();
        this.a = Executors.newSingleThreadScheduledExecutor(alrVar);
    }

    public final void a(String str) {
        synchronized (this.d) {
            if (((alt) this.b.remove(str)) != null) {
                agr a = agr.a();
                String.format("Stopping timer for %s", str);
                a.d(new Throwable[0]);
                this.c.remove(str);
            }
        }
    }
}
