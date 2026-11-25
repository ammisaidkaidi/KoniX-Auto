package defpackage;

import android.app.Activity;
import android.os.Handler;
import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FrameMetricEventBridge implements ActivityArgumentEventListener, buy, bxz {
    private final Window.OnFrameMetricsAvailableListener a;
    private final DaggerInternalFactoryMarker b;
    private Activity c;
    private boolean d;

    public FrameMetricEventBridge(Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, DaggerInternalFactoryMarker dgzVar) {
        this.a = onFrameMetricsAvailableListener;
        this.b = dgzVar;
    }

    private final void e() {
        Activity activity = this.c;
        if (activity != null) {
            activity.getWindow().addOnFrameMetricsAvailableListener(this.a, (Handler) this.b.a());
        }
    }

    private final void f() {
        Activity activity = this.c;
        if (activity != null) {
            try {
                activity.getWindow().removeOnFrameMetricsAvailableListener(this.a);
            } catch (RuntimeException e) {
            }
        }
    }

    @Override // defpackage.ActivityArgumentEventListener
    public void a(Activity activity) {
        synchronized (this) {
            this.c = activity;
            if (this.d) {
                e();
            }
        }
    }

    @Override // defpackage.NetworkMetricServiceInterface
    public void b(Activity activity) {
        synchronized (this) {
            if (this.d) {
                f();
            }
            this.c = null;
        }
    }

    @Override // defpackage.PrimesStartStopEventListener
    public void c() {
        synchronized (this) {
            this.d = true;
            if (this.c != null) {
                e();
            }
        }
    }

    @Override // defpackage.PrimesStartStopEventListener
    public void d() {
        synchronized (this) {
            this.d = false;
            f();
        }
    }
}
