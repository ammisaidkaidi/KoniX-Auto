package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkDbMigration11To12 extends RoomMigration {
    public WorkDbMigration11To12() {
        super(11, 12);
    }

    @Override // defpackage.RoomMigration
    public final void a(FrameworkSqliteDatabase afhVar) {
        afhVar.g("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
    }
}
