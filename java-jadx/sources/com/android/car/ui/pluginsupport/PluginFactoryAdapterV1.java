package com.android.car.ui.pluginsupport;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.car.ui.FocusArea;
import com.android.car.ui.FocusAreaAdapterV1;
import com.android.car.ui.FocusParkingView;
import com.android.car.ui.FocusParkingViewAdapterV1;
import com.android.car.ui.appstyledview.AppStyledViewControllerAdapterV1;
import com.android.car.ui.baselayout.Insets;
import com.android.car.ui.plugin.oemapis.FocusAreaOEMV1;
import com.android.car.ui.plugin.oemapis.FocusParkingViewOEMV1;
import com.android.car.ui.plugin.oemapis.InsetsOEMV1;
import com.android.car.ui.plugin.oemapis.PluginFactoryOEMV1;
import com.android.car.ui.plugin.oemapis.appstyledview.AppStyledViewControllerOEMV1;
import com.android.car.ui.plugin.oemapis.toolbar.ToolbarControllerOEMV1;
import com.android.car.ui.recyclerview.CarUiRecyclerView;
import com.android.car.ui.toolbar.ToolbarControllerAdapterV1;
import defpackage.ana;
import defpackage.anb;
import defpackage.anc;
import defpackage.anh;
import defpackage.anl;
import defpackage.are;
import defpackage.asl;
import defpackage.qq;
import j$.util.function.Consumer;
import j$.util.function.Function;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PluginFactoryAdapterV1 implements anh {
    private final anl mFactoryStub = new anl();
    private final PluginFactoryOEMV1 mOem;

    public PluginFactoryAdapterV1(PluginFactoryOEMV1 pluginFactoryOEMV1) {
        this.mOem = pluginFactoryOEMV1;
        pluginFactoryOEMV1.setRotaryFactories(new Function() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV1$$ExternalSyntheticLambda1
            @Override // j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return PluginFactoryAdapterV1.lambda$new$0((Context) obj);
            }

            @Override // j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        }, new Function() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV1$$ExternalSyntheticLambda2
            @Override // j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // j$.util.function.Function
            public final Object apply(Object obj) {
                return PluginFactoryAdapterV1.lambda$new$1((Context) obj);
            }

            @Override // j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        });
    }

    private Insets adaptInsets(InsetsOEMV1 insetsOEMV1) {
        return new Insets(insetsOEMV1.getLeft(), insetsOEMV1.getTop(), insetsOEMV1.getRight(), insetsOEMV1.getBottom());
    }

    static /* synthetic */ FocusParkingViewOEMV1 lambda$new$0(Context context) {
        return new FocusParkingViewAdapterV1(new FocusParkingView(context));
    }

    static /* synthetic */ FocusAreaOEMV1 lambda$new$1(Context context) {
        return new FocusAreaAdapterV1(new FocusArea(context));
    }

    public ana createAppStyledView(Context context) {
        AppStyledViewControllerOEMV1 createAppStyledView = this.mOem.createAppStyledView(context);
        return createAppStyledView == null ? new anb() : new AppStyledViewControllerAdapterV1(createAppStyledView);
    }

    public qq createListItemAdapter(List list) {
        return anl.a(list);
    }

    @Override // defpackage.anh
    public CarUiRecyclerView createRecyclerView(Context context, AttributeSet attributeSet) {
        return this.mFactoryStub.createRecyclerView(context, attributeSet);
    }

    @Override // defpackage.anh
    public asl createTextView(Context context, AttributeSet attributeSet) {
        return this.mFactoryStub.createTextView(context, attributeSet);
    }

    @Override // defpackage.anh
    public are installBaseLayoutAround(View view, final anc ancVar, boolean z, boolean z2) {
        if (!this.mOem.customizesBaseLayout()) {
            return this.mFactoryStub.installBaseLayoutAround(view, ancVar, z, z2);
        }
        ToolbarControllerOEMV1 installBaseLayoutAround = this.mOem.installBaseLayoutAround(view.getContext(), view, new Consumer() { // from class: com.android.car.ui.pluginsupport.PluginFactoryAdapterV1$$ExternalSyntheticLambda0
            @Override // j$.util.function.Consumer
            public final void accept(Object obj) {
                PluginFactoryAdapterV1.this.m0x3d1d62aa(ancVar, (InsetsOEMV1) obj);
            }

            @Override // j$.util.function.Consumer
            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer.CC.$default$andThen(this, consumer);
            }
        }, z, z2);
        if (installBaseLayoutAround != null) {
            return new ToolbarControllerAdapterV1(view.getContext(), installBaseLayoutAround);
        }
        return null;
    }

    /* renamed from: lambda$installBaseLayoutAround$2$com-android-car-ui-pluginsupport-PluginFactoryAdapterV1, reason: not valid java name */
    public /* synthetic */ void m0x3d1d62aa(anc ancVar, InsetsOEMV1 insetsOEMV1) {
        ancVar.a(adaptInsets(insetsOEMV1));
    }
}
