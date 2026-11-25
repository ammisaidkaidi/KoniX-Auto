package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.os.Bundle;
import android.view.LayoutInflater;
import com.android.car.ui.CarUiLayoutInflaterFactory;
import com.android.car.ui.baselayout.Insets;
import com.android.car.ui.core.BaseLayoutController;
import com.android.car.ui.core.CarUiInstaller;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ane implements Application.ActivityLifecycleCallbacks {
    private Insets a = null;
    private boolean b = false;

    private static final boolean a(Activity activity) {
        return aro.m(activity, R.attr.carUiActivity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        if (a(activity)) {
            String valueOf = String.valueOf(ComponentName.createRelative(activity, activity.getClass().getName()).flattenToShortString());
            if (valueOf.length() != 0) {
                "CarUiInstaller started for ".concat(valueOf);
            }
            LayoutInflater from = LayoutInflater.from(activity);
            if (from.getFactory2() == null) {
                from.setFactory2(new CarUiLayoutInflaterFactory());
            } else if (!(from.getFactory2() instanceof CarUiLayoutInflaterFactory) && !(from.getFactory2() instanceof jg)) {
                String valueOf2 = String.valueOf(from.getFactory2());
                String.valueOf(valueOf2).length();
                throw new AssertionError(String.valueOf(valueOf2).concat(" must extend CarUiLayoutInflaterFactory"));
            }
            CarUiInstaller.a(activity.getClassLoader(), BaseLayoutController.class, "build", null, activity);
            if (bundle != null) {
                this.a = new Insets(bundle.getInt("CAR_UI_INSET_LEFT"), bundle.getInt("CAR_UI_INSET_TOP"), bundle.getInt("CAR_UI_INSET_RIGHT"), bundle.getInt("CAR_UI_INSET_BOTTOM"));
            }
            this.b = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (a(activity)) {
            CarUiInstaller.a(activity.getClassLoader(), BaseLayoutController.class, "destroy", null, activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostStarted(Activity activity) {
        if (a(activity)) {
            Object a = CarUiInstaller.a(activity.getClassLoader(), BaseLayoutController.class, "getBaseLayoutController", null, activity);
            if (this.a == null || a == null || !this.b) {
                return;
            }
            CarUiInstaller.a(activity.getClassLoader(), BaseLayoutController.class, "dispatchNewInsets", a, CarUiInstaller.b(activity.getClassLoader(), this.a));
            this.b = false;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        Object a;
        if (a(activity) && (a = CarUiInstaller.a(activity.getClassLoader(), BaseLayoutController.class, "getBaseLayoutController", null, activity)) != null) {
            Object a2 = CarUiInstaller.a(activity.getClassLoader(), BaseLayoutController.class, "getInsets", a, new Object[0]);
            bundle.putInt("CAR_UI_INSET_LEFT", ((Integer) CarUiInstaller.a(activity.getClassLoader(), Insets.class, "getLeft", a2, new Object[0])).intValue());
            bundle.putInt("CAR_UI_INSET_TOP", ((Integer) CarUiInstaller.a(activity.getClassLoader(), Insets.class, "getTop", a2, new Object[0])).intValue());
            bundle.putInt("CAR_UI_INSET_RIGHT", ((Integer) CarUiInstaller.a(activity.getClassLoader(), Insets.class, "getRight", a2, new Object[0])).intValue());
            bundle.putInt("CAR_UI_INSET_BOTTOM", ((Integer) CarUiInstaller.a(activity.getClassLoader(), Insets.class, "getBottom", a2, new Object[0])).intValue());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
