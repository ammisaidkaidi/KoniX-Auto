package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;

/* compiled from: PG */
/* loaded from: classes.dex */
final class byd implements bxz, buw {
    private final Window.OnFrameMetricsAvailableListener a;
    private final dgz b;

    public byd(Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, dgz dgzVar) {
        this.a = onFrameMetricsAvailableListener;
        this.b = dgzVar;
    }

    @Override // defpackage.buw
    public void a(Activity activity, Bundle bundle) {
        activity.getWindow().addOnFrameMetricsAvailableListener(this.a, (Handler) this.b.a());
    }

    @Override // defpackage.bxz
    public void c() {
    }

    @Override // defpackage.bxz
    public void d() {
    }
}
