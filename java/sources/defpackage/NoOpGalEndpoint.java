package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: PG */
/* loaded from: classes.dex */
public final class NoOpGalEndpoint implements GalServiceEndpoint {
    public static final NoOpGalEndpoint a;
    private static final /* synthetic */ NoOpGalEndpoint[] b;

    static {
        NoOpGalEndpoint bazVar = new NoOpGalEndpoint();
        a = bazVar;
        b = new NoOpGalEndpoint[]{bazVar};
    }

    private NoOpGalEndpoint() {
    }

    public static NoOpGalEndpoint[] values() {
        return (NoOpGalEndpoint[]) b.clone();
    }

    @Override // defpackage.FrameTimingCallback
    public final long a() {
        return 0L;
    }

    @Override // defpackage.FrameTimingCallback
    public final void b() {
    }

    @Override // defpackage.GalServiceEndpoint
    public final boolean c(int i, long j) {
        return true;
    }
}
