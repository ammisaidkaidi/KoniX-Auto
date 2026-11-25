package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PG */
/* loaded from: classes.dex */
public final class cxy implements cxz {
    public static final cxy a;
    private static final /* synthetic */ cxy[] b;

    static {
        cxy cxyVar = new cxy();
        a = cxyVar;
        b = new cxy[]{cxyVar};
    }

    private cxy() {
    }

    public static cxy[] values() {
        return (cxy[]) b.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "TimeSource.system()";
    }
}
