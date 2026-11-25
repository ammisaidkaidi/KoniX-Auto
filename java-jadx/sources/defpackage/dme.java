package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dme implements dmd {
    public static final cei a;
    public static final cei b;
    public static final cei c;
    public static final cei d;

    static {
        ceg b2 = new ceg().b();
        a = b2.f("Registration__baseline_cl_in_registration_common", false);
        b = b2.f("Registration__catch_declarative_registration_exceptions", true);
        b2.f("Registration__enable_baseline_cl", true);
        c = b2.f("Registration__enable_delete_runtime_properties", true);
        d = b2.f("Registration__enable_heterodyne_info_in_manual", false);
        b2.f("Registration__enable_registration_info_tracking", true);
        b2.f("Registration__remove_registration_on_downgrades", true);
        b2.f("Registration__suppress_partial_registration_error", true);
    }

    @Override // defpackage.dmd
    public final boolean a() {
        return ((Boolean) a.c()).booleanValue();
    }

    @Override // defpackage.dmd
    public final boolean b() {
        return ((Boolean) b.c()).booleanValue();
    }

    @Override // defpackage.dmd
    public final boolean c() {
        return ((Boolean) c.c()).booleanValue();
    }

    @Override // defpackage.dmd
    public final boolean d() {
        return ((Boolean) d.c()).booleanValue();
    }
}
