package defpackage;

import android.car.AoapService;
import com.google.android.apps.auto.aareceiver.transport.usb.AoapSupportCheckService;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class AoapSupportService extends AoapService implements StingComponentHolder {
    private volatile StingServiceComponentManager a;
    private final Object b = new Object();
    private boolean c = false;

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.a == null) {
            synchronized (this.b) {
                if (this.a == null) {
                    this.a = new StingServiceComponentManager(this);
                }
            }
        }
        return this.a.aT();
    }

    @Override // android.car.AoapService, android.app.Service
    public final void onCreate() {
        if (!this.c) {
            this.c = true;
            ((AoapSupportCheckService) this).a = (DeviceTracker) ((DaggerLazyProvider) aT()).a.p.a();
        }
        super.onCreate();
    }
}
