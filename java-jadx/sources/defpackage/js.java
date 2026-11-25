package defpackage;

import android.content.IntentFilter;

/* compiled from: PG */
/* loaded from: classes.dex */
final class js extends jr {
    public final kc a;
    final /* synthetic */ jw b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public js(jw jwVar, kc kcVar) {
        super(jwVar);
        this.b = jwVar;
        this.a = kcVar;
    }

    @Override // defpackage.jr
    public final IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.TIME_TICK");
        return intentFilter;
    }

    @Override // defpackage.jr
    public final void b() {
        this.b.G();
    }
}
