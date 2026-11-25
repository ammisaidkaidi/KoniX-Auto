package defpackage;

import android.app.Activity;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bue implements Executor, buz {
    private final bvh a;
    private Runnable b;
    private boolean c;
    private boolean d;

    public bue(bvh bvhVar) {
        this.a = bvhVar;
    }

    private final void b(Runnable runnable) {
        if (this.d) {
            return;
        }
        this.d = true;
        runnable.run();
    }

    @Override // defpackage.buz
    public final void a(Activity activity) {
        this.a.b(this);
        synchronized (this) {
            Runnable runnable = this.b;
            if (runnable != null) {
                b(runnable);
                this.b = null;
            } else {
                this.c = true;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this) {
            if (!this.c) {
                bvi bviVar = this.a.a.a;
                int i = bvi.c;
                if (bviVar.b.get() <= 0) {
                    this.b = runnable;
                }
            }
            b(runnable);
        }
    }
}
