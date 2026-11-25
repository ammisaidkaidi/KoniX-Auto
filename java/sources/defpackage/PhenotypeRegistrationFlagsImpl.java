package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeRegistrationFlagsImpl implements PhenotypeRegistrationFlags {
    public static final PhenotypeFlagBase a;
    public static final PhenotypeFlagBase b;
    public static final PhenotypeFlagBase c;
    public static final PhenotypeFlagBase d;

    static {
        PhenotypeFlagsFactory b2 = new PhenotypeFlagsFactory().b();
        a = b2.f("Registration__baseline_cl_in_registration_common", false);
        b = b2.f("Registration__catch_declarative_registration_exceptions", true);
        b2.f("Registration__enable_baseline_cl", true);
        c = b2.f("Registration__enable_delete_runtime_properties", true);
        d = b2.f("Registration__enable_heterodyne_info_in_manual", false);
        b2.f("Registration__enable_registration_info_tracking", true);
        b2.f("Registration__remove_registration_on_downgrades", true);
        b2.f("Registration__suppress_partial_registration_error", true);
    }

    @Override // defpackage.PhenotypeRegistrationFlags
    public final boolean a() {
        return ((Boolean) a.c()).booleanValue();
    }

    @Override // defpackage.PhenotypeRegistrationFlags
    public final boolean b() {
        return ((Boolean) b.c()).booleanValue();
    }

    @Override // defpackage.PhenotypeRegistrationFlags
    public final boolean c() {
        return ((Boolean) c.c()).booleanValue();
    }

    @Override // defpackage.PhenotypeRegistrationFlags
    public final boolean d() {
        return ((Boolean) d.c()).booleanValue();
    }
}
