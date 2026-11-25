package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.os.PowerManager;

/* compiled from: PG */
/* loaded from: classes.dex */
final class jp extends jr {
    public final PowerManager a;
    final /* synthetic */ jw b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jp(jw jwVar, Context context) {
        super(jwVar);
        this.b = jwVar;
        this.a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    @Override // defpackage.jr
    public final IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
        return intentFilter;
    }

    @Override // defpackage.jr
    public final void b() {
        this.b.G();
    }
}
