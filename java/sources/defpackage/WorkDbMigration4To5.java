package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkDbMigration4To5 extends RoomMigration {
    public WorkDbMigration4To5() {
        super(4, 5);
    }

    @Override // defpackage.RoomMigration
    public final void a(FrameworkSqliteDatabase afhVar) {
        afhVar.g("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
        afhVar.g("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
    }
}
