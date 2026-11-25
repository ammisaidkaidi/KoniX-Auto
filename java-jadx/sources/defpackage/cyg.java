package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cyg {
    static final cyg a = new cyg();
    final Runnable b;
    final Executor c;
    cyg next;

    public cyg() {
        this.b = null;
        this.c = null;
    }

    public cyg(Runnable runnable, Executor executor) {
        this.b = runnable;
        this.c = executor;
    }
}
