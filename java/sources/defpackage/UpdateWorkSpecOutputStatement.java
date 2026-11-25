package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UpdateWorkSpecOutputStatement extends RoomSharedSqliteStatement {
    public UpdateWorkSpecOutputStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "UPDATE workspec SET output=? WHERE id=?";
    }
}
