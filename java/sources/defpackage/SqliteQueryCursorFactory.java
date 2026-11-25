package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SqliteQueryCursorFactory implements SQLiteDatabase.CursorFactory {
    final /* synthetic */ SqliteQueryInterface a;

    public SqliteQueryCursorFactory(SqliteQueryInterface affVar) {
        this.a = affVar;
    }

    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        this.a.g(new FrameworkSqliteProgram(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }
}
