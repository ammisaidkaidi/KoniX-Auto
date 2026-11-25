package defpackage;

import android.os.Handler;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
public class zz extends zy {
    @Override // defpackage.zy
    public final void g(Object obj) {
        zy.a("setValue");
        this.h++;
        this.f = obj;
        b(null);
    }

    public final void h(Object obj) {
        Object obj2;
        Object obj3;
        synchronized (this.b) {
            obj2 = this.g;
            obj3 = zy.a;
            this.g = obj;
        }
        if (obj2 != obj3) {
            return;
        }
        uf g = uf.g();
        Runnable runnable = this.i;
        hq hqVar = g.b;
        uh uhVar = (uh) hqVar;
        if (uhVar.c == null) {
            synchronized (uhVar.a) {
                if (((uh) hqVar).c == null) {
                    ((uh) hqVar).c = Handler.createAsync(Looper.getMainLooper());
                }
            }
        }
        uhVar.c.post(runnable);
    }
}
