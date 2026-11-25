package defpackage;

import android.app.Activity;
import android.os.Handler;
import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bye implements buz, buy, bxz {
    private final Window.OnFrameMetricsAvailableListener a;
    private final dgz b;
    private Activity c;
    private boolean d;

    public bye(Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, dgz dgzVar) {
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

    @Override // defpackage.buz
    public void a(Activity activity) {
        synchronized (this) {
            this.c = activity;
            if (this.d) {
                e();
            }
        }
    }

    @Override // defpackage.buy
    public void b(Activity activity) {
        synchronized (this) {
            if (this.d) {
                f();
            }
            this.c = null;
        }
    }

    @Override // defpackage.bxz
    public void c() {
        synchronized (this) {
            this.d = true;
            if (this.c != null) {
                e();
            }
        }
    }

    @Override // defpackage.bxz
    public void d() {
        synchronized (this) {
            this.d = false;
            f();
        }
    }
}
