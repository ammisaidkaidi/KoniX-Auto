package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CrossLoggedExperimentTokensDao {
    public static final StopwatchTicker a = ex.i(bpe.d);

    public static void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(PhenotypeDbHelper.e("CrossLoggedExperimentTokens", "fromPackageName TEXT NOT NULL", "fromVersion INTEGER NOT NULL", "fromUser TEXT NOT NULL", "toPackageName TEXT NOT NULL", "toVersion INTEGER NOT NULL", "isCommitted INTEGER NOT NULL", "token BLOB NOT NULL", "provenance INTEGER NOT NULL"));
        sQLiteDatabase.execSQL(PhenotypeDbHelper.d("CrossLoggedExperimentTokens", "apply", "fromPackageName", "fromVersion", "fromUser", "toPackageName", "toVersion", "isCommitted"));
        sQLiteDatabase.execSQL(PhenotypeDbHelper.d("CrossLoggedExperimentTokens", "remove", "toPackageName"));
    }
}
