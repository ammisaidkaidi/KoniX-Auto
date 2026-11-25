package defpackage;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class btt implements Executor {
    public final dai a;
    private final ConcurrentLinkedQueue b = new ConcurrentLinkedQueue();
    private volatile boolean c = false;
    private final AtomicBoolean d = new AtomicBoolean();

    public btt(dai daiVar, bvh bvhVar) {
        this.a = daiVar;
        bue bueVar = new bue(bvhVar);
        bvhVar.a(bueVar);
        bueVar.execute(new Runnable() { // from class: btr
            @Override // java.lang.Runnable
            public final void run() {
                btt bttVar = btt.this;
                bttVar.a.d(new bts(bttVar, 0), 3000L, TimeUnit.MILLISECONDS);
            }
        });
    }

    private final void b() {
        while (true) {
            Runnable runnable = (Runnable) this.b.poll();
            if (runnable == null) {
                return;
            } else {
                this.a.execute(runnable);
            }
        }
    }

    public final void a() {
        this.c = true;
        b();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (this.c) {
            this.a.execute(runnable);
            return;
        }
        this.b.add(runnable);
        if (this.c) {
            b();
        } else {
            if (this.d.getAndSet(true)) {
                return;
            }
            this.a.d(new bts(this, 1), 7000L, TimeUnit.MILLISECONDS);
        }
    }
}
