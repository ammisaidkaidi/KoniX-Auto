package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DeleteAllWorkProgressStatement extends RoomSharedSqliteStatement {
    public DeleteAllWorkProgressStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "DELETE FROM WorkProgress";
    }
}
