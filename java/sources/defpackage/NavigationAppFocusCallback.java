package defpackage;

import android.car.CarAppFocusManager;
import com.google.android.apps.auto.aareceiver.cluster.ClusterImageProvider;
import com.google.android.projection.protocol.GalReceiver;

/* compiled from: PG */
/* loaded from: classes.dex */
final class NavigationAppFocusCallback implements CarAppFocusManager.OnAppFocusOwnershipCallback {
    final /* synthetic */ NavigationAppFocusManager a;

    public NavigationAppFocusCallback(NavigationAppFocusManager axcVar) {
        this.a = axcVar;
    }

    @Override // android.car.CarAppFocusManager.OnAppFocusOwnershipCallback
    public final void onAppFocusOwnershipGranted(int i) {
        if (NavInstructionTypeEnum != 1) {
            ((ParameterizedLoggerApi) NavigationAppFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager$OnAppFocusOwnershipCallback", "onAppFocusOwnershipGranted", 244, "NavigationAppFocusManager.java")).o("Callback called with the wrong appType: %d", i);
            return;
        }
        synchronized (this.a) {
            this.a.b.pollFirst();
            if (!this.a.f()) {
                ((ParameterizedLoggerApi) NavigationAppFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager$OnAppFocusOwnershipCallback", "onAppFocusOwnershipGranted", 235, "NavigationAppFocusManager.java")).n("We have gained focus before starting NavigationAppFocusManager. MD not updated.");
                return;
            }
            this.a.d.getContentResolver().delete(ClusterImageProvider.b, null, null);
            this.a.c.nativeSetNavFocus(GalReceiver.b);
            this.a.c();
        }
    }

    @Override // android.car.CarAppFocusManager.OnAppFocusOwnershipCallback
    public final void onAppFocusOwnershipLost(int i) {
        if (NavInstructionTypeEnum != 1) {
            ((ParameterizedLoggerApi) NavigationAppFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager$OnAppFocusOwnershipCallback", "onAppFocusOwnershipLost", 224, "NavigationAppFocusManager.java")).o("Callback called with the wrong appType: %d", i);
            return;
        }
        synchronized (this.a) {
            if (this.a.f()) {
                this.a.c.nativeSetNavFocus(GalReceiver.a);
            } else {
                ((ParameterizedLoggerApi) NavigationAppFocusManager.a.c().h("com/google/android/apps/auto/aareceiver/context/NavigationAppFocusManager$OnAppFocusOwnershipCallback", "onAppFocusOwnershipLost", 216, "NavigationAppFocusManager.java")).n("We have lost focus before starting NavigationAppFocusManager. MD not updated.");
            }
        }
    }
}
