package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkDbMigration7To8 extends RoomMigration {
    public WorkDbMigration7To8() {
        super(7, 8);
    }

    @Override // defpackage.RoomMigration
    public final void a(FrameworkSqliteDatabase afhVar) {
        afhVar.g("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
    }
}
