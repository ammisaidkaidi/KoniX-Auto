package defpackage;

import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class uf extends hq {
    public static final Executor a = new arm(1);
    private static volatile uf c;
    public final hq b;
    private final hq d;

    private uf() {
        uh uhVar = new uh();
        this.d = uhVar;
        this.b = uhVar;
    }

    public static uf g() {
        if (c != null) {
            return c;
        }
        synchronized (uf.class) {
            if (c == null) {
                c = new uf();
            }
        }
        return c;
    }

    public final boolean h() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
