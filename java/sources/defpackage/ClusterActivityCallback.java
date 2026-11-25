package defpackage;

import android.content.pm.PackageManager;
import com.google.android.apps.auto.aareceiver.ui.MissingPermissionsActivity;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ClusterActivityCallback implements ActivityResultLauncherCallback {
    final /* synthetic */ ClusterActivityHost a;

    public ClusterActivityCallback(ClusterActivityHost bfsVar) {
        this.a = bfsVar;
    }

    @Override // defpackage.ActivityResultLauncherCallback
    public final void a() {
        ClusterActivityHost bfsVar = this.a;
        if (bfsVar.a) {
            return;
        }
        bfsVar.a = true;
        ((MissingPermissionsActivity) bfsVar).b = (PackageManager) ((DaggerSingleProvider) bfsVar.aT()).a.e.a();
    }
}
