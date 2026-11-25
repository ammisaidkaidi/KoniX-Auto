package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeAccountDataStore {
    public static final PhenotypeConcurrentMap a = PhenotypeConcurrentMap.a();
    private static final MigratingProtoSerializer b = new MigratingProtoSerializer(cff.b);

    public static ProtoDataStoreImpl a(PhenotypeContext cdzVar) {
        ProtoDataStoreConfigBuilder a2 = ProtoDataStoreConfig.a();
        MobStorePathBuilder a3 = FileKeyFactory.a(cdzVar.h);
        a3.b();
        a3.c("all_accounts.pb");
        a2.e(a3.a());
        a2.d(cff.b);
        a2.c(ProtoLiteMessageBase);
        a2.b();
        return PhenotypeFlagFactoryRegistry.b(cdzVar.h, cdzVar.d()).a(a2.a());
    }
}
