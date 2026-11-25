package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cyt extends czr implements Runnable {
    dag a;
    Object b;

    public cyt(dag dagVar, Object obj) {
        dagVar.getClass();
        this.a = dagVar;
        obj.getClass();
        this.b = obj;
    }

    public static dag o(dag dagVar, cny cnyVar, Executor executor) {
        cnyVar.getClass();
        cys cysVar = new cys(dagVar, cnyVar);
        dagVar.aW(cysVar, hi.n(executor, cysVar));
        return cysVar;
    }

    public static dag p(dag dagVar, czc czcVar, Executor executor) {
        executor.getClass();
        cyr cyrVar = new cyr(dagVar, czcVar);
        dagVar.aW(cyrVar, hi.n(executor, cyrVar));
        return cyrVar;
    }

    @Override // defpackage.cyp
    protected final String a() {
        String str;
        dag dagVar = this.a;
        Object obj = this.b;
        String a = super.a();
        if (dagVar != null) {
            String obj2 = dagVar.toString();
            StringBuilder sb = new StringBuilder(obj2.length() + 16);
            sb.append("inputFuture=[");
            sb.append(obj2);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (obj == null) {
            if (a != null) {
                return a.length() != 0 ? str.concat(a) : new String(str);
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

    @Override // defpackage.cyp
    protected final void c() {
        j(this.a);
        this.a = null;
        this.b = null;
    }

    public abstract Object e(Object obj, Object obj2);

    public abstract void n(Object obj);

    @Override // java.lang.Runnable
    public final void run() {
        dag dagVar = this.a;
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
                Object e = e(obj, hh.o(dagVar));
                this.b = null;
                n(e);
            } catch (Throwable th) {
                try {
                    l(th);
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
