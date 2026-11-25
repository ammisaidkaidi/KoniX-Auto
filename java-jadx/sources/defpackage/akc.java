package defpackage;

import android.database.Cursor;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class akc {
    public final aee a;
    private final ady b;
    private final aej c;

    public akc(aee aeeVar) {
        this.a = aeeVar;
        this.b = new aka(aeeVar);
        this.c = new akb(aeeVar);
    }

    public final ajz a(String str) {
        aeh a = aeh.a("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            a.e(1);
        } else {
            a.f(1, str);
        }
        this.a.e();
        Cursor k = this.a.k(a);
        try {
            return k.moveToFirst() ? new ajz(k.getString(ew.s(k, "work_spec_id")), k.getInt(ew.s(k, "system_id"))) : null;
        } finally {
            k.close();
            a.i();
        }
    }

    public final void b(ajz ajzVar) {
        this.a.e();
        this.a.f();
        try {
            this.b.a(ajzVar);
            this.a.h();
        } finally {
            this.a.g();
        }
    }

    public final void c(String str) {
        this.a.e();
        afn d = this.c.d();
        if (str == null) {
            d.e(1);
        } else {
            d.f(1, str);
        }
        this.a.f();
        try {
            d.a();
            this.a.h();
        } finally {
            this.a.g();
            this.c.e(d);
        }
    }
}
