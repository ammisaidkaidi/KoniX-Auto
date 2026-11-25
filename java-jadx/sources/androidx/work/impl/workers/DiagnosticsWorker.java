package androidx.work.impl.workers;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import defpackage.aeh;
import defpackage.agh;
import defpackage.agk;
import defpackage.agr;
import defpackage.ahx;
import defpackage.ajz;
import defpackage.akc;
import defpackage.akk;
import defpackage.akl;
import defpackage.akv;
import defpackage.akx;
import defpackage.ew;
import defpackage.ex;
import defpackage.fv;
import defpackage.fw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public class DiagnosticsWorker extends Worker {
    static {
        agr.b("DiagnosticsWrkr");
    }

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    private static void i(akx akxVar, akx akxVar2, akc akcVar, List list) {
        String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", "Job Id");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            akk akkVar = (akk) it.next();
            ajz a = akcVar.a(akkVar.b);
            Integer valueOf = a != null ? Integer.valueOf(a.b) : null;
            String str = akkVar.b;
            aeh a2 = aeh.a("SELECT name FROM workname WHERE work_spec_id=?", 1);
            if (str == null) {
                a2.e(1);
            } else {
                a2.f(1, str);
            }
            akxVar.a.e();
            Cursor k = akxVar.a.k(a2);
            try {
                ArrayList arrayList = new ArrayList(k.getCount());
                while (k.moveToNext()) {
                    arrayList.add(k.getString(0));
                }
                k.close();
                a2.i();
                List a3 = akxVar2.a(akkVar.b);
                String join = TextUtils.join(",", arrayList);
                String join2 = TextUtils.join(",", a3);
                Object[] objArr = new Object[6];
                objArr[0] = akkVar.b;
                objArr[1] = akkVar.c;
                objArr[2] = valueOf;
                int i = akkVar.q;
                String z = fv.z(i);
                if (i == 0) {
                    throw null;
                }
                objArr[3] = z;
                objArr[4] = join;
                objArr[5] = join2;
                String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", objArr);
            } catch (Throwable th) {
                k.close();
                a2.i();
                throw th;
            }
        }
    }

    @Override // androidx.work.Worker
    public final ex h() {
        aeh aehVar;
        ArrayList arrayList;
        akc akcVar;
        akx akxVar;
        akx akxVar2;
        int i;
        WorkDatabase workDatabase = ahx.c(this.a).d;
        akl n = workDatabase.n();
        akx s = workDatabase.s();
        akx r = workDatabase.r();
        akc p = workDatabase.p();
        long currentTimeMillis = System.currentTimeMillis();
        long millis = TimeUnit.DAYS.toMillis(1L);
        aeh a = aeh.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC", 1);
        a.d(1, currentTimeMillis - millis);
        akv akvVar = (akv) n;
        akvVar.a.e();
        Cursor k = akvVar.a.k(a);
        try {
            int s2 = ew.s(k, "required_network_type");
            int s3 = ew.s(k, "requires_charging");
            int s4 = ew.s(k, "requires_device_idle");
            int s5 = ew.s(k, "requires_battery_not_low");
            int s6 = ew.s(k, "requires_storage_not_low");
            int s7 = ew.s(k, "trigger_content_update_delay");
            int s8 = ew.s(k, "trigger_max_content_delay");
            int s9 = ew.s(k, "content_uri_triggers");
            int s10 = ew.s(k, "id");
            int s11 = ew.s(k, "state");
            int s12 = ew.s(k, "worker_class_name");
            int s13 = ew.s(k, "input_merger_class_name");
            int s14 = ew.s(k, "input");
            int s15 = ew.s(k, "output");
            aehVar = a;
            try {
                int s16 = ew.s(k, "initial_delay");
                int s17 = ew.s(k, "interval_duration");
                int s18 = ew.s(k, "flex_duration");
                int s19 = ew.s(k, "run_attempt_count");
                int s20 = ew.s(k, "backoff_policy");
                int s21 = ew.s(k, "backoff_delay_duration");
                int s22 = ew.s(k, "period_start_time");
                int s23 = ew.s(k, "minimum_retention_duration");
                int s24 = ew.s(k, "schedule_requested_at");
                int s25 = ew.s(k, "run_in_foreground");
                int s26 = ew.s(k, "out_of_quota_policy");
                int i2 = s15;
                ArrayList arrayList2 = new ArrayList(k.getCount());
                while (true) {
                    arrayList = arrayList2;
                    if (!k.moveToNext()) {
                        break;
                    }
                    String string = k.getString(s10);
                    String string2 = k.getString(s12);
                    int i3 = s12;
                    agh aghVar = new agh();
                    int i4 = s2;
                    aghVar.i = fw.g(k.getInt(s2));
                    aghVar.b = k.getInt(s3) != 0;
                    aghVar.c = k.getInt(s4) != 0;
                    aghVar.d = k.getInt(s5) != 0;
                    aghVar.e = k.getInt(s6) != 0;
                    int i5 = s3;
                    aghVar.f = k.getLong(s7);
                    aghVar.g = k.getLong(s8);
                    aghVar.h = fw.d(k.getBlob(s9));
                    akk akkVar = new akk(string, string2);
                    akkVar.q = fw.i(k.getInt(s11));
                    akkVar.d = k.getString(s13);
                    akkVar.e = agk.a(k.getBlob(s14));
                    int i6 = i2;
                    akkVar.f = agk.a(k.getBlob(i6));
                    int i7 = s11;
                    i2 = i6;
                    int i8 = s16;
                    akkVar.g = k.getLong(i8);
                    int i9 = s13;
                    int i10 = s17;
                    akkVar.h = k.getLong(i10);
                    int i11 = s14;
                    int i12 = s18;
                    akkVar.i = k.getLong(i12);
                    int i13 = s19;
                    akkVar.k = k.getInt(i13);
                    int i14 = s20;
                    akkVar.r = fw.f(k.getInt(i14));
                    s18 = i12;
                    int i15 = s21;
                    akkVar.l = k.getLong(i15);
                    int i16 = s22;
                    akkVar.m = k.getLong(i16);
                    s22 = i16;
                    int i17 = s23;
                    akkVar.n = k.getLong(i17);
                    s23 = i17;
                    int i18 = s24;
                    akkVar.o = k.getLong(i18);
                    int i19 = s25;
                    akkVar.p = k.getInt(i19) != 0;
                    int i20 = s26;
                    akkVar.s = fw.h(k.getInt(i20));
                    akkVar.j = aghVar;
                    arrayList.add(akkVar);
                    s26 = i20;
                    s11 = i7;
                    s13 = i9;
                    s24 = i18;
                    s2 = i4;
                    arrayList2 = arrayList;
                    s25 = i19;
                    s16 = i8;
                    s12 = i3;
                    s3 = i5;
                    s21 = i15;
                    s14 = i11;
                    s17 = i10;
                    s19 = i13;
                    s20 = i14;
                }
                k.close();
                aehVar.i();
                List b = n.b();
                List g = n.g();
                if (arrayList.isEmpty()) {
                    akcVar = p;
                    akxVar = s;
                    akxVar2 = r;
                    i = 0;
                } else {
                    agr.a();
                    i = 0;
                    agr.f(new Throwable[0]);
                    agr.a();
                    akcVar = p;
                    akxVar = s;
                    akxVar2 = r;
                    i(akxVar, akxVar2, akcVar, arrayList);
                    agr.f(new Throwable[0]);
                }
                if (!b.isEmpty()) {
                    agr.a();
                    agr.f(new Throwable[i]);
                    agr.a();
                    i(akxVar, akxVar2, akcVar, b);
                    agr.f(new Throwable[i]);
                }
                if (!g.isEmpty()) {
                    agr.a();
                    agr.f(new Throwable[i]);
                    agr.a();
                    i(akxVar, akxVar2, akcVar, g);
                    agr.f(new Throwable[i]);
                }
                return ex.h();
            } catch (Throwable th) {
                th = th;
                k.close();
                aehVar.i();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            aehVar = a;
        }
    }
}
