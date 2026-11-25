package defpackage;

import android.app.Service;
import com.google.android.apps.auto.aareceiver.service.PersistentService;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ban extends Service implements dht {
    private volatile dho a;
    private final Object b = new Object();
    private boolean c = false;

    @Override // defpackage.dht
    public final Object aT() {
        if (this.a == null) {
            synchronized (this.b) {
                if (this.a == null) {
                    this.a = new dho(this);
                }
            }
        }
        return this.a.aT();
    }

    @Override // android.app.Service
    public void onCreate() {
        if (!this.c) {
            this.c = true;
            PersistentService persistentService = (PersistentService) this;
            asv asvVar = (asv) aT();
            persistentService.b = (awh) asvVar.a.E.a();
            persistentService.c = (bat) asvVar.a.q.a();
            persistentService.d = (bcj) asvVar.a.l.a();
            persistentService.j = (dhq) asvVar.a.n.a();
            persistentService.e = (bah) asvVar.a.p.a();
            persistentService.f = (avk) asvVar.a.C.a();
            persistentService.g = (azi) asvVar.a.y.a();
            persistentService.h = (axw) asvVar.a.O.a();
        }
        super.onCreate();
    }
}
