package defpackage;

import android.car.CarProjectionManager$ProjectionAccessPointCallback;

/* compiled from: PG */
/* loaded from: classes.dex */
class ProjectionAccessPointCallbackBase extends CarProjectionManager$ProjectionAccessPointCallback {
    final /* synthetic */ AccessPoint b;

    public ProjectionAccessPointCallbackBase(AccessPoint bdqVar) {
        this.b = bdqVar;
    }

    @Override // android.car.CarProjectionManager$ProjectionAccessPointCallback
    public final void onFailed(int i) {
        this.b.h.b(LatencyEventType.AP_STARTUP, 5);
        ((ParameterizedLoggerApi) AccessPoint.a.c().h("com/google/android/apps/auto/aareceiver/transport/net/AccessPoint$CarProjectionApCallback", "onFailed", 606, "AccessPoint.java")).o("Access point failed, reason: %d", i);
        this.b.g();
        ImmutableList c = this.b.c();
        int size = c.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((AccessPointStateListener) c.get(i2)).a(NavInstructionTypeEnum);
        }
    }

    @Override // android.car.CarProjectionManager$ProjectionAccessPointCallback
    public final void onStopped() {
        this.b.h.c();
        this.b.g();
        ImmutableList c = this.b.c();
        int size = c.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ((AccessPointStateListener) c.get(NavInstructionTypeEnum)).c();
        }
    }
}
