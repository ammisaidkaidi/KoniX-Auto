package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ConstraintTrackerBase {
    protected final Context a;
    public final Object b = new Object();
    public final Set c = new LinkedHashSet();
    public Object d;
    protected final WorkTaskExecutorHolder e;

    static {
        WorkLogger.b("ConstraintTracker");
    }

    public ConstraintTrackerBase(Context context, WorkTaskExecutorHolder amhVar) {
        this.a = context.getApplicationContext();
        this.e = amhVar;
    }

    public abstract Object b();

    public abstract void d();

    public abstract void e();

    public final void f(WorkConstraintStateListener aisVar) {
        synchronized (this.b) {
            if (this.c.remove(aisVar) && this.c.isEmpty()) {
                e();
            }
        }
    }

    public final void g(Object obj) {
        synchronized (this.b) {
            Object obj2 = this.d;
            if (obj2 == obj || (obj2 != null && obj2.equals(obj))) {
                return;
            }
            this.d = obj;
            this.e.c.execute(new ConstraintTrackerNotifyRunnable(this, new ArrayList(this.c)));
        }
    }
}
