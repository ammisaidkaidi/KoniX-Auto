package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LastSyncAfterRequestDao {
    static {
        ex.i(bpe.j);
    }

    public static void a(SQLiteDatabase sQLiteDatabase) {
        if (PhenotypeDbHelper.a() >= 22) {
            sQLiteDatabase.execSQL(PhenotypeDbHelper.e("LastSyncAfterRequest", "packageName TEXT NOT NULL PRIMARY KEY", "servingVersion INTEGER NOT NULL DEFAULT 0"));
        }
    }
}
