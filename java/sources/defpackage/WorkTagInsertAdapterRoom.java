package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WorkTagInsertAdapterRoom extends RoomEntityInsertionAdapter {
    public WorkTagInsertAdapterRoom(RoomDatabaseBase aeeVar) {
        super(aeeVar);
    }

    @Override // defpackage.RoomEntityInsertionAdapter
    public final /* bridge */ /* synthetic */ void b(FrameworkSqliteStatement afnVar, Object obj) {
        WorkIdTimestampPair ajxVar = (WorkIdTimestampPair) obj;
        afnVar.f(1, ajxVar.a);
        afnVar.d(2, ajxVar.b.longValue());
    }

    @Override // defpackage.RoomSharedSqliteStatement
    public final String c() {
        return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
    }
}
