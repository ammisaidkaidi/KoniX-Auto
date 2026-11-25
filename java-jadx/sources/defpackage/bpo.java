package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Trace;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpo {
    static {
        ex.i(bpe.l);
    }

    public static Integer a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        afo.b(bps.class.getSimpleName(), "getCommittedVersion", str);
        try {
            Cursor query = sQLiteDatabase.query("MultiCommitApplicationStates", new String[]{"version"}, "packageName = ? AND user = ?", new String[]{str, str2}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    Integer valueOf = Integer.valueOf(query.getInt(0));
                    if (query != null) {
                        query.close();
                    }
                    return valueOf;
                }
                if (query != null) {
                    query.close();
                }
                Trace.endSection();
                return null;
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                    }
                }
                throw th;
            }
        } finally {
            Trace.endSection();
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase) {
        String[] strArr = new String[3];
        strArr[0] = "packageName TEXT NOT NULL";
        strArr[1] = "user TEXT NOT NULL";
        String f = bps.f("packageName", "user");
        strArr[2] = f.length() != 0 ? "version INTEGER NOT NULL".concat(f) : new String("version INTEGER NOT NULL");
        sQLiteDatabase.execSQL(bps.e("MultiCommitApplicationStates", strArr));
    }
}
