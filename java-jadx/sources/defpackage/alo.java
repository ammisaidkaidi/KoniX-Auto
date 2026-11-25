package defpackage;

import android.content.Context;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
final class alo implements Runnable {
    final /* synthetic */ UUID a;
    final /* synthetic */ agl b;
    final /* synthetic */ Context c;
    final /* synthetic */ alp d;
    final /* synthetic */ ame e;

    public alo(alp alpVar, ame ameVar, UUID uuid, agl aglVar, Context context) {
        this.d = alpVar;
        this.e = ameVar;
        this.a = uuid;
        this.b = aglVar;
        this.c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (!this.e.isCancelled()) {
                String uuid = this.a.toString();
                int f = this.d.b.f(uuid);
                if (f == 0 || fv.A(f)) {
                    throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                }
                ajp ajpVar = this.d.a;
                agl aglVar = this.b;
                synchronized (((ahf) ajpVar).g) {
                    agr.a();
                    String.format("Moving WorkSpec (%s) to the foreground", uuid);
                    agr.f(new Throwable[0]);
                    aib aibVar = (aib) ((ahf) ajpVar).e.remove(uuid);
                    if (aibVar != null) {
                        if (((ahf) ajpVar).b == null) {
                            ((ahf) ajpVar).b = alk.a(((ahf) ajpVar).c, "ProcessorForegroundLck");
                            ((ahf) ajpVar).b.acquire();
                        }
                        ((ahf) ajpVar).d.put(uuid, aibVar);
                        xt.a(((ahf) ajpVar).c, ajs.c(((ahf) ajpVar).c, uuid, aglVar));
                    }
                }
                this.c.startService(ajs.b(this.c, uuid, this.b));
            }
            this.e.e(null);
        } catch (Throwable th) {
            this.e.f(th);
        }
    }
}
