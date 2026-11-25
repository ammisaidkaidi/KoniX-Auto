package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Trace;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FlagOverridesDao {
    public String a = "com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection";
    public final String b;

    public FlagOverridesDao(String str) {
        this.b = str;
    }

    public static PhenotypeFlagTypedValue[] a(SQLiteDatabase sQLiteDatabase, String str) {
        PhenotypeFlagStringMatcher.b(FlagOverridesDao.class.getSimpleName(), "getCommittedOverrides", str);
        try {
            int i = 0;
            Cursor query = sQLiteDatabase.query("FlagOverrides", (String[]) PhenotypePartitionsDao.b.a(), "packageName = ? AND committed = 1", new String[]{str}, null, null, null);
            try {
                if (query.getCount() == 0) {
                    if (query != null) {
                        query.close();
                    }
                    Trace.endSection();
                    return null;
                }
                PhenotypeFlagTypedValue[] bpbVarArr = new PhenotypeFlagTypedValue[query.getCount()];
                while (query.moveToNext()) {
                    int i2 = i + 1;
                    bpbVarArr[i] = PackageVersionResolver.c(query);
                    i = i2;
                }
                if (query != null) {
                    query.close();
                }
                return bpbVarArr;
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
}
