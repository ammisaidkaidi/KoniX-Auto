package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.agr;
import defpackage.ahx;

/* compiled from: PG */
/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {
    private static final String a = agr.b("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        agr a2 = agr.a();
        String.format("Received intent %s", intent);
        a2.d(new Throwable[0]);
        try {
            ahx c = ahx.c(context);
            BroadcastReceiver.PendingResult goAsync = goAsync();
            synchronized (ahx.a) {
                c.h = goAsync;
                if (c.g) {
                    c.h.finish();
                    c.h = null;
                }
            }
        } catch (IllegalStateException e) {
            agr.a();
            agr.e(a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
