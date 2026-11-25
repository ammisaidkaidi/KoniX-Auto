package defpackage;

import android.os.Build;
import android.util.Log;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cvn extends cvd {
    public static final AtomicReference a = new AtomicReference();
    private static final AtomicLong b = new AtomicLong();
    private static final ConcurrentLinkedQueue c = new ConcurrentLinkedQueue();
    private volatile cuc d;

    public cvn(String str) {
        super(str);
        boolean z = false;
        boolean z2 = Build.FINGERPRINT != null ? "robolectric".equals(Build.FINGERPRINT) : true;
        boolean z3 = !"goldfish".equals(Build.HARDWARE) ? "ranchu".equals(Build.HARDWARE) : true;
        if ("eng".equals(Build.TYPE)) {
            z = true;
        } else if ("userdebug".equals(Build.TYPE)) {
            z = true;
        }
        if (z2 || z3) {
            this.d = new cve().a(a());
        } else {
            this.d = z ? new cvp(Level.OFF).a(a()) : null;
        }
    }

    public static void e() {
        while (true) {
            cvn cvnVar = (cvn) cvl.a.poll();
            if (cvnVar == null) {
                f();
                return;
            }
            cvnVar.d = ((cvf) a.get()).a(cvnVar.a());
        }
    }

    private static void f() {
        while (true) {
            cvm cvmVar = (cvm) c.poll();
            if (cvmVar == null) {
                return;
            }
            b.getAndDecrement();
            cuc cucVar = cvmVar.a;
            cub cubVar = cvmVar.b;
            if (cubVar.v() || cucVar.d(cubVar.l())) {
                cucVar.c(cubVar);
            }
        }
    }

    @Override // defpackage.cvd, defpackage.cuc
    public final void b(RuntimeException runtimeException, cub cubVar) {
        if (this.d != null) {
            this.d.b(runtimeException, cubVar);
        } else {
            Log.e("ProxyAndroidLoggerBackend", "Internal logging error before configuration", runtimeException);
        }
    }

    @Override // defpackage.cuc
    public final void c(cub cubVar) {
        if (this.d != null) {
            this.d.c(cubVar);
            return;
        }
        if (b.incrementAndGet() > 20) {
            c.poll();
            Log.w("ProxyAndroidLoggerBackend", "Too many Flogger logs received before configuration. Dropping old logs.");
        }
        c.offer(new cvm(this, cubVar));
        if (this.d != null) {
            f();
        }
    }

    @Override // defpackage.cuc
    public final boolean d(Level level) {
        if (this.d != null) {
            return this.d.d(level);
        }
        return true;
    }
}
