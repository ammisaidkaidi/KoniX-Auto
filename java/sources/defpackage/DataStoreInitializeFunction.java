package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DataStoreInitializeFunction implements FutureSupplier {
    public List a;
    final /* synthetic */ ProtoDataStoreImpl b;

    public DataStoreInitializeFunction(ProtoDataStoreImpl cjpVar) {
        this.b = cjpVar;
    }

    @Override // defpackage.FutureSupplier
    public final ListenableFuture a() {
        ProtoDataStoreImpl cjpVar = this.b;
        CloseScopeFactory cndVar = cjpVar.e;
        String valueOf = String.valueOf(cjpVar.a);
        FutureCloseSignal b = cndVar.b(valueOf.length() != 0 ? "Initialize ".concat(valueOf) : new String("Initialize "));
        try {
            synchronized (this.b.d) {
                if (this.a == null) {
                    ProtoDataStoreImpl cjpVar2 = this.b;
                    this.a = cjpVar2.f;
                    cjpVar2.f = Collections.emptyList();
                }
            }
            ArrayList arrayList = new ArrayList(this.a.size());
            DataStoreInstanceRef cjoVar = new DataStoreInstanceRef(this.b);
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                try {
                    arrayList.add(((AsyncFunctionInterface) it.next()).a(cjoVar));
                } catch (Exception e) {
                    arrayList.add(ProjectionIntentHelper.i(ProtoFlagValueMessage));
                }
            }
            ListenableFuture a = ProjectionIntentHelper.g(arrayList).a(new Callable() { // from class: cjl
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    DataStoreInitializeFunction cjmVar = DataStoreInitializeFunction.this;
                    synchronized (cjmVar.b.d) {
                        cjmVar.a = null;
                    }
                    return null;
                }
            }, czj.a);
            b.a(SingleStringProtoMessage);
            b.close();
            return a;
        } catch (Throwable th) {
            try {
                b.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }
}
