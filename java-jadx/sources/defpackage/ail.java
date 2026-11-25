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
final class ail implements Runnable {
    final /* synthetic */ aip a;

    public ail(aip aipVar) {
        this.a = aipVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aip aipVar;
        aio aioVar;
        synchronized (this.a.g) {
            aip aipVar2 = this.a;
            aipVar2.h = (Intent) aipVar2.g.get(0);
        }
        Intent intent = this.a.h;
        if (intent != null) {
            String action = intent.getAction();
            int intExtra = this.a.h.getIntExtra("KEY_START_ID", 0);
            agr a = agr.a();
            Integer valueOf = Integer.valueOf(intExtra);
            String.format("Processing command %s, %s", this.a.h, valueOf);
            a.d(new Throwable[0]);
            PowerManager.WakeLock a2 = alk.a(this.a.b, String.format("%s (%s)", action, valueOf));
            try {
                agr a3 = agr.a();
                String.format("Acquiring operation wake lock (%s) %s", action, a2);
                a3.d(new Throwable[0]);
                a2.acquire();
                aip aipVar3 = this.a;
                aig aigVar = aipVar3.f;
                Intent intent2 = aipVar3.h;
                String action2 = intent2.getAction();
                if ("ACTION_CONSTRAINTS_CHANGED".equals(action2)) {
                    agr a4 = agr.a();
                    String.format("Handling constraints changed %s", intent2);
                    a4.d(new Throwable[0]);
                    int i = aij.a;
                    Context context = aigVar.b;
                    aiv aivVar = new aiv(context, aipVar3.j, null);
                    List<akk> c = aipVar3.e.d.n().c();
                    aih.a(context, c);
                    aivVar.a(c);
                    ArrayList arrayList = new ArrayList(c.size());
                    long currentTimeMillis = System.currentTimeMillis();
                    for (akk akkVar : c) {
                        String str = akkVar.b;
                        if (currentTimeMillis >= akkVar.a() && (!akkVar.b() || aivVar.c(str))) {
                            arrayList.add(akkVar);
                        }
                    }
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String str2 = ((akk) arrayList.get(i2)).b;
                        Intent c2 = aig.c(context, str2);
                        agr a5 = agr.a();
                        String.format("Creating a delay_met command for workSpec with id (%s)", str2);
                        a5.d(new Throwable[0]);
                        aipVar3.d(new aim(aipVar3, c2, intExtra));
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
                            agr a6 = agr.a();
                            String.format("Handling schedule work for %s", string);
                            a6.d(new Throwable[0]);
                            WorkDatabase workDatabase = aipVar3.e.d;
                            workDatabase.f();
                            try {
                                akk a7 = workDatabase.n().a(string);
                                if (a7 == null) {
                                    agr.a();
                                    agr.g(aig.a, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
                                } else if (fv.A(a7.q)) {
                                    agr.a();
                                    agr.g(aig.a, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
                                } else {
                                    long a8 = a7.a();
                                    if (a7.b()) {
                                        agr a9 = agr.a();
                                        String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(a8));
                                        a9.d(new Throwable[0]);
                                        aif.b(aigVar.b, aipVar3.e, string, a8);
                                        aipVar3.d(new aim(aipVar3, aig.b(aigVar.b), intExtra));
                                    } else {
                                        agr a10 = agr.a();
                                        String.format("Setting up Alarms for %s at %s", string, Long.valueOf(a8));
                                        a10.d(new Throwable[0]);
                                        aif.b(aigVar.b, aipVar3.e, string, a8);
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
                                agr a11 = agr.a();
                                String.format("Handing delay met for %s", string2);
                                a11.d(new Throwable[0]);
                                if (aigVar.c.containsKey(string2)) {
                                    agr a12 = agr.a();
                                    String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string2);
                                    a12.d(new Throwable[0]);
                                } else {
                                    aik aikVar = new aik(aigVar.b, intExtra, string2, aipVar3);
                                    aigVar.c.put(string2, aikVar);
                                    aikVar.f = alk.a(aikVar.a, String.format("%s (%s)", aikVar.c, Integer.valueOf(aikVar.b)));
                                    agr a13 = agr.a();
                                    String.format("Acquiring wakelock %s for WorkSpec %s", aikVar.f, aikVar.c);
                                    a13.d(new Throwable[0]);
                                    aikVar.f.acquire();
                                    akk a14 = aikVar.d.e.d.n().a(aikVar.c);
                                    if (a14 == null) {
                                        aikVar.c();
                                    } else {
                                        boolean b = a14.b();
                                        aikVar.g = b;
                                        if (b) {
                                            aikVar.e.a(Collections.singletonList(a14));
                                        } else {
                                            agr a15 = agr.a();
                                            String.format("No constraints for %s", aikVar.c);
                                            a15.d(new Throwable[0]);
                                            aikVar.e(Collections.singletonList(aikVar.c));
                                        }
                                    }
                                }
                            }
                        } else if ("ACTION_STOP_WORK".equals(action2)) {
                            String string3 = intent2.getExtras().getString("KEY_WORKSPEC_ID");
                            agr a16 = agr.a();
                            String.format("Handing stopWork work for %s", string3);
                            a16.d(new Throwable[0]);
                            aipVar3.e.g(string3);
                            aif.a(aigVar.b, aipVar3.e, string3);
                            aipVar3.a(string3, false);
                        } else if ("ACTION_EXECUTION_COMPLETED".equals(action2)) {
                            Bundle extras3 = intent2.getExtras();
                            String string4 = extras3.getString("KEY_WORKSPEC_ID");
                            boolean z = extras3.getBoolean("KEY_NEEDS_RESCHEDULE");
                            agr a17 = agr.a();
                            String.format("Handling onExecutionCompleted %s, %s", intent2, Integer.valueOf(intExtra));
                            a17.d(new Throwable[0]);
                            aigVar.a(string4, z);
                        } else {
                            agr.a();
                            agr.g(aig.a, String.format("Ignoring intent %s", intent2), new Throwable[0]);
                        }
                    }
                    agr.a();
                    agr.e(aig.a, String.format("Invalid request for %s, requires %s.", action2, "KEY_WORKSPEC_ID"), new Throwable[0]);
                    break;
                } else {
                    agr a18 = agr.a();
                    String.format("Handling reschedule %s, %s", intent2, valueOf);
                    a18.d(new Throwable[0]);
                    aipVar3.e.e();
                }
                agr a19 = agr.a();
                String.format("Releasing operation wake lock (%s) %s", action, a2);
                a19.d(new Throwable[0]);
                a2.release();
                aipVar = this.a;
                aioVar = new aio(aipVar);
            } catch (Throwable th) {
                try {
                    agr.a();
                    agr.e(aip.a, "Unexpected error in onHandleIntent", th);
                    agr a20 = agr.a();
                    String.format("Releasing operation wake lock (%s) %s", action, a2);
                    a20.d(new Throwable[0]);
                    a2.release();
                    aipVar = this.a;
                    aioVar = new aio(aipVar);
                } catch (Throwable th2) {
                    agr a21 = agr.a();
                    String.format("Releasing operation wake lock (%s) %s", action, a2);
                    a21.d(new Throwable[0]);
                    a2.release();
                    aip aipVar4 = this.a;
                    aipVar4.d(new aio(aipVar4));
                    throw th2;
                }
            }
            aipVar.d(aioVar);
        }
    }
}
