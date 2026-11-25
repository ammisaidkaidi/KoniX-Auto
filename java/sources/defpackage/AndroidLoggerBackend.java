package defpackage;

import android.os.Build;
import android.util.Log;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AndroidLoggerBackend extends AbstractLoggerBackend {
    public static final AtomicReference a = new AtomicReference();
    private static final AtomicLong b = new AtomicLong();
    private static final ConcurrentLinkedQueue c = new ConcurrentLinkedQueue();
    private volatile LoggerBackend d;

    public AndroidLoggerBackend(String str) {
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
            this.d = new AndroidBackendFactory().a(a());
        } else {
            this.d = z ? new DefaultBackendFactory(Level.OFF).a(a()) : null;
        }
    }

    public static void e() {
        while (true) {
            AndroidLoggerBackend cvnVar = (AndroidLoggerBackend) PendingLogQueue.a.poll();
            if (cvnVar == null) {
                f();
                return;
            }
            cvnVar.d = ((LoggerBackendFactory) a.get()).a(cvnVar.a());
        }
    }

    private static void f() {
        while (true) {
            BackendLogRecordPair cvmVar = (BackendLogRecordPair) c.poll();
            if (cvmVar == null) {
                return;
            }
            b.getAndDecrement();
            LoggerBackend cucVar = cvmVar.a;
            FloggerLogRecord cubVar = cvmVar.b;
            if (cubVar.v() || cucVar.d(cubVar.l())) {
                cucVar.c(cubVar);
            }
        }
    }

    @Override // defpackage.AbstractLoggerBackend, defpackage.LoggerBackend
    public final void b(RuntimeException runtimeException, FloggerLogRecord cubVar) {
        if (this.d != null) {
            this.d.b(runtimeException, cubVar);
        } else {
            Log.e("ProxyAndroidLoggerBackend", "Internal logging error before configuration", runtimeException);
        }
    }

    @Override // defpackage.LoggerBackend
    public final void c(FloggerLogRecord cubVar) {
        if (this.d != null) {
            this.d.c(cubVar);
            return;
        }
        if (b.incrementAndGet() > 20) {
            c.poll();
            Log.w("ProxyAndroidLoggerBackend", "Too many Flogger logs received before configuration. Dropping old logs.");
        }
        c.offer(new BackendLogRecordPair(this, cubVar));
        if (this.d != null) {
            f();
        }
    }

    @Override // defpackage.LoggerBackend
    public final boolean d(Level level) {
        if (this.d != null) {
            return this.d.d(level);
        }
        return true;
    }
}
