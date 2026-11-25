package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpl {
    static {
        ex.i(bpe.i);
    }

    public static void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(bps.e("GenericDimensions", "packageName TEXT NOT NULL", "isolationkey TEXT NOT NULL DEFAULT ''", "namespace INTEGER NOT NULL", "instance INTEGER NOT NULL"));
        sQLiteDatabase.execSQL(bps.d("GenericDimensions", "configPackageIsolationKey", "packageName", "isolationkey"));
    }
}
