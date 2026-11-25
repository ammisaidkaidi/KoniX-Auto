package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkDbMigration8To9 extends RoomMigration {
    public WorkDbMigration8To9() {
        super(8, 9);
    }

    @Override // defpackage.RoomMigration
    public final void a(FrameworkSqliteDatabase afhVar) {
        afhVar.g("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
    }
}
