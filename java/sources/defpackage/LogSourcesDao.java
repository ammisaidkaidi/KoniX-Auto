package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.HashSet;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LogSourcesDao {
    static {
        ex.i(bpe.k);
    }

    public static Set a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor query = sQLiteDatabase.query("LogSources", new String[]{"logSourceName"}, "packageName = ?", new String[]{str}, null, null, null);
        try {
            HashSet l = WorkDataEnumConverters.l(query.getCount());
            while (query.moveToNext()) {
                l.add(query.getString(0));
            }
            if (query != null) {
                query.close();
            }
            return l;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                }
            }
            throw th;
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase) {
        String[] strArr = new String[2];
        strArr[0] = "logSourceName TEXT NOT NULL";
        String f = PhenotypeDbHelper.f("logSourceName", "packageName");
        strArr[1] = f.length() != 0 ? "packageName TEXT NOT NULL".concat(NavManeuverTypeEnum) : new String("packageName TEXT NOT NULL");
        sQLiteDatabase.execSQL(PhenotypeDbHelper.e("LogSources", strArr));
        sQLiteDatabase.execSQL(PhenotypeDbHelper.d("LogSources", "packageName", "packageName"));
    }
}
