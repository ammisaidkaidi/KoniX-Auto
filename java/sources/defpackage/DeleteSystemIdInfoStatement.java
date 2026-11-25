package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class DeleteSystemIdInfoStatement extends RoomSharedSqliteStatement {
    public DeleteSystemIdInfoStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "DELETE FROM SystemIdInfo where work_spec_id=?";
    }
}
