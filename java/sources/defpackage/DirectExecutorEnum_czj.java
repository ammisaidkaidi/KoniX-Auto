package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PG */
/* loaded from: classes.dex */
public final class DirectExecutorEnum_czj implements Executor {
    public static final DirectExecutorEnum_czj a;
    private static final /* synthetic */ DirectExecutorEnum_czj[] b;

    static {
        DirectExecutorEnum_czj czjVar = new DirectExecutorEnum_czj();
        a = czjVar;
        b = new DirectExecutorEnum_czj[]{czjVar};
    }

    private DirectExecutorEnum_czj() {
    }

    public static DirectExecutorEnum_czj[] values() {
        return (DirectExecutorEnum_czj[]) b.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
