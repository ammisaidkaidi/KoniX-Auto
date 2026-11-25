package com.android.car.ui.core;

import android.app.Activity;
import android.view.View;
import com.android.car.ui.baselayout.Insets;
import com.google.android.embedded.projection.R;
import defpackage.CarUiInsetsListener;
import defpackage.CarUiInsetsUpdater;
import defpackage.OemPluginFactoryLoader;
import defpackage.CarUiToolbarController;
import defpackage.CarUiResourceUtils;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class BaseLayoutController {
    private static final Map sBaseLayoutMap = new WeakHashMap();
    private CarUiInsetsUpdater mInsetsUpdater;
    private CarUiToolbarController mToolbarController;

    private BaseLayoutController(Activity activity) {
        installBaseLayout(activity);
    }

    static void build(Activity activity) {
        if (CarUiResourceUtils.m(activity, R.attr.carUiBaseLayout)) {
            sBaseLayoutMap.put(activity, new BaseLayoutController(activity));
        }
    }

    static void destroy(Activity activity) {
        sBaseLayoutMap.remove(activity);
    }

    public static BaseLayoutController getBaseLayoutController(Activity activity) {
        return (BaseLayoutController) sBaseLayoutMap.get(activity);
    }

    private void installBaseLayout(Activity activity) {
        boolean m = CarUiResourceUtils.m(activity, R.attr.carUiToolbar);
        View g = CarUiResourceUtils.g(activity.getWindow().getDecorView(), android.R.id.content);
        this.mInsetsUpdater = new CarUiInsetsUpdater(activity, g);
        this.mToolbarController = OemPluginFactoryLoader.a(activity).installBaseLayoutAround(g, this.mInsetsUpdater, m, true);
    }

    void dispatchNewInsets(Insets insets) {
        this.mInsetsUpdater.a(insets);
    }

    public Insets getInsets() {
        return this.mInsetsUpdater.b;
    }

    public CarUiToolbarController getToolbarController() {
        return this.mToolbarController;
    }

    void replaceInsetsChangedListenerWith(CarUiInsetsListener ancVar) {
        this.mInsetsUpdater.a = ancVar;
    }
}
