package defpackage;

import android.car.CarProjectionManager$ProjectionAccessPointCallback;

/* compiled from: PG */
/* loaded from: classes.dex */
class bdo extends CarProjectionManager$ProjectionAccessPointCallback {
    final /* synthetic */ bdq b;

    public bdo(bdq bdqVar) {
        this.b = bdqVar;
    }

    @Override // android.car.CarProjectionManager$ProjectionAccessPointCallback
    public final void onFailed(int i) {
        this.b.h.b(bdf.AP_STARTUP, 5);
        ((csx) bdq.a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$CarProjectionApCallback", "onFailed", 606, "AccessPoint.java")).o("Access point failed, reason: %d", i);
        this.b.g();
        cqh c = this.b.c();
        int size = c.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((bdr) c.get(i2)).a(i);
        }
    }

    @Override // android.car.CarProjectionManager$ProjectionAccessPointCallback
    public final void onStopped() {
        this.b.h.c();
        this.b.g();
        cqh c = this.b.c();
        int size = c.size();
        for (int i = 0; i < size; i++) {
            ((bdr) c.get(i)).c();
        }
    }
}
