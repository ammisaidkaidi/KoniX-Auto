package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class RoomEntityInsertionAdapter extends RoomSharedSqliteStatement {
    public RoomEntityInsertionAdapter(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    public final void a(Object obj) {
        FrameworkSqliteStatement d = d();
        try {
            b(d, obj);
            d.b.executeInsert();
        } finally {
            e(ProtoMsgIntStringInt);
        }
    }

    protected abstract void b(FrameworkSqliteStatement afnVar, Object obj);
}
