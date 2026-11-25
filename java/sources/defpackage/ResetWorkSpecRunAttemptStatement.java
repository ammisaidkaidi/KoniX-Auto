package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ResetWorkSpecRunAttemptStatement extends RoomSharedSqliteStatement {
    public ResetWorkSpecRunAttemptStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
    }
}
