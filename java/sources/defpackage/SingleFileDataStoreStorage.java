package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SingleFileDataStoreStorage extends AbstractDataStoreStorage {
    public static final AbstractDataStoreStorage a = new SingleFileDataStoreStorage();

    private SingleFileDataStoreStorage() {
    }

    @Override // defpackage.AbstractDataStoreStorage
    public final /* bridge */ /* synthetic */ DataStoreStorage a(ProtoDataStoreConfig citVar, String str, Executor executor, MobStoreFileStorageRegistry chmVar) {
        return new FileDataStore(str, ProjectionIntentHelper.j(citVar.a), new ProtoSerializer(citVar.b, citVar.e ? ExtensionRegistryLite.b() : ExtensionRegistryLite.a()), executor, chmVar, citVar.c, citVar.f ? CloseScopeFactory.d() : CloseScopeFactory.c());
    }
}
