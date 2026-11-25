package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PG */
/* loaded from: classes.dex */
public final class czj implements Executor {
    public static final czj a;
    private static final /* synthetic */ czj[] b;

    static {
        czj czjVar = new czj();
        a = czjVar;
        b = new czj[]{czjVar};
    }

    private czj() {
    }

    public static czj[] values() {
        return (czj[]) b.clone();
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
