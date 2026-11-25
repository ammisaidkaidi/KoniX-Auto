package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoDataStoreReader implements AsyncFunctionInterface {
    public final List a;
    public final Executor b;

    public ProtoDataStoreReader(List list, Executor executor) {
        this.a = list;
        this.b = executor;
    }

    @Override // defpackage.AsyncFunctionInterface
    public final /* bridge */ /* synthetic */ ListenableFuture a(Object obj) {
        final DataStoreInstanceRef cjoVar = (DataStoreInstanceRef) obj;
        int i = ((ReverseImmutableList) this.a).c;
        ArrayList arrayList = new ArrayList(NavInstructionTypeEnum);
        UnmodifiableListIterator it = ((ImmutableList) this.a).iterator();
        while (it.hasNext()) {
            arrayList.add(((DataStoreMigrations) it.next()).b());
        }
        final AsyncFunctionInterface b = FutureFunctionWrappers.b(new ProtoDataStoreInitializer(this, arrayList, i, 0));
        final DirectExecutorEnum_czj czjVar = czj.a;
        cjoVar.a.e.a();
        return TransformFuture.p(TransformFuture.p(ProjectionIntentHelper.k(cjoVar.a.c.c()), FutureFunctionWrappers.b(new AsyncFunctionInterface() { // from class: cjn
            @Override // defpackage.AsyncFunctionInterface
            public final ListenableFuture a(Object obj2) {
                DataStoreInstanceRef cjoVar2 = DataStoreInstanceRef.this;
                return cjoVar2.a.b.d(b, czjVar);
            }
        }), czj.a), FutureFunctionWrappers.b(new ProtoDataStoreInitializer(this, i, arrayList, 1)), czj.a);
    }
}
