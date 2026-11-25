package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UpdateWorkSpecScheduleTimeStatement extends RoomSharedSqliteStatement {
    public UpdateWorkSpecScheduleTimeStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
    }
}
