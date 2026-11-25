package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ConstraintProxyBroadcastReceiver extends BroadcastReceiver {
    static {
        WorkLogger.b("ConstraintProxy");
    }

    static void a(Context context, List list) {
        Iterator it = list.iterator();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (it.hasNext()) {
            WorkConstraints aghVar = ((WorkSpec) it.next()).j;
            z4 |= aghVar.d;
            z |= aghVar.b;
            z2 |= aghVar.e;
            z3 |= aghVar.i != 1;
            if (z4 && z && z2 && z3) {
                break;
            }
        }
        context.sendBroadcast(ConstraintProxyUpdateReceiver.a(context, z4, z, z2, z3));
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        WorkLogger a = WorkLogger.a();
        String.format("onReceive : %s", intent);
        a.d(new Throwable[0]);
        context.startService(SystemAlarmExecutionListener.b(context));
    }
}
