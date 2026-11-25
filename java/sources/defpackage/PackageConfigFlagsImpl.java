package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PackageConfigFlagsImpl implements PackageConfigFlags {
    public static final PhenotypeFlagBase a;
    public static final PhenotypeFlagBase b;

    static {
        PhenotypeFlagsFactory b2 = new PhenotypeFlagsFactory().b();
        a = b2.f("UsePackageConfig__enable_auto_subpackage", true);
        b2.f("UsePackageConfig__enable_experiment_injection", true);
        b = b2.f("UsePackageConfig__enable_logging_config", true);
    }

    @Override // defpackage.PackageConfigFlags
    public final boolean a() {
        return ((Boolean) a.c()).booleanValue();
    }

    @Override // defpackage.PackageConfigFlags
    public final boolean b() {
        return ((Boolean) b.c()).booleanValue();
    }
}
