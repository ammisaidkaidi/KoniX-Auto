package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PG */
/* loaded from: classes.dex */
public final class baz implements clk {
    public static final baz a;
    private static final /* synthetic */ baz[] b;

    static {
        baz bazVar = new baz();
        a = bazVar;
        b = new baz[]{bazVar};
    }

    private baz() {
    }

    public static baz[] values() {
        return (baz[]) b.clone();
    }

    @Override // defpackage.clw
    public final long a() {
        return 0L;
    }

    @Override // defpackage.clw
    public final void b() {
    }

    @Override // defpackage.clk
    public final boolean c(int i, long j) {
        return true;
    }
}
