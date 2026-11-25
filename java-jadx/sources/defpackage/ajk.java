package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ajk {
    protected final Context a;
    public final Object b = new Object();
    public final Set c = new LinkedHashSet();
    public Object d;
    protected final amh e;

    static {
        agr.b("ConstraintTracker");
    }

    public ajk(Context context, amh amhVar) {
        this.a = context.getApplicationContext();
        this.e = amhVar;
    }

    public abstract Object b();

    public abstract void d();

    public abstract void e();

    public final void f(ais aisVar) {
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
            this.e.c.execute(new ajj(this, new ArrayList(this.c)));
        }
    }
}
