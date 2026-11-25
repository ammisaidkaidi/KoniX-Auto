package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PackageConfigFlagsProvider implements StopwatchTicker {
    public static final PackageConfigFlagsProvider a = new PackageConfigFlagsProvider();
    private final StopwatchTicker b = ex.i(ex.j(new PackageConfigFlagsImpl()));

    @Override // defpackage.StopwatchTicker
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final PackageConfigFlags a() {
        return (PackageConfigFlags) this.b.a();
    }
}
