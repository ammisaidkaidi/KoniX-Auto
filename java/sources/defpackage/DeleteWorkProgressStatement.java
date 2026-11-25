package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DeleteWorkProgressStatement extends RoomSharedSqliteStatement {
    public DeleteWorkProgressStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "DELETE from WorkProgress where work_spec_id=?";
    }
}
