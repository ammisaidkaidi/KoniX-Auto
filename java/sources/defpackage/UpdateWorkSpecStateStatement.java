package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UpdateWorkSpecStateStatement extends RoomSharedSqliteStatement {
    public UpdateWorkSpecStateStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
    }
}
