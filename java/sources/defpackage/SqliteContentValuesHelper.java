package defpackage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Trace;
import android.support.v7.widget.RecyclerView;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SqliteContentValuesHelper {
    public static boolean c() {
        if (Build.VERSION.SDK_INT >= 31) {
            return true;
        }
        String str = Build.VERSION.CODENAME;
        return !"REL".equals(str) && str.compareTo("S") >= 0;
    }

    public static ProtoMsgIntWithDbqDbr d(String str) {
        FlagContextRegistry a = PhenotypePackageConfigFlagsFacade.a.a().a();
        String valueOf = String.valueOf(str.replace("_", "_u_").replace(".", "_d_").replace("#", "_p_"));
        String concat = valueOf.length() != 0 ? "ph_pkgcfg_".concat(valueOf) : new String("ph_pkgcfg_");
        ProtoMsgIntWithDbqDbr dbsVar = dbs.d;
        PhenotypeFlagSupplier bpuVar = bpu.a;
        PhenotypeFlagBase ceiVar = (PhenotypeFlagBase) a.a.get(concat);
        if (ceiVar == null) {
            ceiVar = a.b.d(concat, dbsVar, bpuVar);
            a.a.put(concat, ceiVar);
        }
        return (ProtoMsgIntWithDbqDbr) ceiVar.c();
    }

    public static String e(String str, String str2) {
        String substring;
        String substring2;
        if (GuavaPlatformUtils.d(str) || str.equals("com.google.EMPTY") || str.equals("all")) {
            return str;
        }
        if (!PackageConfigFlagsProvider.a.a().a() || "com.google.android.apps.mobileutilities".equals(str2)) {
            return str;
        }
        int indexOf = str.indexOf(35);
        if (indexOf == -1) {
            substring = str;
            substring2 = str2;
        } else {
            substring = str.substring(0, indexOf);
            substring2 = str.substring(indexOf + 1);
        }
        ProtoMsgIntWithDbqDbr d = d(substring);
        if ((d.a & 2) == 0) {
            return str;
        }
        ProtoMsgSingleBoolean dbqVar = d.c;
        if (dbqVar == null) {
            dbqVar = dbq.b;
        }
        if (true != dbqVar.a) {
            str2 = substring2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 1 + String.valueOf(str2).length());
        StaggeredGridLayoutParams.append(substring);
        StaggeredGridLayoutParams.append('#');
        StaggeredGridLayoutParams.append(str2);
        return StaggeredGridLayoutParams.toString();
    }

    public static long f(SQLiteDatabase sQLiteDatabase, String str) {
        PhenotypeFlagStringMatcher.b(PhenotypeDbHelper.class.getSimpleName(), "getChangeCount", str);
        try {
            Cursor query = sQLiteDatabase.query("ChangeCounts", new String[]{"count"}, "packageName = ?", new String[]{str}, null, null, null);
            try {
                long j = query.moveToFirst() ? query.getLong(0) : 0L;
                if (query != null) {
                    query.close();
                }
                return j;
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

    public static long g(SQLiteDatabase sQLiteDatabase) {
        return f(sQLiteDatabase, "__sync");
    }

    public static long h(SQLiteDatabase sQLiteDatabase, String str) {
        long f = f(sQLiteDatabase, str) + 1;
        ContentValues contentValues = new ContentValues();
        contentValues.put("packageName", str);
        contentValues.put("count", Long.valueOf(NavManeuverTypeEnum));
        if (sQLiteDatabase.insertWithOnConflict("ChangeCounts", null, contentValues, 5) >= 0) {
            return f;
        }
        String valueOf = String.valueOf(str);
        throw new SQLiteException(valueOf.length() != 0 ? "Failed to increment change count for ".concat(valueOf) : new String("Failed to increment change count for "));
    }

    public void a(RecyclerView recyclerView, int i, int i2) {
        throw null;
    }

    public void b(int i) {
    }
}
