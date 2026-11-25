package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkProgressDaoImpl {
    public final RoomDatabaseBase a;
    public final RoomSharedSqliteStatement b;
    public final RoomSharedSqliteStatement c;

    public WorkProgressDaoImpl(RoomDatabaseBase aeeVar) {
        this.a = aeeVar;
        new WorkProgressInsertAdapter(aeeVar);
        this.b = new DeleteWorkProgressStatement(aeeVar);
        this.c = new DeleteAllWorkProgressStatement(aeeVar);
    }
}
