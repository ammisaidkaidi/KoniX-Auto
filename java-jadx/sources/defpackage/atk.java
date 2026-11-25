package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class atk {
    private static final AtomicBoolean a = new AtomicBoolean(false);
    private static final csz b = csz.g("com/google/android/apps/auto/aareceiver/FloggerConfig");

    public final synchronized void a() {
        if (a.getAndSet(true)) {
            ((csx) b.c().h("com/google/android/apps/auto/aareceiver/FloggerConfig", "configure", 23, "FloggerConfig.java")).n("Flogger already configured");
            return;
        }
        cvg cvgVar = new cvg();
        cvgVar.a = new cve(new cve("AAP.", new cve().b).a, true);
        if (!cvh.a.compareAndSet(false, true)) {
            throw new IllegalStateException("Logger backend configuration may only occur once.");
        }
        Object obj = cvgVar.a;
        if (obj == null) {
            obj = new cvp(Level.ALL);
        }
        if (!cvn.a.compareAndSet(null, obj)) {
            throw new IllegalStateException("Logger backends can only be configured once.");
        }
        cvn.e();
        cvo.a.b.set(cvu.a);
    }
}
