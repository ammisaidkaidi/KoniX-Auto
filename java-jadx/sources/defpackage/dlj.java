package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dlj implements dli {
    public static final cei a;
    public static final cei b;

    static {
        ceg b2 = new ceg(cdw.a("com.google.android.gms.auth_account")).b();
        b2.h("getTokenRefactor__account_data_service_sample_percentage");
        b2.f("getTokenRefactor__account_data_service_tokenAPI_usable", true);
        b2.e("getTokenRefactor__account_manager_timeout_seconds", 20L);
        b2.e("getTokenRefactor__android_id_shift", 0L);
        b2.f("getTokenRefactor__authenticator_logic_improved", false);
        try {
            a = b2.g("getTokenRefactor__blocked_packages", (dgp) ddk.p(dgp.b, new byte[]{10, 19, 99, 111, 109, 46, 97, 110, 100, 114, 111, 105, 100, 46, 118, 101, 110, 100, 105, 110, 103, 10, 32, 99, 111, 109, 46, 103, 111, 111, 103, 108, 101, 46, 97, 110, 100, 114, 111, 105, 100, 46, 97, 112, 112, 115, 46, 109, 101, 101, 116, 105, 110, 103, 115, 10, 33, 99, 111, 109, 46, 103, 111, 111, 103, 108, 101, 46, 97, 110, 100, 114, 111, 105, 100, 46, 97, 112, 112, 115, 46, 109, 101, 115, 115, 97, 103, 105, 110, 103}), bpu.c);
            b2.f("getTokenRefactor__chimera_get_token_evolved", true);
            b2.e("getTokenRefactor__clear_token_timeout_seconds", 20L);
            b2.e("getTokenRefactor__default_task_timeout_seconds", 20L);
            b2.f("getTokenRefactor__gaul_accounts_api_evolved", false);
            b = b2.f("getTokenRefactor__gaul_token_api_evolved", false);
            b2.e("getTokenRefactor__get_token_timeout_seconds", 120L);
            b2.f("getTokenRefactor__gms_account_authenticator_evolved", true);
            b2.h("getTokenRefactor__gms_account_authenticator_sample_percentage");
        } catch (ddu e) {
            throw new AssertionError("Could not parse proto flag \"getTokenRefactor__blocked_packages\"");
        }
    }

    @Override // defpackage.dli
    public final dgp a() {
        return (dgp) a.c();
    }

    @Override // defpackage.dli
    public final boolean b() {
        return ((Boolean) b.c()).booleanValue();
    }
}
