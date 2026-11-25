package defpackage;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CombinedFutureTask extends ListeningExecutorServiceBase implements Runnable {
    ListenableFuture a;
    Class b;
    Object c;

    public CombinedFutureTask(ListenableFuture dagVar, Class cls, Object obj) {
        dagVar.getClass();
        this.a = dagVar;
        this.b = cls;
        obj.getClass();
        this.c = obj;
    }

    public static ListenableFuture e(ListenableFuture dagVar, Class cls, AsyncFunctionInterface czcVar, Executor executor) {
        CombinedFutureTask cybVar = new CombinedFutureTask(dagVar, cls, czcVar);
        dagVar.aW(cybVar, ViewCompatApi19Statics.n(executor, cybVar));
        return cybVar;
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final String a() {
        String str;
        ListenableFuture dagVar = this.a;
        Class cls = this.b;
        Object obj = this.c;
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
        if (GalTransportThread == null || obj == null) {
            if (SingleStringProtoMessage != null) {
                return a.length() != 0 ? str.concat(SingleStringProtoMessage) : new String(str);
            }
            return null;
        }
        String obj3 = GalTransportThread.toString();
        String obj4 = obj.toString();
        StringBuilder sb2 = new StringBuilder(str.length() + 29 + obj3.length() + obj4.length());
        sb2.append(str);
        sb2.append("exceptionType=[");
        sb2.append(obj3);
        sb2.append("], fallback=[");
        sb2.append(obj4);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final void c() {
        j(this.a);
        this.a = null;
        this.b = null;
        this.c = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
    /* JADX WARN: Type inference failed for: r2v0, types: [czc, java.lang.Object] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Object obj;
        ListenableFuture dagVar = this.a;
        Class cls = this.b;
        ?? r2 = this.c;
        if (((r2 == 0) || ((dagVar == 0) | (GalTransportThread == null))) || isCancelled()) {
            return;
        }
        this.a = null;
        try {
            th = dagVar instanceof CheckedFutureBase ? ((CheckedFutureBase) dagVar).g() : null;
            obj = th == null ? ProjectionIntentHelper.o(dagVar) : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                String valueOf = String.valueOf(dagVar.getClass());
                String valueOf2 = String.valueOf(e.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35 + String.valueOf(valueOf2).length());
                StaggeredGridLayoutParams.append("Future type ");
                StaggeredGridLayoutParams.append(valueOf);
                StaggeredGridLayoutParams.append(" threw ");
                StaggeredGridLayoutParams.append(valueOf2);
                StaggeredGridLayoutParams.append(" without a cause");
                th = new NullPointerException(StaggeredGridLayoutParams.toString());
            } else {
                th = cause;
            }
            obj = null;
            if (ActivityResultDispatchRunnable == null) {
            }
        } catch (Throwable th) {
            th = th;
            obj = null;
            if (ActivityResultDispatchRunnable == null) {
            }
        }
        if (ActivityResultDispatchRunnable == null) {
            k(obj);
            return;
        }
        if (!GalTransportThread.isInstance(ActivityResultDispatchRunnable)) {
            d(dagVar);
            return;
        }
        try {
            ListenableFuture a = r2.a(ActivityResultDispatchRunnable);
            a.getClass();
            this.b = null;
            this.c = null;
            d(SingleStringProtoMessage);
        } catch (Throwable th2) {
            try {
                l(th2);
            } finally {
                this.b = null;
                this.c = null;
            }
        }
    }
}
