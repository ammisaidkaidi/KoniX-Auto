package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GenericDimensionsDao {
    static {
        ex.i(bpe.i);
    }

    public static void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(PhenotypeDbHelper.e("GenericDimensions", "packageName TEXT NOT NULL", "isolationkey TEXT NOT NULL DEFAULT ''", "namespace INTEGER NOT NULL", "instance INTEGER NOT NULL"));
        sQLiteDatabase.execSQL(PhenotypeDbHelper.d("GenericDimensions", "configPackageIsolationKey", "packageName", "isolationkey"));
    }
}
