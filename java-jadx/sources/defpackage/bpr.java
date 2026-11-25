package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpr {
    static {
        ex.i(bpe.n);
    }

    public static void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(bps.e("WeakExperimentIds", "packageName TEXT NOT NULL", "experimentId INTEGER NOT NULL"));
        sQLiteDatabase.execSQL(bps.d("WeakExperimentIds", "packageName", "packageName"));
    }
}
