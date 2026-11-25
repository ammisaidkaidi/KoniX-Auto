package com.android.car.ui.pluginsupport;

import com.android.car.ui.plugin.oemapis.recyclerview.ContentListItemOEMV1;
import defpackage.aoe;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class PluginFactoryAdapterV2$$ExternalSyntheticLambda1 implements Consumer {
    public /* synthetic */ aoe f$0;

    @Override // j$.util.function.Consumer
    public final void accept(Object obj) {
        PluginFactoryAdapterV2.lambda$toOemListItem$3(this.f$0, (ContentListItemOEMV1) obj);
    }

    @Override // j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }
}
