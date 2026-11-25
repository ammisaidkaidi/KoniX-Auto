package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkRescheduleMigration extends RoomMigration {
    final Context c;

    public WorkRescheduleMigration(Context context, int i, int i2) {
        super(i, i2);
        this.c = context;
    }

    @Override // defpackage.RoomMigration
    public final void a(FrameworkSqliteDatabase afhVar) {
        if (this.b >= 10) {
            afhVar.l(new Object[]{"reschedule_needed", 1});
        } else {
            this.c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
        }
    }
}
