package com.android.car.ui.toolbar;

import defpackage.ToolbarTab;
import j$.util.function.Function;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ToolbarControllerAdapterV1$$ExternalSyntheticLambda9 implements Function {
    public static final /* synthetic */ ToolbarControllerAdapterV1$$ExternalSyntheticLambda9 INSTANCE = new ToolbarControllerAdapterV1$$ExternalSyntheticLambda9();

    private /* synthetic */ ToolbarControllerAdapterV1$$ExternalSyntheticLambda9() {
    }

    @Override // j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return Function.CC.$default$andThen(this, function);
    }

    @Override // j$.util.function.Function
    public final Object apply(Object obj) {
        return new TabAdapterV1((ToolbarTab) obj);
    }

    @Override // j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Function.CC.$default$compose(this, function);
    }
}
