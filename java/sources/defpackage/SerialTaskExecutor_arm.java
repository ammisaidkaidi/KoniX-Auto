package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class SerialTaskExecutor_arm implements Executor {
    public static final /* synthetic */ SerialTaskExecutor_arm a = new SerialTaskExecutor_arm(0);
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
                ((DefaultTaskExecutor) ArchTaskExecutorDelegate.g().b).b.execute(runnable);
                break;
        }
    }
}
