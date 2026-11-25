package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkProgressInsertAdapter extends RoomEntityInsertionAdapter {
    public WorkProgressInsertAdapter(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomEntityInsertionAdapter
    public final /* bridge */ /* synthetic */ void b(FrameworkSqliteStatement afnVar, Object obj) {
        WorkProgressEntry akeVar = (WorkProgressEntry) obj;
        String str = akeVar.a;
        afnVar.e(1);
        WorkData agkVar = akeVar.b;
        byte[] c = WorkData.c(null);
        if (PhenotypeFlagMessage == null) {
            afnVar.e(2);
        } else {
            afnVar.c(2, c);
        }
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
    }
}
