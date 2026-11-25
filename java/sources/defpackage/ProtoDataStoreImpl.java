package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProtoDataStoreImpl {
    public final String a;
    public final DataStoreStorage b;
    public final RefCountedSharedFuture c;
    public final CloseScopeFactory e;
    private final ListenableFuture g;
    private final RefCountedSharedFuture i = new RefCountedSharedFuture(new DataStoreInitializeFunction(this), czj.a);
    public final Object d = new Object();
    public List f = new ArrayList();
    private final FutureListenerDispatcher h = FutureListenerDispatcher.a();

    public ProtoDataStoreImpl(DataStoreStorage cjqVar, ListenableFuture dagVar, boolean z) {
        this.b = cjqVar;
        this.g = dagVar;
        this.a = ((FileDataStore) cjqVar).a;
        int i = 1;
        this.c = new RefCountedSharedFuture(new FileDataStoreStateFn((FileDataStore) cjqVar, i), czj.a);
        if (IcuMessageFormat) {
            this.e = CloseScopeFactory.d();
        } else {
            this.e = CloseScopeFactory.c();
        }
        c(new DataStoreGetFn(this, i));
    }

    public final ListenableFuture a() {
        ListenableFuture dagVar;
        this.e.a();
        if (this.i.d.isDone()) {
            dagVar = ((FileDataStore) this.b).a();
        } else {
            CloseScopeFactory cndVar = this.e;
            String valueOf = String.valueOf(this.a);
            FutureCloseSignal b = cndVar.b(valueOf.length() != 0 ? "Get ".concat(valueOf) : new String("Get "));
            try {
                ListenableFuture p = TransformFuture.p(this.i.c(), FutureFunctionWrappers.b(new DataStoreGetFn(this, 0)), czj.a);
                b.a(IcuConfigProperties);
                b.close();
                dagVar = p;
            } catch (Throwable th) {
                try {
                    b.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        }
        ProjectionIntentHelper.k(this.g);
        return ProjectionIntentHelper.k(dagVar);
    }

    public final ListenableFuture b(final GuavaFunction cnyVar, final Executor executor) {
        final AsyncFunctionInterface b = FutureFunctionWrappers.b(new AsyncFunctionInterface() { // from class: cjk
            @Override // defpackage.AsyncFunctionInterface
            public final ListenableFuture a(Object obj) {
                return ProjectionIntentHelper.j(GuavaFunction.this.a(obj));
            }
        });
        CloseScopeFactory cndVar = this.e;
        String valueOf = String.valueOf(this.a);
        FutureCloseSignal b2 = cndVar.b(valueOf.length() != 0 ? "Update ".concat(valueOf) : new String("Update "));
        try {
            final ListenableFuture c = this.i.c();
            this.h.b(new FutureSupplier() { // from class: cjh
                @Override // defpackage.FutureSupplier
                public final ListenableFuture a() {
                    return ListenableFuture.this;
                }
            }, czj.a);
            ListenableFuture b3 = this.h.b(FutureFunctionWrappers.a(new FutureSupplier() { // from class: cjg
                @Override // defpackage.FutureSupplier
                public final ListenableFuture a() {
                    final ProtoDataStoreImpl cjpVar = ProtoDataStoreImpl.this;
                    ListenableFuture dagVar = c;
                    final AsyncFunctionInterface czcVar = b;
                    final Executor executor2 = executor;
                    return TransformFuture.p(dagVar, FutureFunctionWrappers.b(new AsyncFunctionInterface() { // from class: cjj
                        @Override // defpackage.AsyncFunctionInterface
                        public final ListenableFuture a(Object obj) {
                            ProtoDataStoreImpl cjpVar2 = ProtoDataStoreImpl.this;
                            return cjpVar2.b.d(czcVar, executor2);
                        }
                    }), czj.a);
                }
            }), czj.a);
            b3.getClass();
            if (!c.isDone()) {
                if (b3.isDone()) {
                    ProjectionIntentHelper.q(b3, c);
                } else {
                    FutureListenerRunnable_czy czyVar = new FutureListenerRunnable_czy(b3, c);
                    b3.aW(czyVar, czj.a);
                    c.aW(czyVar, czj.a);
                }
            }
            ProjectionIntentHelper.k(this.g);
            b2.a(b3);
            b2.close();
            return b3;
        } catch (Throwable th) {
            try {
                b2.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    public final void c(AsyncFunctionInterface czcVar) {
        synchronized (this.d) {
            this.f.add(czcVar);
        }
    }
}
