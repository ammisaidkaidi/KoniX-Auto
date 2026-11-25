package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.PowerManager;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SystemAlarmDispatcher implements Runnable {
    final /* synthetic */ SystemAlarmScheduler a;

    public SystemAlarmDispatcher(SystemAlarmScheduler aipVar) {
        this.a = aipVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SystemAlarmScheduler aipVar;
        AlarmCommandDequeueRunnable aioVar;
        synchronized (this.a.g) {
            SystemAlarmScheduler aipVar2 = this.a;
            aipVar2.h = (Intent) aipVar2.g.get(0);
        }
        Intent intent = this.a.h;
        if (intent != null) {
            String action = intent.getAction();
            int intExtra = this.a.h.getIntExtra("KEY_START_ID", 0);
            WorkLogger a = WorkLogger.a();
            Integer valueOf = Integer.valueOf(intExtra);
            String.format("Processing command %s, %s", this.a.h, valueOf);
            a.d(new Throwable[0]);
            PowerManager.WakeLock a2 = WorkWakeLocks.a(this.a.b, String.format("%s (%s)", action, valueOf));
            try {
                WorkLogger a3 = WorkLogger.a();
                String.format("Acquiring operation wake lock (%s) %s", action, a2);
                a3.d(new Throwable[0]);
                a2.acquire();
                SystemAlarmScheduler aipVar3 = this.a;
                SystemAlarmExecutionListener aigVar = aipVar3.f;
                Intent intent2 = aipVar3.h;
                String action2 = intent2.getAction();
                if ("ACTION_CONSTRAINTS_CHANGED".equals(action2)) {
                    WorkLogger a4 = WorkLogger.a();
                    String.format("Handling constraints changed %s", intent2);
                    a4.d(new Throwable[0]);
                    int i = aij.a;
                    Context context = aigVar.b;
                    WorkConstraintsTracker aivVar = new WorkConstraintsTracker(context, aipVar3.j, null);
                    List<WorkSpec> c = aipVar3.e.d.n().c();
                    ConstraintProxyBroadcastReceiver.a(context, c);
                    aivVar.a(PhenotypeFlagMessage);
                    ArrayList arrayList = new ArrayList(c.size());
                    long currentTimeMillis = System.currentTimeMillis();
                    for (WorkSpec akkVar : c) {
                        String str = akkVar.b;
                        if (currentTimeMillis >= akkVar.a() && (!akkVar.b() || aivVar.c(str))) {
                            arrayList.add(akkVar);
                        }
                    }
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String str2 = ((WorkSpec) arrayList.get(i2)).b;
                        Intent c2 = SystemAlarmExecutionListener.c(context, str2);
                        WorkLogger a5 = WorkLogger.a();
                        String.format("Creating a delay_met command for workSpec with id (%s)", str2);
                        a5.d(new Throwable[0]);
                        aipVar3.d(new SystemAlarmCompletionRunnable(aipVar3, c2, intExtra));
                    }
                    aivVar.b();
                } else if (!"ACTION_RESCHEDULE".equals(action2)) {
                    Bundle extras = intent2.getExtras();
                    String[] strArr = {"KEY_WORKSPEC_ID"};
                    if (extras != null && !extras.isEmpty()) {
                        for (int i3 = 0; i3 <= 0; i3++) {
                            if (extras.get(strArr[i3]) != null) {
                            }
                        }
                        if ("ACTION_SCHEDULE_WORK".equals(action2)) {
                            String string = intent2.getExtras().getString("KEY_WORKSPEC_ID");
                            WorkLogger a6 = WorkLogger.a();
                            String.format("Handling schedule work for %s", string);
                            a6.d(new Throwable[0]);
                            WorkDatabase workDatabase = aipVar3.e.d;
                            workDatabase.f();
                            try {
                                WorkSpec a7 = workDatabase.n().a(string);
                                if (a7 == null) {
                                    WorkLogger.a();
                                    WorkLogger.g(aig.a, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
                                } else if (GuavaCollectPreconditionsUtil.A(a7.q)) {
                                    WorkLogger.a();
                                    WorkLogger.g(aig.a, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
                                } else {
                                    long a8 = a7.a();
                                    if (a7.b()) {
                                        WorkLogger a9 = WorkLogger.a();
                                        String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(a8));
                                        a9.d(new Throwable[0]);
                                        SystemIdInfoStore.b(aigVar.b, aipVar3.e, string, a8);
                                        aipVar3.d(new SystemAlarmCompletionRunnable(aipVar3, SystemAlarmExecutionListener.b(aigVar.b), intExtra));
                                    } else {
                                        WorkLogger a10 = WorkLogger.a();
                                        String.format("Setting up Alarms for %s at %s", string, Long.valueOf(a8));
                                        a10.d(new Throwable[0]);
                                        SystemIdInfoStore.b(aigVar.b, aipVar3.e, string, a8);
                                    }
                                    workDatabase.h();
                                }
                            } finally {
                                workDatabase.g();
                            }
                        } else if ("ACTION_DELAY_MET".equals(action2)) {
                            Bundle extras2 = intent2.getExtras();
                            synchronized (aigVar.d) {
                                String string2 = extras2.getString("KEY_WORKSPEC_ID");
                                WorkLogger a11 = WorkLogger.a();
                                String.format("Handing delay met for %s", string2);
                                a11.d(new Throwable[0]);
                                if (aigVar.c.containsKey(string2)) {
                                    WorkLogger a12 = WorkLogger.a();
                                    String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string2);
                                    a12.d(new Throwable[0]);
                                } else {
                                    DelayMetCommandHandler aikVar = new DelayMetCommandHandler(aigVar.b, intExtra, string2, aipVar3);
                                    aigVar.c.put(string2, aikVar);
                                    aikVar.f = WorkWakeLocks.a(aikVar.a, String.format("%s (%s)", aikVar.c, Integer.valueOf(aikVar.b)));
                                    WorkLogger a13 = WorkLogger.a();
                                    String.format("Acquiring wakelock %s for WorkSpec %s", aikVar.f, aikVar.c);
                                    a13.d(new Throwable[0]);
                                    aikVar.f.acquire();
                                    WorkSpec a14 = aikVar.d.e.d.n().a(aikVar.c);
                                    if (a14 == null) {
                                        aikVar.c();
                                    } else {
                                        boolean b = a14.b();
                                        aikVar.g = b;
                                        if (ProtoLiteMessageBase) {
                                            aikVar.e.a(Collections.singletonList(a14));
                                        } else {
                                            WorkLogger a15 = WorkLogger.a();
                                            String.format("No constraints for %s", aikVar.c);
                                            a15.d(new Throwable[0]);
                                            aikVar.e(Collections.singletonList(aikVar.c));
                                        }
                                    }
                                }
                            }
                        } else if ("ACTION_STOP_WORK".equals(action2)) {
                            String string3 = intent2.getExtras().getString("KEY_WORKSPEC_ID");
                            WorkLogger a16 = WorkLogger.a();
                            String.format("Handing stopWork work for %s", string3);
                            a16.d(new Throwable[0]);
                            aipVar3.e.g(string3);
                            SystemIdInfoStore.a(aigVar.b, aipVar3.e, string3);
                            aipVar3.a(string3, false);
                        } else if ("ACTION_EXECUTION_COMPLETED".equals(action2)) {
                            Bundle extras3 = intent2.getExtras();
                            String string4 = extras3.getString("KEY_WORKSPEC_ID");
                            boolean z = extras3.getBoolean("KEY_NEEDS_RESCHEDULE");
                            WorkLogger a17 = WorkLogger.a();
                            String.format("Handling onExecutionCompleted %s, %s", intent2, Integer.valueOf(intExtra));
                            a17.d(new Throwable[0]);
                            aigVar.a(string4, z);
                        } else {
                            WorkLogger.a();
                            WorkLogger.g(aig.a, String.format("Ignoring intent %s", intent2), new Throwable[0]);
                        }
                    }
                    WorkLogger.a();
                    WorkLogger.e(aig.a, String.format("Invalid request for %s, requires %s.", action2, "KEY_WORKSPEC_ID"), new Throwable[0]);
                    break;
                } else {
                    WorkLogger a18 = WorkLogger.a();
                    String.format("Handling reschedule %s, %s", intent2, valueOf);
                    a18.d(new Throwable[0]);
                    aipVar3.e.e();
                }
                WorkLogger a19 = WorkLogger.a();
                String.format("Releasing operation wake lock (%s) %s", action, a2);
                a19.d(new Throwable[0]);
                a2.release();
                aipVar = this.a;
                aioVar = new AlarmCommandDequeueRunnable(aipVar);
            } catch (Throwable th) {
                try {
                    WorkLogger.a();
                    WorkLogger.e(aip.a, "Unexpected error in onHandleIntent", th);
                    WorkLogger a20 = WorkLogger.a();
                    String.format("Releasing operation wake lock (%s) %s", action, a2);
                    a20.d(new Throwable[0]);
                    a2.release();
                    aipVar = this.a;
                    aioVar = new AlarmCommandDequeueRunnable(aipVar);
                } catch (Throwable th2) {
                    WorkLogger a21 = WorkLogger.a();
                    String.format("Releasing operation wake lock (%s) %s", action, a2);
                    a21.d(new Throwable[0]);
                    a2.release();
                    SystemAlarmScheduler aipVar4 = this.a;
                    aipVar4.d(new AlarmCommandDequeueRunnable(aipVar4));
                    throw th2;
                }
            }
            aipVar.d(aioVar);
        }
    }
}
