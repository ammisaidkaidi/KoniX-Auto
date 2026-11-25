package defpackage;

import android.net.Uri;
import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FileDataStoreStateFn implements FutureSupplier {
    public final /* synthetic */ FileDataStore a;
    private final /* synthetic */ int b;

    public /* synthetic */ ciy(FileDataStore cjfVar, int i) {
        this.b = i;
        this.a = cjfVar;
    }

    @Override // defpackage.FutureSupplier
    public final ListenableFuture a() {
        switch (this.b) {
            case 0:
                FileDataStore cjfVar = this.a;
                try {
                    return ProjectionIntentHelper.j(cjfVar.b((Uri) ProjectionIntentHelper.o(cjfVar.b)));
                } catch (IOException e) {
                    return ((ProtoFlagValueMessage instanceof MobStoreFileNotFoundException) || (e.getCause() instanceof MobStoreFileNotFoundException)) ? ProjectionIntentHelper.i(ProtoFlagValueMessage) : TransformFuture.p(cjfVar.e.a(e, new DataStoreStorageHolder(cjfVar)), FutureFunctionWrappers.b(new FileDataStoreBackupFn(cjfVar, 3)), cjfVar.c);
                }
            default:
                FileDataStore cjfVar2 = this.a;
                return ProjectionIntentHelper.k(TransformFuture.p(cjfVar2.b, FutureFunctionWrappers.b(new FileDataStoreBackupFn(cjfVar2, 2)), cjfVar2.c));
        }
    }
}
