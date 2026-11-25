package defpackage;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PG */
/* loaded from: classes.dex */
final class amf implements Executor {
    public static final amf a;
    private static final /* synthetic */ amf[] b;

    static {
        amf amfVar = new amf();
        a = amfVar;
        b = new amf[]{amfVar};
    }

    private amf() {
    }

    public static amf[] values() {
        return (amf[]) b.clone();
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
