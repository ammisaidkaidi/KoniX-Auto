package defpackage;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.libraries.performance.primes.transmitter.LifeboatReceiver;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ccq implements ccw {
    public final Application a;
    public final Set b;
    private final Set c;

    public ccq(Context context, Set set, Set set2) {
        this.a = (Application) context;
        this.c = set;
        this.b = set2;
    }

    @Override // defpackage.ccw
    public final ccv a() {
        return new ccv(10);
    }

    @Override // defpackage.ccw
    public final void b(final dpz dpzVar) {
        dpm dpmVar = dpzVar.h;
        if (dpmVar == null) {
            dpmVar = dpm.i;
        }
        if ((dpmVar.a & 1) == 0 || this.c.isEmpty() || this.b.isEmpty()) {
            return;
        }
        cqc j = cqh.j();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            j.g(((cct) it.next()).a());
        }
        try {
            hi.j(cyt.o(hh.n(j.f()), new cny() { // from class: ccp
                @Override // defpackage.cny
                public final Object a(Object obj) {
                    ccq ccqVar = ccq.this;
                    dpz dpzVar2 = dpzVar;
                    ddh ddhVar = (ddh) ccs.c.n();
                    for (ccs ccsVar : (List) obj) {
                        if (ccsVar != null) {
                            ddhVar.n(ccsVar);
                        }
                    }
                    int i = 0;
                    if (ddhVar.c) {
                        ddhVar.k();
                        ddhVar.c = false;
                    }
                    ccs ccsVar2 = (ccs) ddhVar.b;
                    dpzVar2.getClass();
                    ccsVar2.b = dpzVar2;
                    ccsVar2.a |= 1;
                    String[] strArr = new String[ccqVar.b.size()];
                    Iterator it2 = ccqVar.b.iterator();
                    while (it2.hasNext()) {
                        strArr[i] = ((ccu) it2.next()).getClass().getName();
                        i++;
                    }
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName(ccqVar.a.getApplicationContext(), (Class<?>) LifeboatReceiver.class));
                    intent.setPackage(ccqVar.a.getApplicationContext().getPackageName());
                    intent.putExtra("Transmitters", strArr);
                    intent.putExtra("MetricSnapshot", ((ccs) ddhVar.h()).h());
                    ccqVar.a.sendBroadcast(intent);
                    return null;
                }
            }, czj.a));
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (!(cause instanceof Error)) {
                throw new day(cause);
            }
            throw new czk((Error) cause);
        }
    }
}
