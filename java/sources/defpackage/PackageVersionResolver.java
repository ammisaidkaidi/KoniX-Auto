package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Trace;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PackageVersionResolver {
    public String c;
    public final String d;
    public String e;
    public final String f;
    public static final PhenotypeFlagTypedValue[] a = new PhenotypeFlagTypedValue[0];
    private static final String[] g = new String[0];
    public static final PhenotypeDbOpenHelper b = new PhenotypeDbOpenHelper("", "", new PhenotypeFlagComparableValue[0], false, null, 0);

    public PackageVersionResolver(String str, String str2, String str3, String str4) {
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = str4;
    }

    public static int a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        if (str.equals("com.google.EMPTY")) {
            return 0;
        }
        PhenotypeFlagStringMatcher.b(PackageVersionResolver.class.getSimpleName(), "getVersion_packageVersion", str);
        try {
            Cursor query = sQLiteDatabase.query("Packages", new String[]{"version"}, "packageName = ?", new String[]{str}, null, null, null);
            try {
                if (!query.moveToFirst()) {
                    throw new PhenotypeDatabaseException();
                }
                int i = query.getInt(0);
                if (query != null) {
                    query.close();
                }
                Trace.endSection();
                PhenotypeFlagStringMatcher.b(PackageVersionResolver.class.getSimpleName(), "getVersion_tokenVersion", str);
                try {
                    Cursor query2 = sQLiteDatabase.query("ExperimentTokens", new String[]{"version"}, "packageName = ? AND version <= ? AND user = ? AND isCommitted = 0", new String[]{str, Integer.toString(NavInstructionTypeEnum), str2}, null, null, "version DESC", "1");
                    try {
                        if (!query2.moveToFirst()) {
                            if (query2 != null) {
                                query2.close();
                            }
                            return i;
                        }
                        int i2 = query2.getInt(0);
                        if (query2 != null) {
                            query2.close();
                        }
                        return i2;
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public static PhenotypeDbOpenHelper b(Set set, Set set2, String str, PhenotypeTokenBytes bpyVar, boolean z) {
        TextUtils.join(", ", set);
        TextUtils.join(", ", set2);
        HashMap hashMap = new HashMap();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            PhenotypeFlagTypedValue bpbVar = (PhenotypeFlagTypedValue) it.next();
            PrimesTimeoutTracker.f(hashMap, Integer.valueOf(bpbVar.i), bpbVar);
        }
        HashMap hashMap2 = new HashMap();
        Iterator it2 = set2.iterator();
        while (it2.hasNext()) {
            PhenotypeFlagTypedValue bpbVar2 = (PhenotypeFlagTypedValue) it2.next();
            PrimesTimeoutTracker.f(hashMap2, Integer.valueOf(bpbVar2.i), bpbVar2);
        }
        ArrayList arrayList = new ArrayList();
        HashSet<Integer> hashSet = new HashSet();
        hashSet.addAll(hashMap.keySet());
        hashSet.addAll(hashMap2.keySet());
        for (Integer num : hashSet) {
            Collection collection = (Collection) hashMap.get(num);
            Collection collection2 = (Collection) hashMap2.get(num);
            PhenotypeFlagTypedValue[] bpbVarArr = a;
            if (collection != null) {
                bpbVarArr = (PhenotypeFlagTypedValue[]) collection.toArray(new PhenotypeFlagTypedValue[collection.size()]);
            }
            String[] strArr = g;
            if (collection2 != null) {
                strArr = new String[collection2.size()];
                Iterator it3 = collection2.iterator();
                int i = 0;
                while (it3.hasNext()) {
                    strArr[i] = ((PhenotypeFlagTypedValue) it3.next()).b;
                    i++;
                }
            }
            arrayList.add(new PhenotypeFlagComparableValue(num.intValue(), bpbVarArr, strArr));
        }
        return new PhenotypeDbOpenHelper(str, bpyVar.c, (PhenotypeFlagComparableValue[]) arrayList.toArray(new PhenotypeFlagComparableValue[arrayList.size()]), z, bpyVar.b, bpyVar.d);
    }

    public static PhenotypeFlagTypedValue c(Cursor cursor) {
        int i = cursor.getInt(0);
        String string = cursor.getString(1);
        if (!cursor.isNull(2)) {
            return new PhenotypeFlagTypedValue(string, cursor.getLong(2), false, 0.0d, null, null, 1, i);
        }
        if (!cursor.isNull(3)) {
            return new PhenotypeFlagTypedValue(string, 0L, cursor.getInt(3) != 0, 0.0d, null, null, 2, i);
        }
        if (!cursor.isNull(4)) {
            return new PhenotypeFlagTypedValue(string, 0L, false, cursor.getDouble(4), null, null, 3, i);
        }
        if (!cursor.isNull(5)) {
            return new PhenotypeFlagTypedValue(string, 0L, false, 0.0d, cursor.getString(5), null, 4, i);
        }
        if (!cursor.isNull(6)) {
            return new PhenotypeFlagTypedValue(string, cursor.getBlob(6), i);
        }
        String valueOf = String.valueOf(string);
        throw new IllegalStateException(valueOf.length() != 0 ? "Flag without value: ".concat(valueOf) : new String("Flag without value: "));
    }

    public static boolean d(String str) {
        int i = btj.a;
        if (PhenotypeDirectBootFlagsFacade.a.a().b()) {
            return PhenotypeDirectBootFlagsFacade.a.a().a().a.contains(str);
        }
        return false;
    }

    public static PhenotypeFlagTypedValue[] e(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        PhenotypeFlagTypedValue[] bpbVarArr;
        PhenotypeFlagStringMatcher.b(PackageVersionResolver.class.getSimpleName(), "getUncommittedOverrides_allOverrides", str);
        try {
            Cursor query = sQLiteDatabase.query("FlagOverrides", (String[]) PhenotypePartitionsDao.b.a(), null, null, null, null, "1");
            try {
                if (query.getCount() == 0) {
                    if (query != null) {
                        query.close();
                    }
                    return null;
                }
                if (query != null) {
                    query.close();
                }
                Trace.endSection();
                PhenotypeFlagStringMatcher.b(PackageVersionResolver.class.getSimpleName(), "getUncommittedOverrides_uncommittedOverridesAllUsers", str);
                try {
                    int i = 0;
                    Cursor query2 = sQLiteDatabase.query("FlagOverrides", (String[]) PhenotypePartitionsDao.b.a(), "packageName = ? AND user = '*' AND committed = 0", new String[]{str}, null, null, null);
                    try {
                        PhenotypeFlagStringMatcher.b(PackageVersionResolver.class.getSimpleName(), "getUncommittedOverrides_uncommittedOverridesForUser", str);
                        try {
                            query2 = sQLiteDatabase.query("FlagOverrides", (String[]) PhenotypePartitionsDao.b.a(), "packageName = ? AND user = ? AND committed = 0", new String[]{str, str2}, null, null, null);
                            try {
                                if (query2.getCount() + query2.getCount() == 0) {
                                    PhenotypeFlagStringMatcher.b(PackageVersionResolver.class.getSimpleName(), "getUncommittedOverrides_committedOverrides", str);
                                    try {
                                        Cursor query3 = sQLiteDatabase.query("FlagOverrides", (String[]) PhenotypePartitionsDao.b.a(), "packageName != ? AND committed = 1", null, null, null, null, "1");
                                        try {
                                            if (query3.getCount() == 0) {
                                                if (query3 != null) {
                                                    query3.close();
                                                }
                                                Trace.endSection();
                                                if (query2 != null) {
                                                    query2.close();
                                                }
                                                Trace.endSection();
                                                if (query2 != null) {
                                                    query2.close();
                                                }
                                                return null;
                                            }
                                            bpbVarArr = a;
                                            if (query3 != null) {
                                                query3.close();
                                            }
                                            Trace.endSection();
                                            if (query2 != null) {
                                                query2.close();
                                            }
                                            Trace.endSection();
                                            if (query2 != null) {
                                                query2.close();
                                            }
                                        } finally {
                                        }
                                    } finally {
                                    }
                                } else {
                                    bpbVarArr = new PhenotypeFlagTypedValue[query2.getCount() + query2.getCount()];
                                    while (query2.moveToNext()) {
                                        bpbVarArr[i] = c(query2);
                                        i++;
                                    }
                                    while (query2.moveToNext()) {
                                        int i2 = i + 1;
                                        bpbVarArr[i] = c(query2);
                                        i = i2;
                                    }
                                    if (query2 != null) {
                                        query2.close();
                                    }
                                    Trace.endSection();
                                    if (query2 != null) {
                                        query2.close();
                                    }
                                }
                                return bpbVarArr;
                            } finally {
                            }
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
                if (query == null) {
                    throw th;
                }
                try {
                    query.close();
                    throw th;
                } catch (Throwable th) {
                }
            }
        } finally {
        }
    }

    public static String[] f(String str) {
        String[] split = str.split(" ", 9);
        int length = split.length;
        if (length == 8 || length == 7) {
            return split;
        }
        return null;
    }
}
