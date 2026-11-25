package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkSpecTagInsertAdapter extends RoomEntityInsertionAdapter {
    public WorkSpecTagInsertAdapter(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomEntityInsertionAdapter
    public final /* bridge */ /* synthetic */ void b(FrameworkSqliteStatement afnVar, Object obj) {
        AuthScope boaVar = (AuthScope) obj;
        String str = boaVar.b;
        if (str == null) {
            afnVar.e(1);
        } else {
            afnVar.f(1, str);
        }
        String str2 = boaVar.a;
        if (str2 == null) {
            afnVar.e(2);
        } else {
            afnVar.f(2, str2);
        }
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
    }
}
