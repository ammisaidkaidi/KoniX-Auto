package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dlm implements dll {
    public static final cgj a;
    public static final cgj b;
    public static final cgj c;
    public static final cgj d;
    public static final cgj e;
    public static final cgj f;

    static {
        cgo d2 = new cgo("com.google.android.libraries.consentverifier").d();
        a = d2.b("CollectionBasisVerifierFeatures__enable_all_features", true);
        b = d2.b("CollectionBasisVerifierFeatures__enable_logging", false);
        c = d2.b("CollectionBasisVerifierFeatures__enable_using_log_verifier_result", false);
        d = d2.a("CollectionBasisVerifierFeatures__failure_log_cooldown_period_ms", 86400000L);
        e = d2.a("CollectionBasisVerifierFeatures__max_stack_trace_size", 1000L);
        f = d2.a("CollectionBasisVerifierFeatures__min_app_version_code_to_log", -1L);
        d2.b("CollectionBasisVerifierFeatures__use_packed_proto", true);
    }

    @Override // defpackage.dll
    public final long a() {
        return ((Long) d.a()).longValue();
    }

    @Override // defpackage.dll
    public final long b() {
        return ((Long) e.a()).longValue();
    }

    @Override // defpackage.dll
    public final long c() {
        return ((Long) f.a()).longValue();
    }

    @Override // defpackage.dll
    public final boolean d() {
        return ((Boolean) a.a()).booleanValue();
    }

    @Override // defpackage.dll
    public final boolean e() {
        return ((Boolean) b.a()).booleanValue();
    }

    @Override // defpackage.dll
    public final boolean f() {
        return ((Boolean) c.a()).booleanValue();
    }
}
