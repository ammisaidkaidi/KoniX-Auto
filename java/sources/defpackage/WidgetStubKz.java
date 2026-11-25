package defpackage;

import android.support.v7.view.menu.ActionMenuItemView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WidgetStubKz extends ForwardingListener {
    final /* synthetic */ ActionMenuItemView a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public WidgetStubKz(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.a = actionMenuItemView;
    }

    @Override // defpackage.ForwardingListener
    public final MenuPopupInternalInterface a() {
        MenuPopupHelperVariant mtVar;
        SimpleHolderLa laVar = this.a.c;
        if (laVar == null || (mtVar = laVar.a.j) == null) {
            return null;
        }
        return mtVar.a();
    }

    @Override // defpackage.ForwardingListener
    protected final boolean b() {
        MenuPopupInternalInterface a;
        ActionMenuItemView actionMenuItemView = this.a;
        SimpleInterfaceLn lnVar = actionMenuItemView.b;
        return lnVar != null && lnVar.b(actionMenuItemView.a) && (SingleStringProtoMessage = a()) != null && a.u();
    }
}
