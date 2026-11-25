package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DeleteWorkSpecStatement extends RoomSharedSqliteStatement {
    public DeleteWorkSpecStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "DELETE FROM workspec WHERE id=?";
    }
}
