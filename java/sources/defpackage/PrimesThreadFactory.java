package defpackage;

import android.os.Process;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PrimesThreadFactory implements ThreadFactory {
    public final int a;
    private final AtomicInteger b = new AtomicInteger(1);
    private final String c = "Primes";

    public PrimesThreadFactory(int i) {
        this.a = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: bug
            @Override // java.lang.Runnable
            public final void run() {
                PrimesThreadFactory buhVar = PrimesThreadFactory.this;
                Runnable runnable3 = runnable;
                int i = buhVar.a;
                if (NavInstructionTypeEnum != 0) {
                    Process.setThreadPriority(NavInstructionTypeEnum);
                }
                runnable3.run();
            }
        };
        String str = this.c;
        int andIncrement = this.b.getAndIncrement();
        StringBuilder sb = new StringBuilder(str.length() + 12);
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append("-");
        StaggeredGridLayoutParams.append(andIncrement);
        Thread thread = new Thread(runnable2, StaggeredGridLayoutParams.toString());
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        return thread;
    }
}
