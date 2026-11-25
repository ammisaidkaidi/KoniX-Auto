package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dmh implements dmg {
    public static final cei a;

    static {
        ceg c = new ceg().c("gms:phenotype:");
        c.f("disable_gcm_interaction", false);
        c.f("enable_gcm_push", false);
        a = c.f("enable_sync_after", true);
    }

    @Override // defpackage.dmg
    public final boolean a() {
        return ((Boolean) a.c()).booleanValue();
    }
}
