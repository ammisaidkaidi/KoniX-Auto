package defpackage;

import android.telecom.Call;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CallAvailabilityMonitorCallback implements CallAvailabilityCallback {
    final /* synthetic */ CallAvailabilityMonitor a;

    public CallAvailabilityMonitorCallback(CallAvailabilityMonitor bcuVar) {
        this.a = bcuVar;
    }

    @Override // defpackage.CallAvailabilityCallback
    public final void a(Call call) {
        if (this.a.c(call)) {
            this.a.c.nativeSetCallAvailability(false);
        }
    }

    @Override // defpackage.CallAvailabilityCallback
    public final void b(Call call) {
        if (this.a.c(call)) {
            this.a.c.nativeSetCallAvailability(true);
        }
    }
}
