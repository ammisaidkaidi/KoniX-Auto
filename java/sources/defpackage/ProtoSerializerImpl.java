package defpackage;

import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoSerializerImpl extends DataStoreSerializer {
    public static final ProtoSerializerImpl a = new ProtoSerializerImpl();

    private ProtoSerializerImpl() {
    }

    @Override // defpackage.DataStoreSerializer
    public final ListenableFuture a(IOException iOException, DataStoreStorageHolder cjeVar) {
        return ProjectionIntentHelper.i(iOException);
    }
}
