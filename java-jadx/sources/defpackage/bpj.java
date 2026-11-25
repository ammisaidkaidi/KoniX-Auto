package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpj {
    static {
        ex.i(bpe.f);
    }

    public static void a(SQLiteDatabase sQLiteDatabase) {
        String[] strArr = new String[10];
        strArr[0] = "packageName TEXT NOT NULL";
        strArr[1] = "user TEXT NOT NULL";
        strArr[2] = "name TEXT NOT NULL";
        strArr[3] = "flagType INTEGER NOT NULL";
        strArr[4] = "intVal INTEGER";
        strArr[5] = "boolVal INTEGER";
        strArr[6] = "floatVal REAL";
        strArr[7] = "stringVal TEXT";
        strArr[8] = "extensionVal BLOB";
        String f = bps.f("packageName", "user", "name", "committed");
        strArr[9] = f.length() != 0 ? "committed".concat(f) : new String("committed");
        sQLiteDatabase.execSQL(bps.e("FlagOverrides", strArr));
    }
}
