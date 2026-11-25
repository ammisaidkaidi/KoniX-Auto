package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class TransformFuture extends ListeningExecutorServiceBase implements Runnable {
    ListenableFuture a;
    Object b;

    public TransformFuture(ListenableFuture dagVar, Object obj) {
        dagVar.getClass();
        this.a = dagVar;
        obj.getClass();
        this.b = obj;
    }

    public static ListenableFuture o(ListenableFuture dagVar, GuavaFunction cnyVar, Executor executor) {
        cnyVar.getClass();
        SyncTransformFuture cysVar = new SyncTransformFuture(dagVar, cnyVar);
        dagVar.aW(cysVar, ViewCompatApi19Statics.n(executor, cysVar));
        return cysVar;
    }

    public static ListenableFuture p(ListenableFuture dagVar, AsyncFunctionInterface czcVar, Executor executor) {
        executor.getClass();
        AsyncTransformFuture cyrVar = new AsyncTransformFuture(dagVar, czcVar);
        dagVar.aW(cyrVar, ViewCompatApi19Statics.n(executor, cyrVar));
        return cyrVar;
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final String a() {
        String str;
        ListenableFuture dagVar = this.a;
        Object obj = this.b;
        String a = super.a();
        if (dagVar != null) {
            String obj2 = dagVar.toString();
            StringBuilder sb = new StringBuilder(obj2.length() + 16);
            StaggeredGridLayoutParams.append("inputFuture=[");
            StaggeredGridLayoutParams.append(obj2);
            StaggeredGridLayoutParams.append("], ");
            str = StaggeredGridLayoutParams.toString();
        } else {
            str = "";
        }
        if (obj == null) {
            if (SingleStringProtoMessage != null) {
                return a.length() != 0 ? str.concat(SingleStringProtoMessage) : new String(str);
            }
            return null;
        }
        String obj3 = obj.toString();
        StringBuilder sb2 = new StringBuilder(str.length() + 11 + obj3.length());
        sb2.append(str);
        sb2.append("function=[");
        sb2.append(obj3);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final void c() {
        j(this.a);
        this.a = null;
        this.b = null;
    }

    public abstract Object e(Object obj, Object obj2);

    public abstract void n(Object obj);

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture dagVar = this.a;
        Object obj = this.b;
        if ((isCancelled() | (dagVar == null)) || (obj == null)) {
            return;
        }
        this.a = null;
        if (dagVar.isCancelled()) {
            d(dagVar);
            return;
        }
        try {
            try {
                Object e = e(obj, ProjectionIntentHelper.o(dagVar));
                this.b = null;
                n(ProtoFlagValueMessage);
            } catch (Throwable th) {
                try {
                    l(ActivityResultDispatchRunnable);
                } finally {
                    this.b = null;
                }
            }
        } catch (Error e2) {
            l(e2);
        } catch (CancellationException e3) {
            cancel(false);
        } catch (RuntimeException e4) {
            l(e4);
        } catch (ExecutionException e5) {
            l(e5.getCause());
        }
    }
}
