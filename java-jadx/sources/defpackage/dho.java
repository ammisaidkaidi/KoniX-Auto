package defpackage;

import android.app.Application;
import android.app.Service;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class dho implements dht {
    private final Service a;
    private Object b;

    public dho(Service service) {
        this.a = service;
    }

    @Override // defpackage.dht
    public final Object aT() {
        if (this.b == null) {
            Application application = this.a.getApplication();
            dpx.o(application instanceof dht, "Sting service must be attached to an @Sting Application. Found: %s", application.getClass());
            ath l = ((dhn) dpx.s(application, dhn.class)).l();
            l.b = this.a;
            dpx.l(l.b, Service.class);
            this.b = new asv(l.a);
        }
        return this.b;
    }
}
