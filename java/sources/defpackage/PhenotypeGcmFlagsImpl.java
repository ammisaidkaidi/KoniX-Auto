package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeGcmFlagsImpl implements PhenotypeGcmFlags {
    public static final PhenotypeFlagBase a;

    static {
        PhenotypeFlagsFactory c = new PhenotypeFlagsFactory().c("gms:phenotype:");
        c.f("disable_gcm_interaction", false);
        c.f("enable_gcm_push", false);
        a = c.f("enable_sync_after", true);
    }

    @Override // defpackage.PhenotypeGcmFlags
    public final boolean a() {
        return ((Boolean) a.c()).booleanValue();
    }
}
