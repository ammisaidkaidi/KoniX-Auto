package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bph {
    public static final col a = ex.i(bpe.d);

    public static void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(bps.e("CrossLoggedExperimentTokens", "fromPackageName TEXT NOT NULL", "fromVersion INTEGER NOT NULL", "fromUser TEXT NOT NULL", "toPackageName TEXT NOT NULL", "toVersion INTEGER NOT NULL", "isCommitted INTEGER NOT NULL", "token BLOB NOT NULL", "provenance INTEGER NOT NULL"));
        sQLiteDatabase.execSQL(bps.d("CrossLoggedExperimentTokens", "apply", "fromPackageName", "fromVersion", "fromUser", "toPackageName", "toVersion", "isCommitted"));
        sQLiteDatabase.execSQL(bps.d("CrossLoggedExperimentTokens", "remove", "toPackageName"));
    }
}
