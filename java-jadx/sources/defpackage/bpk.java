package defpackage;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpk {
    public static final col a = ex.i(bpe.h);
    public static final col b = ex.i(bpe.g);

    public static void a(SQLiteDatabase sQLiteDatabase) {
        String[] strArr = new String[12];
        strArr[0] = "packageName TEXT NOT NULL";
        strArr[1] = "version INTEGER NOT NULL";
        strArr[2] = "flagType INTEGER NOT NULL";
        strArr[3] = "partitionId INTEGER NOT NULL";
        strArr[4] = "user TEXT NOT NULL";
        strArr[5] = "name TEXT NOT NULL";
        strArr[6] = "intVal INTEGER";
        strArr[7] = "boolVal INTEGER";
        strArr[8] = "floatVal REAL";
        strArr[9] = "stringVal TEXT";
        strArr[10] = "extensionVal BLOB";
        String f = bps.f("packageName", "version", "flagType", "partitionId", "user", "name", "committed");
        strArr[11] = f.length() != 0 ? "committed INTEGER NOT NULL".concat(f) : new String("committed INTEGER NOT NULL");
        sQLiteDatabase.execSQL(bps.e("Flags", strArr));
        sQLiteDatabase.execSQL(bps.d("Flags", "committed", "packageName", "version", "user", "committed"));
    }
}
