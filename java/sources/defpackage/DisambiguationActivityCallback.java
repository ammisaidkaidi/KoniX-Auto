package defpackage;

import com.google.android.apps.auto.aareceiver.ui.ProjectionDeviceDisambiguationActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DisambiguationActivityCallback implements ActivityResultLauncherCallback {
    final /* synthetic */ DisambiguationActivityHost a;

    public DisambiguationActivityCallback(DisambiguationActivityHost bfuVar) {
        this.a = bfuVar;
    }

    @Override // defpackage.ActivityResultLauncherCallback
    public final void a() {
        DisambiguationActivityHost bfuVar = this.a;
        if (bfuVar.a) {
            return;
        }
        bfuVar.a = true;
        Object aT = bfuVar.aT();
        ProjectionDeviceDisambiguationActivity projectionDeviceDisambiguationActivity = (ProjectionDeviceDisambiguationActivity) bfuVar;
        DaggerSingleProvider assVar = (DaggerSingleProvider) aT;
        projectionDeviceDisambiguationActivity.d = (DeviceTracker) assVar.a.p.a();
        projectionDeviceDisambiguationActivity.e = (OemSettings) assVar.a.l.a();
    }
}
