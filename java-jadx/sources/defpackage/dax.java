package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dax extends czr implements RunnableFuture {
    private volatile daf a;

    public dax(czb czbVar) {
        this.a = new dav(this, czbVar);
    }

    public static dax e(czb czbVar) {
        return new dax(czbVar);
    }

    static dax n(Callable callable) {
        return new dax(callable);
    }

    public static dax o(Runnable runnable, Object obj) {
        return new dax(Executors.callable(runnable, obj));
    }

    @Override // defpackage.cyp
    protected final String a() {
        daf dafVar = this.a;
        if (dafVar == null) {
            return super.a();
        }
        String obj = dafVar.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 7);
        sb.append("task=[");
        sb.append(obj);
        sb.append("]");
        return sb.toString();
    }

    @Override // defpackage.cyp
    protected final void c() {
        daf dafVar;
        if (m() && (dafVar = this.a) != null) {
            dafVar.h();
        }
        this.a = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        daf dafVar = this.a;
        if (dafVar != null) {
            dafVar.run();
        }
        this.a = null;
    }

    public dax(Callable callable) {
        this.a = new daw(this, callable);
    }
}
