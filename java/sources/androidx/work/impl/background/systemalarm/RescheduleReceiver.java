package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.WorkLogger;
import defpackage.WorkManagerImpl;

/* compiled from: PG */
/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {
    private static final String a = WorkLogger.b("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        WorkLogger a2 = WorkLogger.a();
        String.format("Received intent %s", intent);
        a2.d(new Throwable[0]);
        try {
            WorkManagerImpl c = WorkManagerImpl.c(context);
            BroadcastReceiver.PendingResult goAsync = goAsync();
            synchronized (ahx.a) {
                c.h = goAsync;
                if (c.g) {
                    c.h.finish();
                    c.h = null;
                }
            }
        } catch (IllegalStateException e) {
            WorkLogger.a();
            WorkLogger.e(a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
