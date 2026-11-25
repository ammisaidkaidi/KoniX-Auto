package com.android.car.ui.toolbar;

import com.android.car.ui.plugin.oemapis.toolbar.TabOEMV1;
import defpackage.ToolbarTab;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
class TabAdapterV1 {
    private final ToolbarTab mClientTab;
    private final TabOEMV1 mPluginTab;

    public TabAdapterV1(ToolbarTab aquVar) {
        this.mClientTab = aquVar;
        final Consumer consumer = aquVar.c;
        TabOEMV1.Builder onSelectedListener = TabOEMV1.builder().setIcon(aquVar.b).setTitle(aquVar.a).setOnSelectedListener(consumer == null ? null : new Runnable() { // from class: com.android.car.ui.toolbar.TabAdapterV1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                TabAdapterV1.this.m16lambda$new$0$comandroidcaruitoolbarTabAdapterV1(consumer);
            }
        });
        boolean z = aquVar.d;
        this.mPluginTab = onSelectedListener.setTinted(true).build();
    }

    public ToolbarTab getClientTab() {
        return this.mClientTab;
    }

    public TabOEMV1 getPluginTab() {
        return this.mPluginTab;
    }

    /* renamed from: lambda$new$0$com-android-car-ui-toolbar-TabAdapterV1, reason: not valid java name */
    public /* synthetic */ void m16lambda$new$0$comandroidcaruitoolbarTabAdapterV1(Consumer consumer) {
        consumer.accept(this.mClientTab);
    }
}
