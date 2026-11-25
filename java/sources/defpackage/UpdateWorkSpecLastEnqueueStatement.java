package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class UpdateWorkSpecLastEnqueueStatement extends RoomSharedSqliteStatement {
    public UpdateWorkSpecLastEnqueueStatement(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
    }
}
