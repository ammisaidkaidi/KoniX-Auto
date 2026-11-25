package defpackage;

import android.database.sqlite.SQLiteStatement;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FrameworkSqliteStatement extends FrameworkSqliteProgram implements SqliteProgramInterface {
    public final SQLiteStatement b;

    public FrameworkSqliteStatement(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.b = sQLiteStatement;
    }

    public final void a() {
        this.b.executeUpdateDelete();
    }
}
