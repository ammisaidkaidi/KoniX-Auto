package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkDatabaseOpenHelperFactory implements SqliteOpenHelperFactory {
    final /* synthetic */ Context a;

    public WorkDatabaseOpenHelperFactory(Context context) {
        this.a = context;
    }

    @Override // defpackage.SqliteOpenHelperFactory
    public final SqliteOpenHelperInterface a(SqliteOpenHelperConfiguration afbVar) {
        SqliteOpenHelperConfigBuilder a = SqliteOpenHelperConfiguration.a(this.a);
        a.b = afbVar.b;
        a.c = afbVar.c;
        a.d = true;
        return new FrameworkSqliteOpenHelperFactory().a(a.a());
    }
}
