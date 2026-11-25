package defpackage;

import com.google.android.apps.auto.aareceiver.ui.ClusterActivityWrapper;
import j$.util.Optional;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SettingsActivityCallbackB implements ActivityResultLauncherCallback {
    final /* synthetic */ SettingsActivityHost a;

    public SettingsActivityCallbackB(SettingsActivityHost bfoVar) {
        this.a = bfoVar;
    }

    @Override // defpackage.ActivityResultLauncherCallback
    public final void a() {
        SettingsActivityHost bfoVar = this.a;
        if (bfoVar.c) {
            return;
        }
        bfoVar.c = true;
        Object aT = bfoVar.aT();
        ClusterActivityWrapper clusterActivityWrapper = (ClusterActivityWrapper) bfoVar;
        DaggerSingleProvider assVar = (DaggerSingleProvider) aT;
        AareceiverAppComponent atjVar = assVar.a;
        ClusterDisplayAvailability c = ClusterDisplayAvailabilityFactory.c();
        c.a = ClusterDisplayProviderFactory.c(atjVar.a.a, (Optional) atjVar.w.a());
        clusterActivityWrapper.a = c;
        clusterActivityWrapper.b = (DeviceTracker) assVar.a.p.a();
    }
}
