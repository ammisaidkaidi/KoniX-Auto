package defpackage;

import android.car.AoapService;
import com.google.android.apps.auto.aareceiver.transport.usb.AoapSupportCheckService;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class bdy extends AoapService implements dht {
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

    @Override // android.car.AoapService, android.app.Service
    public final void onCreate() {
        if (!this.c) {
            this.c = true;
            ((AoapSupportCheckService) this).a = (bah) ((asv) aT()).a.p.a();
        }
        super.onCreate();
    }
}
