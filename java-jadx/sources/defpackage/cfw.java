package defpackage;

import android.os.Process;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cfw implements cgg {
    private static boolean b;
    public final col a;
    private final col c;
    private final int d;

    public cfw(col colVar) {
        bpe bpeVar = bpe.t;
        this.c = colVar;
        this.d = Math.max(5, 10);
        this.a = bpeVar;
    }

    @Override // defpackage.cgg
    public final void a() {
        synchronized (cfw.class) {
            if (!b) {
                Runnable runnable = new Runnable() { // from class: cfu
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (((Boolean) cfw.this.a.a()).booleanValue()) {
                            Process.killProcess(Process.myPid());
                            System.exit(0);
                        }
                    }
                };
                long j = this.d;
                TimeUnit timeUnit = TimeUnit.MINUTES;
                dai daiVar = (dai) this.c.a();
                aoj.e(daiVar.schedule(new cfv(runnable, daiVar, j, timeUnit), j, timeUnit));
                b = true;
            }
        }
    }
}
