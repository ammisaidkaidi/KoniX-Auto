package defpackage;

import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MigratingProtoSerializer extends DataStoreSerializer {
    private final MessageLite a;

    public MigratingProtoSerializer(MessageLite derVar) {
        this.a = derVar;
    }

    @Override // defpackage.DataStoreSerializer
    public final ListenableFuture a(final IOException iOException, DataStoreStorageHolder cjeVar) {
        if (!(iOException.getCause() instanceof InvalidProtocolBufferException)) {
            return ProjectionIntentHelper.i(iOException);
        }
        ListenableFuture j = ProjectionIntentHelper.j(this.a);
        FileDataStore cjfVar = cjeVar.a;
        return CombinedFutureTask.e(TransformFuture.p(j, FutureFunctionWrappers.b(new FileDataStoreBackupFn(cjfVar, 0)), cjfVar.c), IOException.class, new AsyncFunctionInterface() { // from class: cjt
            @Override // defpackage.AsyncFunctionInterface
            public final ListenableFuture a(Object obj) {
                throw iOException;
            }
        }, czj.a);
    }
}
