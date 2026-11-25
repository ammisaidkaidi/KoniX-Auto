package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class azf extends azj {
    private final BroadcastReceiver a = new aze(this);
    private final Context b;
    private boolean c;

    public azf(Context context) {
        this.b = context;
    }

    @Override // defpackage.azj
    public final cqw a() {
        return cqw.o(ckw.SENSOR_NIGHT_MODE);
    }

    public final void b(boolean z) {
        int i = 0;
        boolean z2 = (this.b.getResources().getConfiguration().uiMode & 48) == 32;
        if (z || this.c != z2) {
            this.c = z2;
            f(ckw.SENSOR_NIGHT_MODE, new azd(z2, i));
        }
    }

    @Override // defpackage.azj
    public final void c(cqw cqwVar) {
        this.b.registerReceiver(this.a, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
        b(true);
    }

    @Override // defpackage.azj
    protected final void d(cqw cqwVar) {
        this.b.unregisterReceiver(this.a);
    }
}
