package defpackage;

import android.os.Handler;
import android.util.Log;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class clv {
    public volatile clt e;
    public volatile clu f;
    public final clo g;
    private final Handler h;
    public final AtomicReference a = new AtomicReference();
    public final AtomicBoolean b = new AtomicBoolean(false);
    public final AtomicBoolean c = new AtomicBoolean();
    public final CountDownLatch d = new CountDownLatch(2);
    private final Runnable i = new clq(this);

    public clv(Handler handler, clo cloVar) {
        this.h = handler;
        this.g = cloVar;
    }

    public final void a(cls clsVar) {
        String.valueOf(clsVar.getName()).concat(" is stopping");
        if (c(cly.CONNECTION_TERMINATED)) {
            Log.w("AHU.GAL_RECEIVER", String.valueOf(clsVar.getName()).concat(" exiting without stop requested; stop triggered"));
        }
        this.d.countDown();
        if (this.d.getCount() == 0) {
            this.h.removeCallbacks(this.i);
            this.h.post(this.i);
        }
    }

    public final boolean b() {
        return (this.a.get() == null || this.b.get()) ? false : true;
    }

    public final boolean c(cly clyVar) {
        if (this.e == null || this.f == null) {
            Log.w("AHU.GAL_RECEIVER", "Asked to stop before started");
            return false;
        }
        if (!this.a.compareAndSet(null, clyVar)) {
            return false;
        }
        this.h.postDelayed(this.i, 2500L);
        if (cly.MD_BYEBYE.equals(clyVar)) {
            this.b.set(true);
            this.g.a(new clr(this, clyVar));
        } else {
            this.g.a(null);
        }
        return true;
    }
}
