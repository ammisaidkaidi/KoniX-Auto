package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GetExperimentTokensFlagsImpl implements GetExperimentTokensFlags {
    public static final PhenotypeFlagBase a = new PhenotypeFlagsFactory().b().e("GetExperimentTokens__token_cache_size_bytes", 10000);

    @Override // defpackage.GetExperimentTokensFlags
    public final long a() {
        return ((Long) a.c()).longValue();
    }
}
