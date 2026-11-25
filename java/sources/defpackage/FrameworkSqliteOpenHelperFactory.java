package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FrameworkSqliteOpenHelperFactory implements SqliteOpenHelperFactory {
    @Override // defpackage.SqliteOpenHelperFactory
    public final SqliteOpenHelperInterface a(SqliteOpenHelperConfiguration afbVar) {
        return new LazySqliteOpenHelper(afbVar.a, afbVar.b, afbVar.c, afbVar.d);
    }
}
