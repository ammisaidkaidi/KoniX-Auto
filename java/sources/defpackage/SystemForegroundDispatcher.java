package defpackage;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SystemForegroundDispatcher implements WorkConstraintsCallback, ahc {
    public static final String a = WorkLogger.b("SystemFgDispatcher");
    public final WorkManagerImpl b;
    final Object c = new Object();
    String d;
    final Map e;
    final Map f;
    final Set g;
    final WorkConstraintsTracker h;
    public ForegroundNotificationUpdater i;
    public final WorkTaskExecutorHolder j;
    private final Context k;

    public SystemForegroundDispatcher(Context context) {
        this.k = context;
        WorkManagerImpl c = WorkManagerImpl.c(context);
        this.b = c;
        WorkTaskExecutorHolder amhVar = c.i;
        this.j = amhVar;
        this.d = null;
        this.e = new LinkedHashMap();
        this.g = new HashSet();
        this.f = new HashMap();
        this.h = new WorkConstraintsTracker(context, amhVar, this);
        c.f.b(this);
    }

    public static Intent b(Context context, String str, WorkForegroundInfo aglVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", aglVar.a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", aglVar.b);
        intent.putExtra("KEY_NOTIFICATION", aglVar.c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent c(Context context, String str, WorkForegroundInfo aglVar) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", aglVar.a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", aglVar.b);
        intent.putExtra("KEY_NOTIFICATION", aglVar.c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent d(Context context) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    @Override // defpackage.WorkExecutionListener
    public final void a(String str, boolean z) {
        Map.Entry entry;
        synchronized (this.c) {
            WorkSpec akkVar = (WorkSpec) this.f.remove(str);
            if (akkVar != null && this.g.remove(akkVar)) {
                this.h.a(this.g);
            }
        }
        WorkForegroundInfo aglVar = (WorkForegroundInfo) this.e.remove(str);
        if (str.equals(this.d) && this.e.size() > 0) {
            Iterator it = this.e.entrySet().iterator();
            Object next = it.next();
            while (true) {
                entry = (Map.Entry) next;
                if (!it.hasNext()) {
                    break;
                } else {
                    next = it.next();
                }
            }
            this.d = (String) entry.getKey();
            if (this.i != null) {
                WorkForegroundInfo aglVar2 = (WorkForegroundInfo) entry.getValue();
                this.i.c(aglVar2.a, aglVar2.b, aglVar2.c);
                this.i.a(aglVar2.a);
            }
        }
        ForegroundNotificationUpdater ajrVar = this.i;
        if (aglVar == null || ajrVar == null) {
            return;
        }
        WorkLogger a2 = WorkLogger.a();
        String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(aglVar.a), str, Integer.valueOf(aglVar.b));
        a2.d(new Throwable[0]);
        ajrVar.a(aglVar.a);
    }

    @Override // defpackage.WorkConstraintsCallback
    public final void e(List list) {
    }

    @Override // defpackage.WorkConstraintsCallback
    public final void f(List list) {
        if (list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            WorkLogger a2 = WorkLogger.a();
            String.format("Constraints unmet for WorkSpec %s", str);
            a2.d(new Throwable[0]);
            WorkManagerImpl ahxVar = this.b;
            ahxVar.i.a(new StopWorkRunnable(ahxVar, str, true));
        }
    }

    public final void g(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        WorkLogger a2 = WorkLogger.a();
        String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2));
        a2.d(new Throwable[0]);
        if (notification == null || this.i == null) {
            return;
        }
        this.e.put(stringExtra, new WorkForegroundInfo(intExtra, notification, intExtra2));
        if (TextUtils.isEmpty(this.d)) {
            this.d = stringExtra;
            this.i.c(intExtra, intExtra2, notification);
            return;
        }
        this.i.b(intExtra, notification);
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        Iterator it = this.e.entrySet().iterator();
        while (it.hasNext()) {
            i |= ((WorkForegroundInfo) ((Map.Entry) it.next()).getValue()).b;
        }
        WorkForegroundInfo aglVar = (WorkForegroundInfo) this.e.get(this.d);
        if (aglVar != null) {
            this.i.c(aglVar.a, i, aglVar.c);
        }
    }

    public final void h() {
        this.i = null;
        synchronized (this.c) {
            this.h.b();
        }
        this.b.f.c(this);
    }
}
