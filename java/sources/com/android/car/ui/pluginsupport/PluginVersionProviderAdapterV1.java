package com.android.car.ui.pluginsupport;

import android.content.Context;
import com.android.car.ui.plugin.oemapis.PluginVersionProviderOEMV1;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PluginVersionProviderAdapterV1 {
    private PluginVersionProviderOEMV1 mOemProvider;

    public PluginVersionProviderAdapterV1(PluginVersionProviderOEMV1 pluginVersionProviderOEMV1) {
        this.mOemProvider = pluginVersionProviderOEMV1;
    }

    public Object getPluginFactory(int i, Context context, String str) {
        return this.mOemProvider.getPluginFactory(i, context, str);
    }
}
