package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dmn implements dmm {
    public static final cei a;
    public static final cei b;

    static {
        ceg b2 = new ceg().b();
        a = b2.f("UsePackageConfig__enable_auto_subpackage", true);
        b2.f("UsePackageConfig__enable_experiment_injection", true);
        b = b2.f("UsePackageConfig__enable_logging_config", true);
    }

    @Override // defpackage.dmm
    public final boolean a() {
        return ((Boolean) a.c()).booleanValue();
    }

    @Override // defpackage.dmm
    public final boolean b() {
        return ((Boolean) b.c()).booleanValue();
    }
}
