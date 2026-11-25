package defpackage;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class akv implements akl {
    public final aee a;
    public final ady b;
    public final aej c;
    public final aej d;
    public final aej e;
    public final aej f;
    private final aej g;
    private final aej h;
    private final aej i;

    public akv(aee aeeVar) {
        this.a = aeeVar;
        this.b = new akm(aeeVar);
        this.c = new akn(aeeVar);
        this.g = new ako(aeeVar);
        this.h = new akp(aeeVar);
        this.d = new akq(aeeVar);
        this.e = new akr(aeeVar);
        this.i = new aks(aeeVar);
        this.f = new akt(aeeVar);
        new aku(aeeVar);
    }

    @Override // defpackage.akl
    public final akk a(String str) {
        aeh aehVar;
        akk akkVar;
        aeh a = aeh.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?", 1);
        if (str == null) {
            a.e(1);
        } else {
            a.f(1, str);
        }
        this.a.e();
        Cursor k = this.a.k(a);
        try {
            int s = ew.s(k, "required_network_type");
            int s2 = ew.s(k, "requires_charging");
            int s3 = ew.s(k, "requires_device_idle");
            int s4 = ew.s(k, "requires_battery_not_low");
            int s5 = ew.s(k, "requires_storage_not_low");
            int s6 = ew.s(k, "trigger_content_update_delay");
            int s7 = ew.s(k, "trigger_max_content_delay");
            int s8 = ew.s(k, "content_uri_triggers");
            int s9 = ew.s(k, "id");
            int s10 = ew.s(k, "state");
            int s11 = ew.s(k, "worker_class_name");
            int s12 = ew.s(k, "input_merger_class_name");
            int s13 = ew.s(k, "input");
            int s14 = ew.s(k, "output");
            aehVar = a;
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
                if (k.moveToFirst()) {
                    String string = k.getString(s9);
                    String string2 = k.getString(s11);
                    agh aghVar = new agh();
                    aghVar.i = fw.g(k.getInt(s));
                    aghVar.b = k.getInt(s2) != 0;
                    aghVar.c = k.getInt(s3) != 0;
                    aghVar.d = k.getInt(s4) != 0;
                    aghVar.e = k.getInt(s5) != 0;
                    aghVar.f = k.getLong(s6);
                    aghVar.g = k.getLong(s7);
                    aghVar.h = fw.d(k.getBlob(s8));
                    akkVar = new akk(string, string2);
                    akkVar.q = fw.i(k.getInt(s10));
                    akkVar.d = k.getString(s12);
                    akkVar.e = agk.a(k.getBlob(s13));
                    akkVar.f = agk.a(k.getBlob(s14));
                    akkVar.g = k.getLong(s15);
                    akkVar.h = k.getLong(s16);
                    akkVar.i = k.getLong(s17);
                    akkVar.k = k.getInt(s18);
                    akkVar.r = fw.f(k.getInt(s19));
                    akkVar.l = k.getLong(s20);
                    akkVar.m = k.getLong(s21);
                    akkVar.n = k.getLong(s22);
                    akkVar.o = k.getLong(s23);
                    akkVar.p = k.getInt(s24) != 0;
                    akkVar.s = fw.h(k.getInt(s25));
                    akkVar.j = aghVar;
                } else {
                    akkVar = null;
                }
                k.close();
                aehVar.i();
                return akkVar;
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

    @Override // defpackage.akl
    public final List b() {
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
        int s14;
        aeh a = aeh.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1", 0);
        this.a.e();
        Cursor k = this.a.k(a);
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
            int i = s14;
            ArrayList arrayList = new ArrayList(k.getCount());
            while (k.moveToNext()) {
                String string = k.getString(s9);
                int i2 = s9;
                String string2 = k.getString(s11);
                int i3 = s11;
                agh aghVar = new agh();
                int i4 = s;
                aghVar.i = fw.g(k.getInt(s));
                aghVar.b = k.getInt(s2) != 0;
                aghVar.c = k.getInt(s3) != 0;
                aghVar.d = k.getInt(s4) != 0;
                aghVar.e = k.getInt(s5) != 0;
                int i5 = s2;
                int i6 = s3;
                aghVar.f = k.getLong(s6);
                aghVar.g = k.getLong(s7);
                aghVar.h = fw.d(k.getBlob(s8));
                akk akkVar = new akk(string, string2);
                akkVar.q = fw.i(k.getInt(s10));
                akkVar.d = k.getString(s12);
                akkVar.e = agk.a(k.getBlob(s13));
                int i7 = i;
                akkVar.f = agk.a(k.getBlob(i7));
                i = i7;
                int i8 = s15;
                akkVar.g = k.getLong(i8);
                int i9 = s13;
                int i10 = s16;
                akkVar.h = k.getLong(i10);
                int i11 = s4;
                int i12 = s17;
                akkVar.i = k.getLong(i12);
                int i13 = s18;
                akkVar.k = k.getInt(i13);
                int i14 = s19;
                akkVar.r = fw.f(k.getInt(i14));
                s17 = i12;
                int i15 = s20;
                akkVar.l = k.getLong(i15);
                int i16 = s21;
                akkVar.m = k.getLong(i16);
                s21 = i16;
                int i17 = s22;
                akkVar.n = k.getLong(i17);
                int i18 = s23;
                akkVar.o = k.getLong(i18);
                int i19 = s24;
                akkVar.p = k.getInt(i19) != 0;
                int i20 = s25;
                akkVar.s = fw.h(k.getInt(i20));
                akkVar.j = aghVar;
                arrayList.add(akkVar);
                s25 = i20;
                s2 = i5;
                s13 = i9;
                s15 = i8;
                s16 = i10;
                s18 = i13;
                s23 = i18;
                s9 = i2;
                s11 = i3;
                s = i4;
                s24 = i19;
                s22 = i17;
                s3 = i6;
                s20 = i15;
                s4 = i11;
                s19 = i14;
            }
            k.close();
            aehVar.i();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            k.close();
            aehVar.i();
            throw th;
        }
    }

    @Override // defpackage.akl
    public final List c() {
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
        int s14;
        aeh a = aeh.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.a.e();
        Cursor k = this.a.k(a);
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
            int i = s14;
            ArrayList arrayList = new ArrayList(k.getCount());
            while (k.moveToNext()) {
                String string = k.getString(s9);
                int i2 = s9;
                String string2 = k.getString(s11);
                int i3 = s11;
                agh aghVar = new agh();
                int i4 = s;
                aghVar.i = fw.g(k.getInt(s));
                aghVar.b = k.getInt(s2) != 0;
                aghVar.c = k.getInt(s3) != 0;
                aghVar.d = k.getInt(s4) != 0;
                aghVar.e = k.getInt(s5) != 0;
                int i5 = s2;
                int i6 = s3;
                aghVar.f = k.getLong(s6);
                aghVar.g = k.getLong(s7);
                aghVar.h = fw.d(k.getBlob(s8));
                akk akkVar = new akk(string, string2);
                akkVar.q = fw.i(k.getInt(s10));
                akkVar.d = k.getString(s12);
                akkVar.e = agk.a(k.getBlob(s13));
                int i7 = i;
                akkVar.f = agk.a(k.getBlob(i7));
                i = i7;
                int i8 = s15;
                akkVar.g = k.getLong(i8);
                int i9 = s13;
                int i10 = s16;
                akkVar.h = k.getLong(i10);
                int i11 = s4;
                int i12 = s17;
                akkVar.i = k.getLong(i12);
                int i13 = s18;
                akkVar.k = k.getInt(i13);
                int i14 = s19;
                akkVar.r = fw.f(k.getInt(i14));
                s17 = i12;
                int i15 = s20;
                akkVar.l = k.getLong(i15);
                int i16 = s21;
                akkVar.m = k.getLong(i16);
                s21 = i16;
                int i17 = s22;
                akkVar.n = k.getLong(i17);
                int i18 = s23;
                akkVar.o = k.getLong(i18);
                int i19 = s24;
                akkVar.p = k.getInt(i19) != 0;
                int i20 = s25;
                akkVar.s = fw.h(k.getInt(i20));
                akkVar.j = aghVar;
                arrayList.add(akkVar);
                s25 = i20;
                s2 = i5;
                s13 = i9;
                s15 = i8;
                s16 = i10;
                s18 = i13;
                s23 = i18;
                s9 = i2;
                s11 = i3;
                s = i4;
                s24 = i19;
                s22 = i17;
                s3 = i6;
                s20 = i15;
                s4 = i11;
                s19 = i14;
            }
            k.close();
            aehVar.i();
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            k.close();
            aehVar.i();
            throw th;
        }
    }

    @Override // defpackage.akl
    public final void d(String str, agk agkVar) {
        this.a.e();
        afn d = this.g.d();
        byte[] c = agk.c(agkVar);
        if (c == null) {
            d.e(1);
        } else {
            d.c(1, c);
        }
        if (str == null) {
            d.e(2);
        } else {
            d.f(2, str);
        }
        this.a.f();
        try {
            d.a();
            this.a.h();
        } finally {
            this.a.g();
            this.g.e(d);
        }
    }

    @Override // defpackage.akl
    public final void e(String str, long j) {
        this.a.e();
        afn d = this.h.d();
        d.d(1, j);
        if (str == null) {
            d.e(2);
        } else {
            d.f(2, str);
        }
        this.a.f();
        try {
            d.a();
            this.a.h();
        } finally {
            this.a.g();
            this.h.e(d);
        }
    }

    @Override // defpackage.akl
    public final int f(String str) {
        aeh a = aeh.a("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            a.e(1);
        } else {
            a.f(1, str);
        }
        this.a.e();
        Cursor k = this.a.k(a);
        try {
            return k.moveToFirst() ? fw.i(k.getInt(0)) : 0;
        } finally {
            k.close();
            a.i();
        }
    }

    @Override // defpackage.akl
    public final List g() {
        aeh aehVar;
        aeh a = aeh.a("SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?", 1);
        a.d(1, 200L);
        this.a.e();
        Cursor k = this.a.k(a);
        try {
            int s = ew.s(k, "required_network_type");
            int s2 = ew.s(k, "requires_charging");
            int s3 = ew.s(k, "requires_device_idle");
            int s4 = ew.s(k, "requires_battery_not_low");
            int s5 = ew.s(k, "requires_storage_not_low");
            int s6 = ew.s(k, "trigger_content_update_delay");
            int s7 = ew.s(k, "trigger_max_content_delay");
            int s8 = ew.s(k, "content_uri_triggers");
            int s9 = ew.s(k, "id");
            int s10 = ew.s(k, "state");
            int s11 = ew.s(k, "worker_class_name");
            int s12 = ew.s(k, "input_merger_class_name");
            int s13 = ew.s(k, "input");
            int s14 = ew.s(k, "output");
            aehVar = a;
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
                int i = s14;
                ArrayList arrayList = new ArrayList(k.getCount());
                while (k.moveToNext()) {
                    String string = k.getString(s9);
                    int i2 = s9;
                    String string2 = k.getString(s11);
                    int i3 = s11;
                    agh aghVar = new agh();
                    int i4 = s;
                    aghVar.i = fw.g(k.getInt(s));
                    aghVar.b = k.getInt(s2) != 0;
                    aghVar.c = k.getInt(s3) != 0;
                    aghVar.d = k.getInt(s4) != 0;
                    aghVar.e = k.getInt(s5) != 0;
                    int i5 = s2;
                    int i6 = s3;
                    aghVar.f = k.getLong(s6);
                    aghVar.g = k.getLong(s7);
                    aghVar.h = fw.d(k.getBlob(s8));
                    akk akkVar = new akk(string, string2);
                    akkVar.q = fw.i(k.getInt(s10));
                    akkVar.d = k.getString(s12);
                    akkVar.e = agk.a(k.getBlob(s13));
                    int i7 = i;
                    akkVar.f = agk.a(k.getBlob(i7));
                    i = i7;
                    int i8 = s15;
                    akkVar.g = k.getLong(i8);
                    int i9 = s13;
                    int i10 = s16;
                    akkVar.h = k.getLong(i10);
                    int i11 = s4;
                    int i12 = s17;
                    akkVar.i = k.getLong(i12);
                    int i13 = s18;
                    akkVar.k = k.getInt(i13);
                    int i14 = s19;
                    akkVar.r = fw.f(k.getInt(i14));
                    s17 = i12;
                    int i15 = s20;
                    akkVar.l = k.getLong(i15);
                    int i16 = s21;
                    akkVar.m = k.getLong(i16);
                    s21 = i16;
                    int i17 = s22;
                    akkVar.n = k.getLong(i17);
                    int i18 = s23;
                    akkVar.o = k.getLong(i18);
                    int i19 = s24;
                    akkVar.p = k.getInt(i19) != 0;
                    int i20 = s25;
                    akkVar.s = fw.h(k.getInt(i20));
                    akkVar.j = aghVar;
                    arrayList.add(akkVar);
                    s25 = i20;
                    s2 = i5;
                    s13 = i9;
                    s15 = i8;
                    s16 = i10;
                    s18 = i13;
                    s23 = i18;
                    s9 = i2;
                    s11 = i3;
                    s = i4;
                    s24 = i19;
                    s22 = i17;
                    s3 = i6;
                    s20 = i15;
                    s4 = i11;
                    s19 = i14;
                }
                k.close();
                aehVar.i();
                return arrayList;
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

    @Override // defpackage.akl
    public final void h(String str, long j) {
        this.a.e();
        afn d = this.i.d();
        d.d(1, j);
        if (str == null) {
            d.e(2);
        } else {
            d.f(2, str);
        }
        this.a.f();
        try {
            d.a();
            this.a.h();
        } finally {
            this.a.g();
            this.i.e(d);
        }
    }

    @Override // defpackage.akl
    public final void i(int i, String... strArr) {
        this.a.e();
        StringBuilder sb = new StringBuilder();
        sb.append("UPDATE workspec SET state=? WHERE id IN (");
        for (int i2 = 0; i2 <= 0; i2++) {
            sb.append("?");
            if (i2 < 0) {
                sb.append(",");
            }
        }
        sb.append(")");
        afn j = this.a.j(sb.toString());
        j.d(1, fw.e(i));
        int i3 = 2;
        for (char c = 0; c <= 0; c = 1) {
            String str = strArr[0];
            if (str == null) {
                j.e(i3);
            } else {
                j.f(i3, str);
            }
            i3++;
        }
        this.a.f();
        try {
            j.a();
            this.a.h();
        } finally {
            this.a.g();
        }
    }
}
