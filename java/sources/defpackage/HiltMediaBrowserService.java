package defpackage;

import com.google.android.apps.auto.aareceiver.media.MediaBrowserService;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class HiltMediaBrowserService extends MediaBrowserServiceCompat implements StingComponentHolder {
    private volatile StingServiceComponentManager f;
    private final Object g = new Object();
    private boolean h = false;

    @Override // defpackage.StingComponentHolder
    public final Object aT() {
        if (this.f == null) {
            synchronized (this.g) {
                if (this.f == null) {
                    this.f = new StingServiceComponentManager(this);
                }
            }
        }
        return this.f.aT();
    }

    @Override // defpackage.MediaBrowserServiceCompat, android.app.Service
    public void onCreate() {
        if (!this.h) {
            this.h = true;
            ((MediaBrowserService) this).g = (DeviceTracker) ((DaggerLazyProvider) aT()).a.p.a();
        }
        super.onCreate();
    }
}
