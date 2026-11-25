package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dmk implements dmj {
    public static final cei a;
    public static final cei b;
    public static final cei c;
    public static final cei d;
    public static final cei e;
    public static final cei f;
    public static final cei g;
    public static final cei h;
    public static final cei i;
    public static final cei j;
    public static final cei k;
    public static final cei l;
    public static final cei m;
    public static final cei n;
    public static final cei o;
    public static final cei p;
    public static final cei q;
    public static final cei r;

    static {
        ceg a2 = new ceg().c("gms:phenotype:").a();
        a2.e("adaptive_window_start_seconds", 14400L);
        a = a2.e("Sync__brotli_compression_level", 3L);
        b = a2.e("Sync__brotli_window_size", 22L);
        c = a2.f("Sync__cleanup_developer_db", false);
        d = a2.e("connection_timeout_millis", 60000L);
        e = a2.f("Sync__detect_flag_corruption6", false);
        a2.f("enable_adaptive_poller", true);
        f = a2.f("Sync__enable_device_based_sync4", true);
        a2.f("enable_schedule_on_register_delta", true);
        a2.f("enable_task_reachability", false);
        try {
            g = a2.g("Sync__garbage_collection_fetch_reasons", (dgo) ddk.p(dgo.b, new byte[0]), bpu.h);
            h = a2.f("Sync__guard_against_same_tokens_tag", true);
            i = a2.f("Sync__include_client_type", true);
            a2.e("interval_seconds", 14400L);
            j = a2.f("Sync__log_http_error_code", true);
            a2.f("Sync__mobdog_special_fetch_reason", true);
            a2.f("Sync__prefer_unmetered", true);
            k = a2.e("Sync__read_timeout_millis", 60000L);
            a2.e("Sync__rebroadcast_min_interval_seconds", -1L);
            l = a2.f("Sync__remove_old_config_packages", false);
            m = a2.f("Sync__remove_request_config_tag", false);
            n = a2.f("Sync__send_brotli", false);
            o = a2.f("Sync__send_registration_info3", false);
            p = a2.f("Sync__stop_sync_on_pseudonymous_api_error", true);
            a2.f("Sync__sync_on_checkin", false);
            try {
                a2.g("Sync__sync_on_delta_blacklist", (dgp) ddk.p(dgp.b, new byte[0]), bpu.i);
                a2.f("Sync__sync_on_flag_corruption", true);
                try {
                    a2.g("Sync__sync_on_nonsync_params_delta_blacklist", (dgp) ddk.p(dgp.b, new byte[]{10, 39, 99, 111, 109, 46, 103, 111, 111, 103, 108, 101, 46, 97, 110, 100, 114, 111, 105, 100, 46, 103, 111, 111, 103, 108, 101, 113, 117, 105, 99, 107, 115, 101, 97, 114, 99, 104, 98, 111, 120}), bpu.i);
                    a2.i("sync_on_params_delta_blacklist", "com.google.android.gms.phenotype,com.google.android.contacts,com.google.android.apps.links#com.google.android.apps.cerebra.links,com.google.android.apps.links#com.google.android.apps.cerebra.links.dogfood,com.google.android.gms.people");
                    try {
                        q = a2.g("Sync__unregister_config_packages", (dgp) ddk.p(dgp.b, new byte[0]), bpu.i);
                        r = a2.f("Sync__update_config_hash", true);
                        a2.f("Sync__use_gms_network_engine2", false);
                        a2.f("use_http_url_connection", true);
                    } catch (ddu e2) {
                        throw new AssertionError("Could not parse proto flag \"Sync__unregister_config_packages\"");
                    }
                } catch (ddu e3) {
                    throw new AssertionError("Could not parse proto flag \"Sync__sync_on_nonsync_params_delta_blacklist\"");
                }
            } catch (ddu e4) {
                throw new AssertionError("Could not parse proto flag \"Sync__sync_on_delta_blacklist\"");
            }
        } catch (ddu e5) {
            throw new AssertionError("Could not parse proto flag \"Sync__garbage_collection_fetch_reasons\"");
        }
    }

    @Override // defpackage.dmj
    public final long a() {
        return ((Long) d.c()).longValue();
    }

    @Override // defpackage.dmj
    public final long b() {
        return ((Long) k.c()).longValue();
    }

    @Override // defpackage.dmj
    public final dgo c() {
        return (dgo) g.c();
    }

    @Override // defpackage.dmj
    public final dgp d() {
        return (dgp) q.c();
    }

    @Override // defpackage.dmj
    public final boolean e() {
        return ((Boolean) c.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean f() {
        return ((Boolean) e.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean g() {
        return ((Boolean) f.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean h() {
        return ((Boolean) h.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean i() {
        return ((Boolean) i.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean j() {
        return ((Boolean) j.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean k() {
        return ((Boolean) l.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean l() {
        return ((Boolean) m.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean m() {
        return ((Boolean) o.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean n() {
        return ((Boolean) p.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final boolean o() {
        return ((Boolean) r.c()).booleanValue();
    }

    @Override // defpackage.dmj
    public final void p() {
        ((Long) a.c()).longValue();
    }

    @Override // defpackage.dmj
    public final void q() {
        ((Long) b.c()).longValue();
    }

    @Override // defpackage.dmj
    public final void r() {
        ((Boolean) n.c()).booleanValue();
    }
}
