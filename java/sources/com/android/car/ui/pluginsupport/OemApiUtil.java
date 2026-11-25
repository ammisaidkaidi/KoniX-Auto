package com.android.car.ui.pluginsupport;

import android.content.Context;
import android.util.Log;
import com.android.car.ui.plugin.oemapis.PluginFactoryOEMV1;
import com.android.car.ui.plugin.oemapis.PluginFactoryOEMV2;
import com.android.car.ui.plugin.oemapis.PluginVersionProviderOEMV1;
import defpackage.CarUiViewFactory;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class OemApiUtil {
    private static final String TAG = "carui";

    private OemApiUtil() {
    }

    private static boolean classExists(String str) {
        if (str == null) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    static CarUiViewFactory getPluginFactory(Context context, String str) {
        Object obj;
        PluginVersionProviderAdapterV1 pluginVersionProviderAdapterV1;
        try {
            obj = Class.forName("com.android.car.ui.plugin.PluginVersionProviderImpl").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            obj = null;
        } catch (ReflectiveOperationException e2) {
            Log.e(TAG, "PluginVersionProviderImpl could not be instantiated!", e2);
            obj = null;
        }
        if (obj instanceof PluginVersionProviderOEMV1) {
            pluginVersionProviderAdapterV1 = new PluginVersionProviderAdapterV1((PluginVersionProviderOEMV1) obj);
        } else {
            Log.e(TAG, "PluginVersionProviderImpl was not instanceof any known versions of PluginVersionProviderOEMV#.");
            pluginVersionProviderAdapterV1 = null;
        }
        if (pluginVersionProviderAdapterV1 == null) {
            return null;
        }
        Object pluginFactory = pluginVersionProviderAdapterV1.getPluginFactory(1, context, str);
        if (pluginFactory instanceof PluginFactoryOEMV1) {
            return new PluginFactoryAdapterV1((PluginFactoryOEMV1) pluginFactory);
        }
        if (classExists("com.android.car.ui.plugin.oemapis.PluginFactoryOEMV2") && (pluginFactory instanceof PluginFactoryOEMV2)) {
            return new PluginFactoryAdapterV2((PluginFactoryOEMV2) pluginFactory);
        }
        Log.e(TAG, "PluginVersionProvider found, but did not provide a factory implementing any known interfaces!");
        return null;
    }
}
