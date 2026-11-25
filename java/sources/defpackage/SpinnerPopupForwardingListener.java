package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SpinnerPopupForwardingListener extends ForwardingListener {
    final /* synthetic */ SpinnerListPopupWindow a;
    final /* synthetic */ AppCompatSpinner b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public SpinnerPopupForwardingListener(AppCompatSpinner okVar, View view, SpinnerListPopupWindow ohVar) {
        super(view);
        this.b = okVar;
        this.a = ohVar;
    }

    @Override // defpackage.ForwardingListener
    public final MenuPopupInternalInterface a() {
        return this.a;
    }

    @Override // defpackage.ForwardingListener
    public final boolean b() {
        if (this.b.b.u()) {
            return true;
        }
        this.b.b();
        return true;
    }
}
