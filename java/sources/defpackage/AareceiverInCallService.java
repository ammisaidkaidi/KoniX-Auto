package defpackage;

import android.telecom.InCallService;

/* compiled from: PG */
/* loaded from: classes.dex */
public class AareceiverInCallService extends InCallService implements StingComponentHolder {
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
    public final void onCreate() {
        if (!this.c) {
            this.c = true;
            aT();
        }
        super.onCreate();
    }
}
