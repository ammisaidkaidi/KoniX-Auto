package defpackage;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ahz implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ aib b;
    final /* synthetic */ ame c;

    public ahz(aib aibVar, ame ameVar, String str) {
        this.b = aibVar;
        this.c = ameVar;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aib aibVar;
        try {
            try {
                ex exVar = (ex) this.c.get();
                if (exVar == null) {
                    agr.a();
                    agr.e(aib.a, String.format("%s returned a null result. Treating it as a failure.", this.b.c.c), new Throwable[0]);
                } else {
                    agr a = agr.a();
                    int i = aib.j;
                    String.format("%s returned a %s result.", this.b.c.c, exVar);
                    a.d(new Throwable[0]);
                    this.b.i = exVar;
                }
                aibVar = this.b;
            } catch (InterruptedException e) {
                e = e;
                agr.a();
                agr.e(aib.a, String.format("%s failed because it threw an exception/error", this.a), e);
                aibVar = this.b;
            } catch (CancellationException e2) {
                agr.a();
                int i2 = aib.j;
                String.format("%s was cancelled", this.a);
                agr.f(e2);
                aibVar = this.b;
            } catch (ExecutionException e3) {
                e = e3;
                agr.a();
                agr.e(aib.a, String.format("%s failed because it threw an exception/error", this.a), e);
                aibVar = this.b;
            }
            aibVar.a();
        } catch (Throwable th) {
            this.b.a();
            throw th;
        }
    }
}
