package defpackage;

import android.app.Application;
import android.app.Service;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class StingServiceComponentManager implements StingComponentHolder {
    private final Service a;
    private Object b;

    public StingServiceComponentManager(Service service) {
        this.a = service;
    }

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.b == null) {
            Application application = this.a.getApplication();
            CommonObjectsAndPreconditionsUtil.o(application instanceof StingComponentHolder, "Sting service must be attached to an @Sting Application. Found: %s", application.getClass());
            ServiceComponentHolder l = ((StingRootComponentInterface) CommonObjectsAndPreconditionsUtil.s(application, StingRootComponentInterface.class)).l();
            l.b = this.a;
            CommonObjectsAndPreconditionsUtil.l(l.b, Service.class);
            this.b = new DaggerLazyProvider(l.a);
        }
        return this.b;
    }
}
