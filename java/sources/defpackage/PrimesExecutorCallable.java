package defpackage;

import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class PrimesExecutorCallable implements Callable {
    public final /* synthetic */ PrimesExecutor a;
    private final /* synthetic */ int b;

    public /* synthetic */ bts(PrimesExecutor bttVar, int i) {
        this.b = i;
        this.a = bttVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.b) {
            case 0:
                this.a.a();
                break;
            default:
                this.a.a();
                break;
        }
        return null;
    }
}
