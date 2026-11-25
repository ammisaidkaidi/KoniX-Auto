package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class amg implements Executor {
    final /* synthetic */ amh a;

    public amg(amh amhVar) {
        this.a = amhVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.a.b.post(runnable);
    }
}
