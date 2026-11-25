package defpackage;

import android.app.Service;
import com.google.android.apps.auto.aareceiver.service.PersistentService;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class PersistentServiceHost extends Service implements StingComponentHolder {
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

    @Override // android.app.Service
    public void onCreate() {
        if (!this.c) {
            this.c = true;
            PersistentService persistentService = (PersistentService) this;
            DaggerLazyProvider asvVar = (DaggerLazyProvider) aT();
            persistentService.b = (WirelessDiscoveryController) asvVar.a.E.a();
            persistentService.c = (PersistentServiceController) asvVar.a.q.a();
            persistentService.d = (OemSettings) asvVar.a.l.a();
            persistentService.j = (AppContextModule) asvVar.a.n.a();
            persistentService.e = (DeviceTracker) asvVar.a.p.a();
            persistentService.f = (RfcommChannelStateHolder) asvVar.a.C.a();
            persistentService.g = (RearViewMonitor) asvVar.a.y.a();
            persistentService.h = (ExperimentFlagDumper) asvVar.a.O.a();
        }
        super.onCreate();
    }
}
