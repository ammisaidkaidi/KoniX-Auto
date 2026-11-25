package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UpdateWorkSpecPeriodStartStatement extends RoomSharedSqliteStatement {
    public UpdateWorkSpecPeriodStartStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "UPDATE workspec SET period_start_time=? WHERE id=?";
    }
}
