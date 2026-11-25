package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CollectionBasisVerifierFlagsImpl implements CollectionBasisVerifierFlags {
    public static final PhenotypeCombinedFlags a;
    public static final PhenotypeCombinedFlags b;
    public static final PhenotypeCombinedFlags c;
    public static final PhenotypeCombinedFlags d;
    public static final PhenotypeCombinedFlags e;
    public static final PhenotypeCombinedFlags f;

    static {
        CombinedFlagsFactory d2 = new CombinedFlagsFactory("com.google.android.libraries.consentverifier").d();
        a = d2.b("CollectionBasisVerifierFeatures__enable_all_features", true);
        b = d2.b("CollectionBasisVerifierFeatures__enable_logging", false);
        c = d2.b("CollectionBasisVerifierFeatures__enable_using_log_verifier_result", false);
        d = d2.a("CollectionBasisVerifierFeatures__failure_log_cooldown_period_ms", 86400000L);
        e = d2.a("CollectionBasisVerifierFeatures__max_stack_trace_size", 1000L);
        f = d2.a("CollectionBasisVerifierFeatures__min_app_version_code_to_log", -1L);
        d2.b("CollectionBasisVerifierFeatures__use_packed_proto", true);
    }

    @Override // defpackage.CollectionBasisVerifierFlags
    public final long a() {
        return ((Long) d.a()).longValue();
    }

    @Override // defpackage.CollectionBasisVerifierFlags
    public final long b() {
        return ((Long) e.a()).longValue();
    }

    @Override // defpackage.CollectionBasisVerifierFlags
    public final long c() {
        return ((Long) f.a()).longValue();
    }

    @Override // defpackage.CollectionBasisVerifierFlags
    public final boolean d() {
        return ((Boolean) a.a()).booleanValue();
    }

    @Override // defpackage.CollectionBasisVerifierFlags
    public final boolean e() {
        return ((Boolean) b.a()).booleanValue();
    }

    @Override // defpackage.CollectionBasisVerifierFlags
    public final boolean f() {
        return ((Boolean) c.a()).booleanValue();
    }
}
