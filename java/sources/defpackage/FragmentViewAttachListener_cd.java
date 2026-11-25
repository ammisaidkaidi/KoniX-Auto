package defpackage;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentViewAttachListener_cd implements View.OnAttachStateChangeListener {
    final /* synthetic */ FragmentStateManager a;
    final /* synthetic */ FragmentLayoutInflaterFactory b;

    public FragmentViewAttachListener_cd(FragmentLayoutInflaterFactory ceVar, FragmentStateManager cxVar) {
        this.b = ceVar;
        this.a = cxVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        FragmentStateManager cxVar = this.a;
        AndroidxFragment brVar = cxVar.c;
        cxVar.d();
        SpecialEffectsContainerState.b((ViewGroup) brVar.P.getParent(), this.b.a).c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
