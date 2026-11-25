package defpackage;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.work.impl.WorkDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aif {
    static {
        agr.b("Alarms");
    }

    public static void a(Context context, ahx ahxVar, String str) {
        akc p = ahxVar.d.p();
        ajz a = p.a(str);
        if (a != null) {
            c(context, str, a.b);
            agr a2 = agr.a();
            String.format("Removing SystemIdInfo for workSpecId (%s)", str);
            a2.d(new Throwable[0]);
            p.c(str);
        }
    }

    public static void b(Context context, ahx ahxVar, String str, long j) {
        int a;
        WorkDatabase workDatabase = ahxVar.d;
        akc p = workDatabase.p();
        ajz a2 = p.a(str);
        if (a2 != null) {
            c(context, str, a2.b);
            d(context, str, a2.b, j);
            return;
        }
        ald aldVar = new ald(workDatabase);
        synchronized (ald.class) {
            a = aldVar.a("next_alarm_manager_id");
        }
        p.b(new ajz(str, a));
        d(context, str, a, j);
    }

    private static void c(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, aig.c(context, str), 603979776);
        if (service == null || alarmManager == null) {
            return;
        }
        agr a = agr.a();
        String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i));
        a.d(new Throwable[0]);
        alarmManager.cancel(service);
    }

    private static void d(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, aig.c(context, str), 201326592);
        if (alarmManager != null) {
            alarmManager.setExact(0, j, service);
        }
    }
}
