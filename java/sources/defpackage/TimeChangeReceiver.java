package defpackage;

import android.content.IntentFilter;

/* compiled from: PG */
/* loaded from: classes.dex */
final class TimeChangeReceiver extends NightModeReceiverBase {
    public final TwilightStateHolder a;
    final /* synthetic */ AppCompatDelegateImpl b;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public TimeChangeReceiver(AppCompatDelegateImpl jwVar, TwilightStateHolder kcVar) {
        super(jwVar);
        this.b = jwVar;
        this.a = kcVar;
    }

    @Override // defpackage.NightModeReceiverBase
    public final IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.TIME_TICK");
        return intentFilter;
    }

    @Override // defpackage.NightModeReceiverBase
    public final void b() {
        this.b.G();
    }
}
