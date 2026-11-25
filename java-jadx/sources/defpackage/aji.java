package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class aji extends ajk {
    private final BroadcastReceiver f;

    static {
        agr.b("BrdcstRcvrCnstrntTrckr");
    }

    public aji(Context context, amh amhVar) {
        super(context, amhVar);
        this.f = new ajh(this);
    }

    public abstract IntentFilter a();

    public abstract void c(Intent intent);

    @Override // defpackage.ajk
    public final void d() {
        agr a = agr.a();
        String.format("%s: registering receiver", getClass().getSimpleName());
        a.d(new Throwable[0]);
        this.a.registerReceiver(this.f, a());
    }

    @Override // defpackage.ajk
    public final void e() {
        agr a = agr.a();
        String.format("%s: unregistering receiver", getClass().getSimpleName());
        a.d(new Throwable[0]);
        this.a.unregisterReceiver(this.f);
    }
}
