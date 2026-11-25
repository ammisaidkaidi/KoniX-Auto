package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WeakExperimentIdsDao {
    static {
        ex.i(bpe.n);
    }

    public static void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(PhenotypeDbHelper.e("WeakExperimentIds", "packageName TEXT NOT NULL", "experimentId INTEGER NOT NULL"));
        sQLiteDatabase.execSQL(PhenotypeDbHelper.d("WeakExperimentIds", "packageName", "packageName"));
    }
}
