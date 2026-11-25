package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Trace;
import android.util.Pair;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bpf {
    static {
        ex.i(bpe.a);
    }

    public static Pair a(SQLiteDatabase sQLiteDatabase, String str) {
        afo.b(bps.class.getSimpleName(), "getCommittedUserAndVersion", str);
        try {
            Cursor query = sQLiteDatabase.query("ApplicationStates", new String[]{"user", "version"}, "packageName = ?", new String[]{str}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    Pair create = Pair.create(query.getString(0), Integer.valueOf(query.getInt(1)));
                    if (query != null) {
                        query.close();
                    }
                    return create;
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
        sQLiteDatabase.execSQL(bps.e("ApplicationStates", "packageName TEXT NOT NULL PRIMARY KEY", "user TEXT NOT NULL", "version INTEGER NOT NULL", "patchable INTEGER"));
    }
}
