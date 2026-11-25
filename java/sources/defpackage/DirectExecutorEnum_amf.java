package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PG */
/* loaded from: classes.dex */
final class DirectExecutorEnum_amf implements Executor {
    public static final DirectExecutorEnum_amf a;
    private static final /* synthetic */ DirectExecutorEnum_amf[] b;

    static {
        DirectExecutorEnum_amf amfVar = new DirectExecutorEnum_amf();
        a = amfVar;
        b = new DirectExecutorEnum_amf[]{amfVar};
    }

    private DirectExecutorEnum_amf() {
    }

    public static DirectExecutorEnum_amf[] values() {
        return (DirectExecutorEnum_amf[]) b.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}
