package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class JankServiceEventBridge implements PrimesStartStopEventListener, buw {
    private final Window.OnFrameMetricsAvailableListener a;
    private final DaggerInternalFactoryMarker b;

    public JankServiceEventBridge(Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, DaggerInternalFactoryMarker dgzVar) {
        this.a = onFrameMetricsAvailableListener;
        this.b = dgzVar;
    }

    @Override // defpackage.BatteryMetricServiceInterface
    public void a(Activity activity, Bundle bundle) {
        activity.getWindow().addOnFrameMetricsAvailableListener(this.a, (Handler) this.b.a());
    }

    @Override // defpackage.PrimesStartStopEventListener
    public void c() {
    }

    @Override // defpackage.PrimesStartStopEventListener
    public void d() {
    }
}
