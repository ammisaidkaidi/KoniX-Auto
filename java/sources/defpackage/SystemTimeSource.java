package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemTimeSource implements TimeSource {
    public static final SystemTimeSource a;
    private static final /* synthetic */ SystemTimeSource[] b;

    static {
        SystemTimeSource cxyVar = new SystemTimeSource();
        a = cxyVar;
        b = new SystemTimeSource[]{cxyVar};
    }

    private SystemTimeSource() {
    }

    public static SystemTimeSource[] values() {
        return (SystemTimeSource[]) b.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "TimeSource.system()";
    }
}
