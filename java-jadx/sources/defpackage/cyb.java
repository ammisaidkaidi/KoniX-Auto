package defpackage;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class cyb extends czr implements Runnable {
    dag a;
    Class b;
    Object c;

    public cyb(dag dagVar, Class cls, Object obj) {
        dagVar.getClass();
        this.a = dagVar;
        this.b = cls;
        obj.getClass();
        this.c = obj;
    }

    public static dag e(dag dagVar, Class cls, czc czcVar, Executor executor) {
        cyb cybVar = new cyb(dagVar, cls, czcVar);
        dagVar.aW(cybVar, hi.n(executor, cybVar));
        return cybVar;
    }

    @Override // defpackage.cyp
    protected final String a() {
        String str;
        dag dagVar = this.a;
        Class cls = this.b;
        Object obj = this.c;
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
        if (cls == null || obj == null) {
            if (a != null) {
                return a.length() != 0 ? str.concat(a) : new String(str);
            }
            return null;
        }
        String obj3 = cls.toString();
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

    @Override // defpackage.cyp
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
        dag dagVar = this.a;
        Class cls = this.b;
        ?? r2 = this.c;
        if (((r2 == 0) || ((dagVar == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        this.a = null;
        try {
            th = dagVar instanceof daz ? ((daz) dagVar).g() : null;
            obj = th == null ? hh.o(dagVar) : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                String valueOf = String.valueOf(dagVar.getClass());
                String valueOf2 = String.valueOf(e.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 35 + String.valueOf(valueOf2).length());
                sb.append("Future type ");
                sb.append(valueOf);
                sb.append(" threw ");
                sb.append(valueOf2);
                sb.append(" without a cause");
                th = new NullPointerException(sb.toString());
            } else {
                th = cause;
            }
            obj = null;
            if (th == null) {
            }
        } catch (Throwable th) {
            th = th;
            obj = null;
            if (th == null) {
            }
        }
        if (th == null) {
            k(obj);
            return;
        }
        if (!cls.isInstance(th)) {
            d(dagVar);
            return;
        }
        try {
            dag a = r2.a(th);
            a.getClass();
            this.b = null;
            this.c = null;
            d(a);
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
