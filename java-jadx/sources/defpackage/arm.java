package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class arm implements Executor {
    public static final /* synthetic */ arm a = new arm(0);
    private final /* synthetic */ int b;

    public /* synthetic */ arm(int i) {
        this.b = i;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.b) {
            case 0:
                runnable.run();
                break;
            default:
                ((uh) uf.g().b).b.execute(runnable);
                break;
        }
    }
}
