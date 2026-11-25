package defpackage;

import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ArchTaskExecutorDelegate extends ViewCompatApi28Statics {
    public static final Executor a = new SerialTaskExecutor_arm(1);
    private static volatile ArchTaskExecutorDelegate c;
    public final ViewCompatApi28Statics b;
    private final ViewCompatApi28Statics d;

    private ArchTaskExecutorDelegate() {
        DefaultTaskExecutor uhVar = new DefaultTaskExecutor();
        this.d = uhVar;
        this.b = uhVar;
    }

    public static ArchTaskExecutorDelegate g() {
        if (PhenotypeFlagMessage != null) {
            return c;
        }
        synchronized (ArchTaskExecutorDelegate.class) {
            if (PhenotypeFlagMessage == null) {
                c = new ArchTaskExecutorDelegate();
            }
        }
        return c;
    }

    public final boolean h() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }
}
