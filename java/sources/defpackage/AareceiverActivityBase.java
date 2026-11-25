package defpackage;

import android.view.SurfaceView;
import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class AareceiverActivityBase extends ReceiverAppActivity {
    private OneShotPreDrawListenerHelper a;
    private final ActivityBaseFieldHolder b;
    public AndroidAutoHeadunitProjectionHandler v;
    protected ProjectionRenderer w;
    protected View x;
    protected SurfaceView y;
    protected boolean z;

    public AareceiverActivityBase() {
        StartupTimingRecorder.a.a();
        this.z = true;
        this.b = new ActivityBaseFieldHolder(this);
    }

    protected abstract SurfaceView l();

    protected abstract View m();

    protected abstract VideoLatencyChecker n();

    public abstract DisplayType o();

    @Override // android.app.Activity
    protected void onDestroy() {
        ProjectionRenderer bgzVar;
        super.onDestroy();
        OneShotPreDrawListenerHelper gyVar = this.a;
        if (gyVar != null) {
            gyVar.b();
        }
        if (!AaReceiverFlags45351774Facade.a.a().a()) {
            AndroidAutoHeadunitProjectionHandler azyVar = this.v;
            ProjectionSession bblVar = azyVar.i.h;
            if (bblVar != null) {
                bblVar.f();
            }
            azyVar.f = true;
        }
        if (!AaReceiverFlags45359988Facade.c() && (bgzVar = this.w) != null) {
            bgzVar.e();
        }
        s();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.z = true;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.z && this.w != null) {
            this.v.g(o(), 1);
        }
        this.z = false;
    }

    @Override // android.app.Activity
    protected final void onStop() {
        super.onStop();
        ProjectionRenderer bgzVar = this.w;
        if (bgzVar == null || !bgzVar.j()) {
            return;
        }
        this.v.g(o(), 2);
    }

    protected abstract void s();

    protected abstract HeadunitActivityCallbackHolder u();

    protected final void v() {
        if (!AaReceiverFlags45353773Facade.c() || m() == null) {
            return;
        }
        this.a = OneShotPreDrawListenerHelper.a(m(), new PrimesTtiRunnable(this, 0));
    }

    protected final void w() {
        if (this.w == null) {
            this.w = new ProjectionRenderer(this.v, this.b, m(), l(), u(), n(), o());
        }
    }

    final void x() {
        s();
        ProjectionRenderer bgzVar = this.w;
        if (bgzVar != null) {
            bgzVar.e();
        }
        if (isFinishing()) {
            return;
        }
        finish();
    }
}
