package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpg {
    static {
        ex.i(bpe.c);
    }

    public static void a(SQLiteDatabase sQLiteDatabase, String str, String str2, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("tag", new byte[0]);
        sQLiteDatabase.update("ApplicationTags", contentValues, "packageName = ? AND user = ? AND version = ? ", new String[]{str, str2, Long.toString(j)});
    }

    public static void b(SQLiteDatabase sQLiteDatabase) {
        String[] strArr = new String[5];
        strArr[0] = "packageName TEXT NOT NULL";
        strArr[1] = "version INTEGER NOT NULL";
        strArr[2] = "partitionId INTEGER NOT NULL";
        strArr[3] = "user TEXT NOT NULL";
        String f = bps.f("packageName", "version", "partitionId", "user");
        strArr[4] = f.length() != 0 ? "tag BLOB NOT NULL".concat(f) : new String("tag BLOB NOT NULL");
        sQLiteDatabase.execSQL(bps.e("ApplicationTags", strArr));
    }
}
