package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkSpecInsertAdapterRoom extends RoomEntityInsertionAdapter {
    public WorkSpecInsertAdapterRoom(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomEntityInsertionAdapter
    public final /* bridge */ /* synthetic */ void b(FrameworkSqliteStatement afnVar, Object obj) {
        AuthScope boaVar = (AuthScope) obj;
        String str = boaVar.a;
        if (str == null) {
            afnVar.e(1);
        } else {
            afnVar.f(1, str);
        }
        String str2 = boaVar.b;
        if (str2 == null) {
            afnVar.e(2);
        } else {
            afnVar.f(2, str2);
        }
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
    }
}
