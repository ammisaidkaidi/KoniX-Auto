package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WidgetStubMv extends ForwardingListener {
    final /* synthetic */ NrWidgetWithNaInterface a;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public WidgetStubMv(NrWidgetWithNaInterface mwVar, View view) {
        super(view);
        this.a = mwVar;
    }

    @Override // defpackage.ForwardingListener
    public final MenuPopupInternalInterface a() {
        CascadingMenuPopup mxVar = this.a.a.i;
        if (mxVar == null) {
            return null;
        }
        return mxVar.a();
    }

    @Override // defpackage.ForwardingListener
    public final boolean b() {
        this.a.a.m();
        return true;
    }

    @Override // defpackage.ForwardingListener
    public final boolean c() {
        MenuPopupHelper_mz mzVar = this.a.a;
        if (mzVar.k != null) {
            return false;
        }
        mzVar.k();
        return true;
    }
}
