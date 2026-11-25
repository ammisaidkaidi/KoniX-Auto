package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkDbMigration3To4 extends RoomMigration {
    public WorkDbMigration3To4() {
        super(3, 4);
    }

    @Override // defpackage.RoomMigration
    public final void a(FrameworkSqliteDatabase afhVar) {
        afhVar.g("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
    }
}
