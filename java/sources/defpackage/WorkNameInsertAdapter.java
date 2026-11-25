package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkNameInsertAdapter extends RoomEntityInsertionAdapter {
    public WorkNameInsertAdapter(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomEntityInsertionAdapter
    public final /* bridge */ /* synthetic */ void b(FrameworkSqliteStatement afnVar, Object obj) {
        String str = ((WorkIdCountPair) obj).a;
        if (str == null) {
            afnVar.e(1);
        } else {
            afnVar.f(1, str);
        }
        afnVar.d(2, r5.b);
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
    }
}
