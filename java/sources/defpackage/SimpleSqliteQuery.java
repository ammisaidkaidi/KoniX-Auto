package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SimpleSqliteQuery implements SqliteQueryInterface {
    private final String a;

    public SimpleSqliteQuery(String str) {
        this.a = str;
    }

    @Override // defpackage.SqliteQueryInterface
    public final String b() {
        return this.a;
    }

    @Override // defpackage.SqliteQueryInterface
    public final void g(SqliteProgramInterface afeVar) {
    }
}
