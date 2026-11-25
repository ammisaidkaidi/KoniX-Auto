package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeApiServiceFlagsImpl implements PhenotypeApiServiceFlags {
    public static final PhenotypeFlagBase a;

    static {
        PhenotypeFlagsFactory b = new PhenotypeFlagsFactory().b();
        b.e("ApiService__thread_count", 2L);
        a = b.e("ApiService__timeout_to_close_db_in_seconds", 60L);
    }

    @Override // defpackage.PhenotypeApiServiceFlags
    public final long a() {
        return ((Long) a.c()).longValue();
    }
}
