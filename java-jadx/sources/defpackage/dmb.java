package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dmb implements dma {
    public static final cei a;
    public static final cei b;
    public static final cei c;
    public static final cei d;
    public static final cei e;
    public static final cei f;
    public static final cei g;

    static {
        ceg a2 = new ceg().c("gms:phenotype:").a();
        a2.i("clear_reset_blacklist", "");
        a2.i("configurator:auth_token_service", "oauth2:https://www.googleapis.com/auth/experimentsandconfigs");
        a2.i("configurator:service_url", "https://www.googleapis.com/experimentsandconfigs/v1/getExperimentsAndConfigs");
        a = a2.f("debug_allow_http", false);
        b = a2.f("debug_clear_heterodyne_tag", false);
        a2.f("PhenotypeFeature__enable_broadcast_logging", false);
        a2.f("PhenotypeFeature__enable_committed_version_logging", true);
        a2.f("enableDebugService", false);
        c = a2.f("enable_flag_deltas", true);
        d = a2.f("enable_verbose_syncer_logging", false);
        a2.e("gcm_subscription_smear_ms", 172800000L);
        a2.e("interval_flex_seconds", 1800L);
        a2.e("phenotype_api_wait_ms", 2000L);
        a2.e("PhenotypeFeature__process_stable_write_timeout_milliseconds", 3000L);
        a2.e("retry_after_max_seconds", 86400L);
        a2.e("retry_after_min_seconds", 60L);
        e = a2.f("PhenotypeFeature__return_server_token_when_overrides_present", true);
        a2.e("sync_retry_delay_seconds", 3600L);
        f = a2.f("PhenotypeFeature__trace_module_operations", false);
        g = a2.e("vacuum_change_count_mod", 1000L);
        try {
            a2.g("whitelisted_apps_for_flag_overrides", (dgp) ddk.p(dgp.b, new byte[]{10, 29, 99, 111, 109, 46, 103, 111, 111, 103, 108, 101, 46, 97, 110, 100, 114, 111, 105, 100, 46, 112, 108, 97, 121, 46, 103, 97, 109, 101, 115}), bpu.g);
            a2.f("PhenotypeFeature__write_process_stable_snapshot", false);
        } catch (ddu e2) {
            throw new AssertionError("Could not parse proto flag \"whitelisted_apps_for_flag_overrides\"");
        }
    }

    @Override // defpackage.dma
    public final long a() {
        return ((Long) g.c()).longValue();
    }

    @Override // defpackage.dma
    public final boolean b() {
        return ((Boolean) a.c()).booleanValue();
    }

    @Override // defpackage.dma
    public final boolean c() {
        return ((Boolean) b.c()).booleanValue();
    }

    @Override // defpackage.dma
    public final boolean d() {
        return ((Boolean) c.c()).booleanValue();
    }

    @Override // defpackage.dma
    public final boolean e() {
        return ((Boolean) d.c()).booleanValue();
    }

    @Override // defpackage.dma
    public final boolean f() {
        return ((Boolean) e.c()).booleanValue();
    }

    @Override // defpackage.dma
    public final boolean g() {
        return ((Boolean) f.c()).booleanValue();
    }
}
