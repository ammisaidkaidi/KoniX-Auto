package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PackagesDao {
    static {
        ex.i(bpe.m);
    }

    public static void a(SQLiteDatabase sQLiteDatabase, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("isSynced", (Integer) 1);
        sQLiteDatabase.update("Packages", contentValues, "packageName = ?", new String[]{str});
    }

    public static void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(PhenotypeDbHelper.e("Packages", "packageName TEXT NOT NULL PRIMARY KEY", "version INTEGER NOT NULL", "params BLOB", "dynamicParams BLOB", "weak INTEGER NOT NULL", "androidPackageName TEXT NOT NULL", "isSynced INTEGER", "serializedDeclarativeRegInfo BLOB DEFAULT NULL, configTier INTEGER DEFAULT NULL, baselineCl INTEGER DEFAULT NULL, heterodyneInfo BLOB DEFAULT NULL"));
        sQLiteDatabase.execSQL(PhenotypeDbHelper.d("Packages", "androidPackageName", "androidPackageName"));
    }
}
