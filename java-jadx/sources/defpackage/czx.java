package defpackage;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class czx implements Runnable {
    final Future a;
    final czv b;

    public czx(Future future, czv czvVar) {
        this.a = future;
        this.b = czvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable g;
        Object obj = this.a;
        if ((obj instanceof daz) && (g = ((daz) obj).g()) != null) {
            this.b.a(g);
            return;
        }
        try {
            this.b.b(hh.o(this.a));
        } catch (Error e) {
            e = e;
            this.b.a(e);
        } catch (RuntimeException e2) {
            e = e2;
            this.b.a(e);
        } catch (ExecutionException e3) {
            this.b.a(e3.getCause());
        }
    }

    public final String toString() {
        cob cobVar = new cob(getClass().getSimpleName());
        czv czvVar = this.b;
        coa coaVar = new coa();
        cobVar.a.b = coaVar;
        cobVar.a = coaVar;
        coaVar.a = czvVar;
        return cobVar.toString();
    }
}
