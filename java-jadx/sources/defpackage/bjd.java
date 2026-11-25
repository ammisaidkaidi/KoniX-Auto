package defpackage;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bjd extends bje {
    private static final Object d = new Object();
    public static final bjd a = new bjd();

    public final void a(Context context, int i, PendingIntent pendingIntent) {
        int i2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i), null), new IllegalArgumentException());
        if (i == 18) {
            new bjc(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String e = i == 6 ? bmq.e(context, "common_google_play_services_resolution_required_title") : bmq.c(context, i);
        if (e == null) {
            e = context.getResources().getString(R.string.common_google_play_services_notification_ticker);
        }
        String d2 = (i == 6 || i == 19) ? bmq.d(context, "common_google_play_services_resolution_required_text", bmq.a(context)) : bmq.b(context, i);
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        hr.d(systemService);
        NotificationManager notificationManager = (NotificationManager) systemService;
        dg dgVar = new dg(context);
        dgVar.j = true;
        dgVar.f(16);
        dgVar.e(e);
        df dfVar = new df();
        dfVar.a = dg.c(d2);
        dgVar.h(dfVar);
        if (ir.b(context)) {
            dgVar.g(context.getApplicationInfo().icon);
            dgVar.h = 2;
            ir.c(context);
            dgVar.g = pendingIntent;
        } else {
            dgVar.g(android.R.drawable.stat_sys_warning);
            dgVar.i(resources.getString(R.string.common_google_play_services_notification_ticker));
            dgVar.m.when = System.currentTimeMillis();
            dgVar.g = pendingIntent;
            dgVar.d(d2);
        }
        synchronized (d) {
        }
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
        String string = context.getResources().getString(R.string.common_google_play_services_notification_channel_name);
        if (notificationChannel == null) {
            notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
        } else if (!string.contentEquals(notificationChannel.getName())) {
            notificationChannel.setName(string);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        dgVar.l = "com.google.android.gms.availability";
        Notification a2 = dgVar.a();
        switch (i) {
            case 1:
            case 2:
            case 3:
                bjp.a.set(false);
                i2 = 10436;
                break;
            default:
                i2 = 39789;
                break;
        }
        notificationManager.notify(i2, a2);
    }
}
