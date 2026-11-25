package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cmt implements Runnable {
    public czb a;
    public Executor b;

    public cmt(czb czbVar, Executor executor) {
        czbVar.getClass();
        this.a = czbVar;
        executor.getClass();
        this.b = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a = null;
        this.b = null;
    }
}
