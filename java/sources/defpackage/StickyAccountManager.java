package defpackage;

import android.os.Process;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StickyAccountManager implements PhenotypeAccountCallback {
    private static boolean b;
    public final StopwatchTicker a;
    private final StopwatchTicker c;
    private final int d;

    public StickyAccountManager(StopwatchTicker colVar) {
        ApplicationStatesRowMapper bpeVar = bpe.t;
        this.c = colVar;
        this.d = Math.max(5, 10);
        this.a = bpeVar;
    }

    @Override // defpackage.PhenotypeAccountCallback
    public final void a() {
        synchronized (StickyAccountManager.class) {
            if (!b) {
                Runnable runnable = new Runnable() { // from class: cfu
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (((Boolean) StickyAccountManager.this.a.a()).booleanValue()) {
                            Process.killProcess(Process.myPid());
                            System.exit(0);
                        }
                    }
                };
                long j = this.d;
                TimeUnit timeUnit = TimeUnit.MINUTES;
                ListeningScheduledExecutorService daiVar = (ListeningScheduledExecutorService) this.c.a();
                ListItemBase.e(daiVar.schedule(new ScheduledFlagTask(runnable, daiVar, j, timeUnit), j, timeUnit));
                b = true;
            }
        }
    }
}
