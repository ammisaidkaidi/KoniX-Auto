package defpackage;

import android.car.CarProjectionManager;
import com.google.android.apps.auto.aareceiver.ui.AndroidAutoHeadunitActivity;
import j$.util.Optional;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class ErrorMessageActivity extends AareceiverActivityBase {
    private boolean a = false;

    public ErrorMessageActivity() {
        j(new ErrorActivityCallback(this));
    }

    @Override // defpackage.ReceiverAppActivity
    protected final void y() {
        if (this.a) {
            return;
        }
        this.a = true;
        AndroidAutoHeadunitActivity androidAutoHeadunitActivity = (AndroidAutoHeadunitActivity) this;
        DaggerSingleProvider assVar = (DaggerSingleProvider) aT();
        androidAutoHeadunitActivity.v = (AndroidAutoHeadunitProjectionHandler) assVar.a.z.a();
        androidAutoHeadunitActivity.l = (CarProjectionManager) assVar.a.j.a();
        androidAutoHeadunitActivity.m = (DeviceTracker) assVar.a.p.a();
        androidAutoHeadunitActivity.n = (WirelessDiscoveryController) assVar.a.E.a();
        androidAutoHeadunitActivity.u = ContextProviderFactory_axu.c(assVar.a.a.a);
        androidAutoHeadunitActivity.o = assVar.a.d();
        androidAutoHeadunitActivity.p = (OemSettings) assVar.a.l.a();
        androidAutoHeadunitActivity.t = (UsbHostPermissionChecker) assVar.a.M.a();
        AareceiverAppComponent atjVar = assVar.a;
        androidAutoHeadunitActivity.q = ((OemSettings) atjVar.l.a()).d() ? Optional.of(((VideoLatencyCheckerFactory) atjVar.N).a()) : Optional.empty();
        androidAutoHeadunitActivity.r = (TelemetryTracker) assVar.a.x.a();
        androidAutoHeadunitActivity.s = (OverlayableResourcesProvider) assVar.a.t.a();
    }
}
