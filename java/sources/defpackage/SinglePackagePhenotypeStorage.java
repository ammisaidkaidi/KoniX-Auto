package defpackage;

import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SinglePackagePhenotypeStorage implements PhenotypeDatabaseApi {
    private final GmsApiClientBase a;

    public SinglePackagePhenotypeStorage(GmsApiClientBase bkcVar) {
        this.a = bkcVar;
    }

    private static ListenableFuture f(TaskBase brhVar) {
        final SettableFuture e = SettableFuture.e();
        brhVar.f(czj.a, new TaskListenerInterface() { // from class: btm
            @Override // defpackage.TaskListenerInterface
            public final void a(TaskBase brhVar2) {
                SettableFuture dasVar = SettableFuture.this;
                if (((TaskImpl) brhVar2).d) {
                    dasVar.cancel(false);
                    return;
                }
                if (brhVar2.d()) {
                    dasVar.k(brhVar2.b());
                    return;
                }
                Exception a = brhVar2.a();
                if (SingleStringProtoMessage == null) {
                    throw new IllegalStateException();
                }
                dasVar.l(SingleStringProtoMessage);
            }
        });
        return CombinedFutureTask.e(e, GoogleApiExceptionBase.class, ciu.b, czj.a);
    }

    @Override // defpackage.PhenotypeDatabaseApi
    public final ListenableFuture a(String str) {
        str.getClass();
        return f(this.a.e(str));
    }

    @Override // defpackage.PhenotypeDatabaseApi
    public final ListenableFuture b() {
        GmsApiClientBase bkcVar = this.a;
        ExecutorParameterChecker a = ExecutorParameterCheckerHolder.a();
        a.a = new BiConsumerCallbackInterface() { // from class: bov
            @Override // defpackage.BiConsumerCallbackInterface
            public final void a(Object obj, Object obj2) {
                PhenotypeCallbacksStub bqiVar = new PhenotypeCallbacksStub((PreconditionsChecker) obj2);
                PhenotypeServiceProxy bqjVar = (PhenotypeServiceProxy) ((PhenotypeServiceClient) obj).w();
                Parcel a2 = bqjVar.a();
                ServiceBinderHelper.c(a2, bqiVar);
                a2.writeString("com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection");
                bqjVar.c(10, a2);
            }
        };
        return f(bkcVar.c(a.a()).g(czj.a, new VectorPathDataNode()));
    }

    @Override // defpackage.PhenotypeDatabaseApi
    public final ListenableFuture c(String str, String str2) {
        str.getClass();
        str2.getClass();
        return f(this.a.g(str, str2).g(czj.a, new VectorPathDataNode()));
    }

    @Override // defpackage.PhenotypeDatabaseApi
    public final ListenableFuture d(int i, String[] strArr, byte[] bArr) {
        return f(this.a.f("com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection", i, strArr, bArr));
    }

    @Override // defpackage.PhenotypeDatabaseApi
    public final ListenableFuture e() {
        return ProjectionIntentHelper.j(null);
    }
}
