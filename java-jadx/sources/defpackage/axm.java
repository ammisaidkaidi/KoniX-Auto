package defpackage;

import com.google.android.apps.auto.aareceiver.media.MediaBrowserService;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class axm extends abz implements dht {
    private volatile dho f;
    private final Object g = new Object();
    private boolean h = false;

    @Override // defpackage.dht
    public final Object aT() {
        if (this.f == null) {
            synchronized (this.g) {
                if (this.f == null) {
                    this.f = new dho(this);
                }
            }
        }
        return this.f.aT();
    }

    @Override // defpackage.abz, android.app.Service
    public void onCreate() {
        if (!this.h) {
            this.h = true;
            ((MediaBrowserService) this).g = (bah) ((asv) aT()).a.p.a();
        }
        super.onCreate();
    }
}
