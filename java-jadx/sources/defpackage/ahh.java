package defpackage;

import android.content.Context;
import android.database.Cursor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ahh {
    static {
        agr.b("Schedulers");
    }

    static ahg a(Context context, ahx ahxVar) {
        air airVar = new air(context, ahxVar);
        ale.a(context, SystemJobService.class, true);
        agr.a().d(new Throwable[0]);
        return airVar;
    }

    public static void b(agf agfVar, WorkDatabase workDatabase, List list) {
        aeh aehVar;
        int s;
        int s2;
        int s3;
        int s4;
        int s5;
        int s6;
        int s7;
        int s8;
        int s9;
        int s10;
        int s11;
        int s12;
        int s13;
        akl aklVar;
        int s14;
        if (list == null || list.size() == 0) {
            return;
        }
        akl n = workDatabase.n();
        workDatabase.f();
        try {
            int i = agfVar.e;
            aeh a = aeh.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))", 1);
            a.d(1, 20L);
            ((akv) n).a.e();
            Cursor k = ((akv) n).a.k(a);
            try {
                s = ew.s(k, "required_network_type");
                s2 = ew.s(k, "requires_charging");
                s3 = ew.s(k, "requires_device_idle");
                s4 = ew.s(k, "requires_battery_not_low");
                s5 = ew.s(k, "requires_storage_not_low");
                s6 = ew.s(k, "trigger_content_update_delay");
                s7 = ew.s(k, "trigger_max_content_delay");
                s8 = ew.s(k, "content_uri_triggers");
                s9 = ew.s(k, "id");
                s10 = ew.s(k, "state");
                s11 = ew.s(k, "worker_class_name");
                s12 = ew.s(k, "input_merger_class_name");
                s13 = ew.s(k, "input");
                aklVar = n;
                s14 = ew.s(k, "output");
                aehVar = a;
            } catch (Throwable th) {
                th = th;
                aehVar = a;
            }
            try {
                int s15 = ew.s(k, "initial_delay");
                int s16 = ew.s(k, "interval_duration");
                int s17 = ew.s(k, "flex_duration");
                int s18 = ew.s(k, "run_attempt_count");
                int s19 = ew.s(k, "backoff_policy");
                int s20 = ew.s(k, "backoff_delay_duration");
                int s21 = ew.s(k, "period_start_time");
                int s22 = ew.s(k, "minimum_retention_duration");
                int s23 = ew.s(k, "schedule_requested_at");
                int s24 = ew.s(k, "run_in_foreground");
                int s25 = ew.s(k, "out_of_quota_policy");
                int i2 = s14;
                ArrayList arrayList = new ArrayList(k.getCount());
                while (k.moveToNext()) {
                    String string = k.getString(s9);
                    int i3 = s9;
                    String string2 = k.getString(s11);
                    int i4 = s11;
                    agh aghVar = new agh();
                    int i5 = s;
                    aghVar.i = fw.g(k.getInt(s));
                    aghVar.b = k.getInt(s2) != 0;
                    aghVar.c = k.getInt(s3) != 0;
                    aghVar.d = k.getInt(s4) != 0;
                    aghVar.e = k.getInt(s5) != 0;
                    int i6 = s2;
                    aghVar.f = k.getLong(s6);
                    aghVar.g = k.getLong(s7);
                    aghVar.h = fw.d(k.getBlob(s8));
                    akk akkVar = new akk(string, string2);
                    akkVar.q = fw.i(k.getInt(s10));
                    akkVar.d = k.getString(s12);
                    akkVar.e = agk.a(k.getBlob(s13));
                    int i7 = i2;
                    akkVar.f = agk.a(k.getBlob(i7));
                    int i8 = s3;
                    int i9 = s15;
                    int i10 = s4;
                    akkVar.g = k.getLong(i9);
                    int i11 = s16;
                    int i12 = s5;
                    akkVar.h = k.getLong(i11);
                    int i13 = s17;
                    akkVar.i = k.getLong(i13);
                    int i14 = s18;
                    akkVar.k = k.getInt(i14);
                    int i15 = s19;
                    i2 = i7;
                    akkVar.r = fw.f(k.getInt(i15));
                    s18 = i14;
                    s19 = i15;
                    int i16 = s20;
                    akkVar.l = k.getLong(i16);
                    int i17 = s21;
                    akkVar.m = k.getLong(i17);
                    int i18 = s22;
                    akkVar.n = k.getLong(i18);
                    s22 = i18;
                    int i19 = s23;
                    akkVar.o = k.getLong(i19);
                    int i20 = s24;
                    akkVar.p = k.getInt(i20) != 0;
                    int i21 = s25;
                    akkVar.s = fw.h(k.getInt(i21));
                    akkVar.j = aghVar;
                    arrayList.add(akkVar);
                    s25 = i21;
                    s23 = i19;
                    s3 = i8;
                    s4 = i10;
                    s15 = i9;
                    s9 = i3;
                    s11 = i4;
                    s = i5;
                    s21 = i17;
                    s5 = i12;
                    s16 = i11;
                    s17 = i13;
                    s20 = i16;
                    s24 = i20;
                    s2 = i6;
                }
                k.close();
                aehVar.i();
                List g = aklVar.g();
                if (arrayList.size() > 0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        akl aklVar2 = aklVar;
                        aklVar2.h(((akk) it.next()).b, currentTimeMillis);
                        aklVar = aklVar2;
                    }
                }
                workDatabase.h();
                workDatabase.g();
                if (arrayList.size() > 0) {
                    akk[] akkVarArr = (akk[]) arrayList.toArray(new akk[arrayList.size()]);
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        ahg ahgVar = (ahg) it2.next();
                        if (ahgVar.d()) {
                            ahgVar.c(akkVarArr);
                        }
                    }
                }
                if (g.size() > 0) {
                    akk[] akkVarArr2 = (akk[]) g.toArray(new akk[g.size()]);
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        ahg ahgVar2 = (ahg) it3.next();
                        if (!ahgVar2.d()) {
                            ahgVar2.c(akkVarArr2);
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                k.close();
                aehVar.i();
                throw th;
            }
        } catch (Throwable th3) {
            workDatabase.g();
            throw th3;
        }
    }
}
