package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Trace;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpi {
    public static final col a = ex.i(bpe.e);

    public static Cursor a(SQLiteDatabase sQLiteDatabase, String str, int i, String str2, boolean z, String str3) {
        String[] strArr = {str3};
        String[] strArr2 = new String[4];
        strArr2[0] = str;
        strArr2[1] = Integer.toString(i);
        strArr2[2] = str2;
        strArr2[3] = true != z ? "0" : "1";
        return sQLiteDatabase.query("ExperimentTokens", strArr, "packageName = ? AND version = ? AND user = ? AND isCommitted = ?", strArr2, null, null, null);
    }

    public static String b(SQLiteDatabase sQLiteDatabase, String str, int i, String str2, boolean z) {
        String str3;
        afo.b(bps.class.getSimpleName(), "getConfigHash", str);
        try {
            Cursor a2 = a(sQLiteDatabase, str, i, str2, z, "configHash");
            try {
                if (a2.moveToFirst()) {
                    str3 = a2.getString(0);
                    if (a2 != null) {
                        a2.close();
                    }
                } else {
                    str3 = "";
                    if (a2 != null) {
                        a2.close();
                    }
                }
                return str3;
            } catch (Throwable th) {
                if (a2 != null) {
                    try {
                        a2.close();
                    } catch (Throwable th2) {
                    }
                }
                throw th;
            }
        } finally {
            Trace.endSection();
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, String str, String str2, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("tokensTag", new byte[0]);
        contentValues.put("experimentToken", new byte[0]);
        sQLiteDatabase.update("ExperimentTokens", contentValues, "packageName = ? AND user = ? AND version = ?", new String[]{str, str2, Long.toString(j)});
    }

    public static void d(SQLiteDatabase sQLiteDatabase) {
        String[] strArr = new String[9];
        strArr[0] = "packageName TEXT NOT NULL";
        strArr[1] = "version INTEGER NOT NULL";
        strArr[2] = "user TEXT NOT NULL";
        strArr[3] = "isCommitted INTEGER NOT NULL";
        strArr[4] = "experimentToken BLOB NOT NULL";
        strArr[5] = "serverToken TEXT NOT NULL";
        strArr[6] = "configHash TEXT NOT NULL DEFAULT ''";
        strArr[7] = "servingVersion INTEGER NOT NULL DEFAULT 0";
        String f = bps.f("packageName", "version", "user", "isCommitted");
        strArr[8] = f.length() != 0 ? "tokensTag BLOB DEFAULT NULL, flagsHash INTEGER DEFAULT NULL".concat(f) : new String("tokensTag BLOB DEFAULT NULL, flagsHash INTEGER DEFAULT NULL");
        sQLiteDatabase.execSQL(bps.e("ExperimentTokens", strArr));
        sQLiteDatabase.execSQL(bps.d("ExperimentTokens", "committed", "packageName", "version", "user", "isCommitted"));
    }
}
