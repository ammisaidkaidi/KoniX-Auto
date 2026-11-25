package defpackage;

import android.accounts.Account;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.auth.TokenData;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.zip.GZIPOutputStream;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bqf {
    public static final csz a = csz.g("com/google/android/gms/phenotype/core/sync/HeterodyneSyncer");
    private static final Object e = new Object();
    private static final byte[] f = new byte[0];
    public final Context b;
    public final bps c;
    public final dhq d;
    private final bqh g;
    private final dny h;

    public bqf(Context context, bps bpsVar, bqh bqhVar, dhq dhqVar, dny dnyVar, byte[] bArr, byte[] bArr2) {
        this.b = context;
        this.c = bpsVar;
        this.g = bqhVar;
        this.d = dhqVar;
        this.h = dnyVar;
    }

    static int a(dbe dbeVar) {
        int i = 0;
        for (dbn dbnVar : dbeVar.c) {
            dbo dboVar = dbnVar.a;
            if (dboVar == null) {
                dboVar = dbo.d;
            }
            long j = dboVar.b;
            dbo dboVar2 = dbnVar.a;
            if (dboVar2 == null) {
                dboVar2 = dbo.d;
            }
            int i2 = (int) (j ^ (dboVar2.b >>> 32));
            dbo dboVar3 = dbnVar.a;
            if (dboVar3 == null) {
                dboVar3 = dbo.d;
            }
            for (byte b : dboVar3.c.C()) {
                i2 = (i2 * 31) + b;
            }
            i = (i * 17) ^ i2;
        }
        return i;
    }

    public static ArrayList b(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (str.endsWith("@google.com")) {
                arrayList.add(str);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static int e(bqe bqeVar) {
        if (bqeVar.b()) {
            return 4;
        }
        if (bqeVar.a <= 0 || bqeVar.b()) {
            return 1;
        }
        if (bqeVar.b < bqeVar.a) {
            return 10;
        }
        int i = bqeVar.f;
        return i - bqeVar.g < i ? 10 : 1;
    }

    public static final Set g(SQLiteDatabase sQLiteDatabase) {
        Cursor query = sQLiteDatabase.query("ApplicationStates", new String[]{"user"}, null, null, null, null, null);
        try {
            HashSet hashSet = new HashSet(query.getCount());
            while (query.moveToNext()) {
                hashSet.add(query.getString(0));
            }
            if (query != null) {
                query.close();
            }
            return hashSet;
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

    public static final ddf h(bqe bqeVar) {
        ddf n = dgy.i.n();
        int i = bqeVar.e;
        if (n.c) {
            n.k();
            n.c = false;
        }
        dgy dgyVar = (dgy) n.b;
        dgyVar.a |= 32;
        dgyVar.f = i;
        int a2 = bqeVar.a();
        if (n.c) {
            n.k();
            n.c = false;
        }
        dgy dgyVar2 = (dgy) n.b;
        int i2 = dgyVar2.a | 64;
        dgyVar2.a = i2;
        dgyVar2.g = a2;
        int i3 = bqeVar.g;
        int i4 = i2 | 128;
        dgyVar2.a = i4;
        dgyVar2.h = i3;
        int i5 = bqeVar.a;
        int i6 = i4 | 1;
        dgyVar2.a = i6;
        dgyVar2.b = i5;
        int i7 = bqeVar.b;
        int i8 = i6 | 2;
        dgyVar2.a = i8;
        dgyVar2.c = i7;
        int i9 = bqeVar.d;
        int i10 = i8 | 4;
        dgyVar2.a = i10;
        dgyVar2.d = i9;
        int i11 = bqeVar.f;
        dgyVar2.a = i10 | 8;
        dgyVar2.e = i11;
        return n;
    }

    public static final void j(Runnable runnable) {
        if (dmi.b().a.isEmpty() || dmi.b().a.contains(1)) {
            try {
                runnable.run();
            } catch (RuntimeException e2) {
                ((csx) ((csx) a.b().g(e2)).h("com/google/android/gms/phenotype/core/sync/HeterodyneSyncer", "maybeRunGarbageCollection", 713, "HeterodyneSyncer.java")).n("Garbage collection failed");
            }
        }
    }

    private static String l(LinkedHashMap linkedHashMap, dbp dbpVar) {
        dbi dbiVar = dbpVar.d;
        if (dbiVar == null) {
            dbiVar = dbi.c;
        }
        int i = dbiVar.b;
        return i == -1 ? "" : (String) m(linkedHashMap, i).getKey();
    }

    private static Map.Entry m(LinkedHashMap linkedHashMap, int i) {
        if (i < 0 || i >= linkedHashMap.size()) {
            throw new IndexOutOfBoundsException(String.format("i: %d is out of range for a map with size of %d", Integer.valueOf(i), Integer.valueOf(linkedHashMap.size())));
        }
        int i2 = -1;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            i2++;
            if (i2 == i) {
                return entry;
            }
        }
        throw new IndexOutOfBoundsException(String.format("j: %d is out of range for a map with size of %d", Integer.valueOf(i2), Integer.valueOf(linkedHashMap.size())));
    }

    private static Level n() {
        return dlz.a.a().e() ? Level.INFO : Level.CONFIG;
    }

    private static void o(SQLiteDatabase sQLiteDatabase, dbe dbeVar, String str, long j, Integer num) {
        dbp dbpVar = dbeVar.b;
        if (dbpVar == null) {
            dbpVar = dbp.f;
        }
        ContentValues contentValues = new ContentValues();
        if (dbeVar.c.size() > 0) {
            contentValues.put("configHash", Integer.toString(a(dbeVar)));
        }
        contentValues.put("flagsHash", num);
        contentValues.put("servingVersion", Long.valueOf(j));
        sQLiteDatabase.update("ExperimentTokens", contentValues, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0", new String[]{dbpVar.b, String.valueOf(dbpVar.c), str});
        contentValues.put("packageName", dbpVar.b);
        contentValues.put("user", str);
        contentValues.put("version", Long.valueOf(dbpVar.c));
        contentValues.put("isCommitted", (Integer) 0);
        contentValues.put("experimentToken", new byte[0]);
        contentValues.put("serverToken", "");
        sQLiteDatabase.insertWithOnConflict("ExperimentTokens", null, contentValues, 4);
    }

    private static void p(SQLiteDatabase sQLiteDatabase, dbp dbpVar, String str, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("servingVersion", Long.valueOf(j));
        sQLiteDatabase.update("ExperimentTokens", contentValues, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0", new String[]{dbpVar.b, String.valueOf(dbpVar.c), str});
    }

    private static final void q(SQLiteDatabase sQLiteDatabase, String str, long j, String str2, long j2) {
        sQLiteDatabase.delete("Flags", "packageName = ? AND version = ? AND user = ? AND partitionId = ? AND committed = 0", new String[]{str, Long.toString(j), str2, Long.toString(j2)});
    }

    private static final void r(SQLiteDatabase sQLiteDatabase, String str, long j, String str2, dbh dbhVar, boolean z) {
        ContentValues contentValues = new ContentValues();
        dbp dbpVar = dbhVar.a;
        if (dbpVar == null) {
            dbpVar = dbp.f;
        }
        contentValues.put("fromPackageName", dbpVar.b);
        dbp dbpVar2 = dbhVar.a;
        if (dbpVar2 == null) {
            dbpVar2 = dbp.f;
        }
        contentValues.put("fromVersion", Long.valueOf(dbpVar2.c));
        contentValues.put("fromUser", str2);
        contentValues.put("toPackageName", str);
        contentValues.put("toVersion", Long.valueOf(j));
        contentValues.put("isCommitted", Boolean.valueOf(z));
        contentValues.put("token", dbhVar.b.C());
        int j2 = hj.j(dbhVar.c);
        if (j2 == 0) {
            j2 = 1;
        }
        contentValues.put("provenance", Integer.valueOf(j2 - 1));
        sQLiteDatabase.insert("CrossLoggedExperimentTokens", null, contentValues);
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x01f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final boolean s(String str, SQLiteDatabase sQLiteDatabase, SQLiteStatement sQLiteStatement, dbe dbeVar) {
        String str2;
        Iterator it;
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        dbp dbpVar = dbeVar.b;
        if (dbpVar == null) {
            dbpVar = dbp.f;
        }
        String str3 = dbpVar.b;
        dbp dbpVar2 = dbeVar.b;
        if (dbpVar2 == null) {
            dbpVar2 = dbp.f;
        }
        long j = dbpVar2.c;
        Iterator it2 = dbeVar.c.iterator();
        while (true) {
            str2 = "ApplicationTags";
            if (!it2.hasNext()) {
                break;
            }
            dbn dbnVar = (dbn) it2.next();
            int h = hj.h(dbnVar.c);
            if (h != 0 && h == 3) {
                dbo dboVar = dbnVar.a;
                if (dboVar == null) {
                    dboVar = dbo.d;
                }
                Iterator it3 = it2;
                q(sQLiteDatabase, str3, j, str, dboVar.b);
                dbo dboVar2 = dbnVar.a;
                String[] strArr = new String[4];
                strArr[0] = str3;
                strArr[1] = Long.toString(j);
                strArr[2] = str;
                dbo dboVar3 = dbnVar.a;
                if (dboVar3 == null) {
                    dboVar3 = dbo.d;
                }
                strArr[3] = Long.toString(dboVar3.b);
                sQLiteDatabase2.delete("ApplicationTags", "packageName = ? AND version = ? AND user = ? AND partitionId = ?", strArr);
                it2 = it3;
            }
        }
        char c = 2;
        int i = 4;
        for (dbn dbnVar2 : dbeVar.c) {
            for (dbm dbmVar : dbnVar2.b) {
                if (dbmVar.h) {
                    String str4 = dbmVar.a;
                    dbo dboVar4 = dbnVar2.a;
                    if (dboVar4 == null) {
                        dboVar4 = dbo.d;
                    }
                    String str5 = str2;
                    long j2 = dboVar4.b;
                    String[] strArr2 = new String[6];
                    strArr2[0] = str3;
                    strArr2[1] = Long.toString(j);
                    strArr2[2] = str;
                    dbo dboVar5 = dbnVar2.a;
                    if (dboVar5 == null) {
                        dboVar5 = dbo.d;
                    }
                    strArr2[3] = Long.toString(dboVar5.b);
                    strArr2[4] = dbmVar.a;
                    strArr2[5] = Integer.toString(dbmVar.i);
                    sQLiteDatabase2.delete("Flags", "packageName = ? AND version = ? AND user = ? AND partitionId = ? AND name = ? AND flagType = ? AND committed = 0", strArr2);
                    str2 = str5;
                }
            }
        }
        String str6 = str2;
        Iterator it4 = dbeVar.c.iterator();
        boolean z = false;
        while (it4.hasNext()) {
            dbn dbnVar3 = (dbn) it4.next();
            int h2 = hj.h(dbnVar3.c);
            if (h2 == 0 || h2 != 3) {
                dbo dboVar6 = dbnVar3.a;
                if (dboVar6 == null) {
                    dboVar6 = dbo.d;
                }
                long j3 = dboVar6.b;
                dbo dboVar7 = dbnVar3.a;
                if (dboVar7 == null) {
                    dboVar7 = dbo.d;
                }
                byte[] C = dboVar7.c.C();
                if (C == null || C.length == 0) {
                    it = it4;
                } else {
                    String[] strArr3 = new String[i];
                    strArr3[0] = str3;
                    strArr3[1] = Long.toString(j);
                    strArr3[c] = Long.toString(j3);
                    strArr3[3] = str;
                    long j4 = j3;
                    it = it4;
                    Cursor query = sQLiteDatabase.query("ApplicationTags", new String[]{"tag"}, "packageName = ? AND version = ? AND partitionId = ? AND user = ?", strArr3, null, null, null);
                    try {
                        if (query.moveToFirst() && Arrays.equals(C, query.getBlob(0))) {
                            if (query != null) {
                                query.close();
                            }
                        }
                        if (query != null) {
                            query.close();
                        }
                        Long valueOf = Long.valueOf(j);
                        Long valueOf2 = Long.valueOf(j4);
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("packageName", str3);
                        contentValues.put("version", valueOf);
                        contentValues.put("partitionId", valueOf2);
                        contentValues.put("user", str);
                        contentValues.put("tag", C);
                        String str7 = str6;
                        int i2 = 5;
                        sQLiteDatabase2.insertWithOnConflict(str7, null, contentValues, 5);
                        int h3 = hj.h(dbnVar3.c);
                        if (h3 != 0 && h3 != 1) {
                            for (dbm dbmVar2 : dbnVar3.b) {
                                if (!dbmVar2.h) {
                                    sQLiteStatement.clearBindings();
                                    sQLiteStatement.bindString(1, str3);
                                    sQLiteStatement.bindLong(2, j);
                                    sQLiteStatement.bindLong(3, dbmVar2.i);
                                    long j5 = j4;
                                    sQLiteStatement.bindLong(4, j5);
                                    sQLiteStatement.bindString(i2, str);
                                    sQLiteStatement.bindString(6, dbmVar2.a);
                                    sQLiteStatement.bindLong(7, 0L);
                                    int i3 = hj.i(dbmVar2.g);
                                    if (i3 == 0) {
                                        i3 = 1;
                                    }
                                    switch (i3 - 1) {
                                        case 1:
                                            sQLiteStatement.bindLong(8, dbmVar2.b);
                                            String str8 = dbmVar2.a;
                                            sQLiteStatement.execute();
                                            j4 = j5;
                                            break;
                                        case 2:
                                            sQLiteStatement.bindLong(9, true == dbmVar2.c ? 1L : 0L);
                                            String str82 = dbmVar2.a;
                                            sQLiteStatement.execute();
                                            j4 = j5;
                                            break;
                                        case 3:
                                            sQLiteStatement.bindDouble(10, dbmVar2.d);
                                            String str822 = dbmVar2.a;
                                            sQLiteStatement.execute();
                                            j4 = j5;
                                            break;
                                        case 4:
                                            sQLiteStatement.bindString(11, dbmVar2.e);
                                            String str8222 = dbmVar2.a;
                                            sQLiteStatement.execute();
                                            j4 = j5;
                                            break;
                                        case 5:
                                            dbl dblVar = dbmVar2.f;
                                            if (dblVar == null) {
                                                dblVar = dbl.b;
                                            }
                                            sQLiteStatement.bindBlob(12, dblVar.a.C());
                                            String str82222 = dbmVar2.a;
                                            sQLiteStatement.execute();
                                            j4 = j5;
                                            break;
                                        default:
                                            ((csx) a.c().h("com/google/android/gms/phenotype/core/sync/HeterodyneSyncer", "updateFlag", 2328, "HeterodyneSyncer.java")).p("Value type not set for flag %s, ignoring", dbmVar2.a);
                                            j4 = j5;
                                            i2 = 5;
                                            break;
                                    }
                                } else {
                                    i2 = 5;
                                }
                            }
                            sQLiteDatabase2 = sQLiteDatabase;
                            it4 = it;
                            str6 = str7;
                            c = 2;
                            i = 4;
                        }
                        q(sQLiteDatabase, str3, j, str, j4);
                        while (r1.hasNext()) {
                        }
                        sQLiteDatabase2 = sQLiteDatabase;
                        it4 = it;
                        str6 = str7;
                        c = 2;
                        i = 4;
                    } finally {
                    }
                }
                sQLiteDatabase2 = sQLiteDatabase;
                it4 = it;
                str6 = str6;
                c = 2;
                i = 4;
            }
            z = true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6 A[Catch: all -> 0x01d8, TryCatch #2 {all -> 0x01d8, blocks: (B:36:0x00d0, B:38:0x00d6, B:40:0x00e7, B:45:0x00fa, B:48:0x011a, B:71:0x0105), top: B:35:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0105 A[Catch: all -> 0x01d8, TryCatch #2 {all -> 0x01d8, blocks: (B:36:0x00d0, B:38:0x00d6, B:40:0x00e7, B:45:0x00fa, B:48:0x011a, B:71:0x0105), top: B:35:0x00d0 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final boolean t(SQLiteDatabase sQLiteDatabase, String str, long j, String str2, dbe dbeVar, long j2, List list) {
        Integer num;
        int i;
        char c;
        char c2;
        byte[] bArr;
        Cursor query;
        int i2;
        int i3;
        boolean z;
        boolean z2;
        int i4;
        if (dmi.d()) {
            Cursor m = qx.m(sQLiteDatabase, str, j, str2, false);
            try {
                int l = qx.l(m);
                m.close();
                num = Integer.valueOf(l);
            } finally {
            }
        } else {
            num = null;
        }
        boolean h = dmi.a.a().h();
        byte[] C = ((dbeVar.a & 8) == 0 || dbeVar.g.C().length <= 0) ? null : dbeVar.g.C();
        if (h) {
            if (C == null) {
                i = 0;
                c = 1;
                c2 = 2;
                if (dmi.g()) {
                    i4 = 3;
                    dbp dbpVar = dbeVar.b;
                    if (dbpVar == null) {
                        dbpVar = dbp.f;
                    }
                    p(sQLiteDatabase, dbpVar, str2, j2);
                    z2 = false;
                } else {
                    i4 = 3;
                    o(sQLiteDatabase, dbeVar, str2, j2, num);
                    z2 = false;
                }
            }
            Long valueOf = Long.valueOf(j);
            ArrayList arrayList = new ArrayList();
            arrayList.add("experimentToken");
            arrayList.add("serverToken");
            bArr = C;
            arrayList.add("configHash");
            arrayList.add("tokensTag");
            query = sQLiteDatabase.query("ExperimentTokens", (String[]) arrayList.toArray(new String[arrayList.size()]), "packageName = ? AND version = ? AND user = ? AND isCommitted = 0", new String[]{str, Long.toString(j), str2}, null, null, null);
            try {
                if (query.moveToFirst()) {
                    i2 = 3;
                    i = 0;
                    c = 1;
                    i3 = 0;
                    z = true;
                } else {
                    i = 0;
                    if (Arrays.equals(dbeVar.d.C(), query.getBlob(0))) {
                        String str3 = dbeVar.e;
                        c = 1;
                        String string = query.getString(1);
                        if (str3 == null) {
                            if (string != null) {
                                str3 = "";
                            }
                            if (h) {
                                i2 = 3;
                                z = false;
                            } else {
                                i2 = 3;
                                z = !Arrays.equals(query.getBlob(3), bArr);
                            }
                        } else if (string == null) {
                            string = "";
                        }
                        if (!str3.equals(string)) {
                            z = true;
                            i2 = 3;
                        }
                        if (h) {
                        }
                    } else {
                        i2 = 3;
                        c = 1;
                        z = true;
                    }
                    i3 = query.getInt(2);
                }
                if (query != null) {
                    query.close();
                }
                if (h || z) {
                    c2 = 2;
                    String[] strArr = new String[i2];
                    strArr[i] = str;
                    strArr[c] = Long.toString(j);
                    strArr[2] = str2;
                    sQLiteDatabase.delete("ExperimentTokens", "packageName = ? AND version = ? AND user = ? AND isCommitted = 0", strArr);
                    if (dbeVar.c.size() > 0) {
                        i3 = a(dbeVar);
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("packageName", str);
                    contentValues.put("version", valueOf);
                    contentValues.put("user", str2);
                    contentValues.put("isCommitted", Integer.valueOf(i));
                    contentValues.put("experimentToken", dbeVar.d.C());
                    contentValues.put("serverToken", dbeVar.e);
                    contentValues.put("configHash", Integer.toString(i3));
                    contentValues.put("servingVersion", Long.valueOf(j2));
                    contentValues.put("tokensTag", bArr);
                    contentValues.put("flagsHash", num);
                    if (!h) {
                        z = bArr != null;
                    }
                    sQLiteDatabase.insert("ExperimentTokens", null, contentValues);
                    z2 = z;
                    i4 = 3;
                } else if (dmi.g()) {
                    c2 = 2;
                    i4 = 3;
                    o(sQLiteDatabase, dbeVar, str2, j2, num);
                    z2 = false;
                } else {
                    i4 = 3;
                    c2 = 2;
                    dbp dbpVar2 = dbeVar.b;
                    if (dbpVar2 == null) {
                        dbpVar2 = dbp.f;
                    }
                    p(sQLiteDatabase, dbpVar2, str2, j2);
                    z2 = false;
                }
            } finally {
            }
        } else {
            if ((dbeVar.a & 8) == 0) {
                i = 0;
                c = 1;
                c2 = 2;
                if (dmi.g()) {
                }
            }
            Long valueOf2 = Long.valueOf(j);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add("experimentToken");
            arrayList2.add("serverToken");
            bArr = C;
            arrayList2.add("configHash");
            arrayList2.add("tokensTag");
            query = sQLiteDatabase.query("ExperimentTokens", (String[]) arrayList2.toArray(new String[arrayList2.size()]), "packageName = ? AND version = ? AND user = ? AND isCommitted = 0", new String[]{str, Long.toString(j), str2}, null, null, null);
            if (query.moveToFirst()) {
            }
            if (query != null) {
            }
            if (h) {
            }
            c2 = 2;
            String[] strArr2 = new String[i2];
            strArr2[i] = str;
            strArr2[c] = Long.toString(j);
            strArr2[2] = str2;
            sQLiteDatabase.delete("ExperimentTokens", "packageName = ? AND version = ? AND user = ? AND isCommitted = 0", strArr2);
            if (dbeVar.c.size() > 0) {
            }
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("packageName", str);
            contentValues2.put("version", valueOf2);
            contentValues2.put("user", str2);
            contentValues2.put("isCommitted", Integer.valueOf(i));
            contentValues2.put("experimentToken", dbeVar.d.C());
            contentValues2.put("serverToken", dbeVar.e);
            contentValues2.put("configHash", Integer.toString(i3));
            contentValues2.put("servingVersion", Long.valueOf(j2));
            contentValues2.put("tokensTag", bArr);
            contentValues2.put("flagsHash", num);
            if (!h) {
            }
            sQLiteDatabase.insert("ExperimentTokens", null, contentValues2);
            z2 = z;
            i4 = 3;
        }
        if (z2) {
            dbp dbpVar3 = dbeVar.b;
            if (dbpVar3 == null) {
                dbpVar3 = dbp.f;
            }
            String[] strArr3 = new String[i4];
            strArr3[i] = str2;
            strArr3[c] = dbpVar3.b;
            strArr3[c2] = Long.toString(dbpVar3.c);
            sQLiteDatabase.delete("CrossLoggedExperimentTokens", "fromUser = ? AND toPackageName = ? AND toVersion = ? AND isCommitted != 1", strArr3);
            list.add(dbeVar);
            Iterator it = dbeVar.f.iterator();
            while (it.hasNext()) {
                r(sQLiteDatabase, str, j, str2, (dbh) it.next(), false);
            }
        }
        return z2;
    }

    public final void c(LinkedHashMap linkedHashMap, String... strArr) {
        Object b;
        for (String str : strArr) {
            String str2 = null;
            if (str != null) {
                try {
                    try {
                        try {
                            Context context = this.d.a;
                            final Account account = new Account(str, "com.google");
                            bhq.e(account);
                            hr.i("Calling this from your main thread can lead to deadlock");
                            hr.l("oauth2:https://www.googleapis.com/auth/experimentsandconfigs", "Scope cannot be empty or null.");
                            bhq.e(account);
                            bhq.g(context);
                            final Bundle bundle = new Bundle();
                            String str3 = context.getApplicationInfo().packageName;
                            bundle.putString("clientPackageName", str3);
                            if (TextUtils.isEmpty(bundle.getString(bhq.b))) {
                                bundle.putString(bhq.b, str3);
                            }
                            bundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
                            cei.f(context);
                            if (dlh.c() && bhq.f(context)) {
                                Object c = hm.c(context);
                                hr.l("oauth2:https://www.googleapis.com/auth/experimentsandconfigs", "Scope cannot be null!");
                                bmb a2 = bmc.a();
                                a2.b = new bjb[]{bhl.b};
                                a2.a = new blx() { // from class: bhv
                                    @Override // defpackage.blx
                                    public final void a(Object obj, Object obj2) {
                                        Account account2 = account;
                                        Bundle bundle2 = bundle;
                                        bhu bhuVar = (bhu) ((bht) obj).w();
                                        blo bloVar = new blo((brk) obj2, 1, null);
                                        Parcel a3 = bhuVar.a();
                                        asr.c(a3, bloVar);
                                        asr.b(a3, account2);
                                        a3.writeString("oauth2:https://www.googleapis.com/auth/experimentsandconfigs");
                                        asr.b(a3, bundle2);
                                        bhuVar.c(1, a3);
                                    }
                                };
                                a2.c = 1512;
                                try {
                                    Bundle bundle2 = (Bundle) bhq.c(((bkc) c).d(a2.a()), "token retrieval");
                                    bhq.h(bundle2);
                                    b = bhq.a(bundle2);
                                } catch (bjz e2) {
                                    bhq.d(e2, "token retrieval");
                                }
                                str2 = ((TokenData) b).b;
                            }
                            b = bhq.b(context, bhq.c, new bhp() { // from class: bhn
                                @Override // defpackage.bhp
                                public final Object a(IBinder iBinder) {
                                    bhj bhjVar;
                                    Account account2 = account;
                                    Bundle bundle3 = bundle;
                                    String[] strArr2 = bhq.a;
                                    if (iBinder == null) {
                                        bhjVar = null;
                                    } else {
                                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
                                        bhjVar = queryLocalInterface instanceof bhj ? (bhj) queryLocalInterface : new bhj(iBinder);
                                    }
                                    Parcel a3 = bhjVar.a();
                                    asr.b(a3, account2);
                                    a3.writeString("oauth2:https://www.googleapis.com/auth/experimentsandconfigs");
                                    asr.b(a3, bundle3);
                                    Parcel b2 = bhjVar.b(5, a3);
                                    Bundle bundle4 = (Bundle) asr.a(b2, Bundle.CREATOR);
                                    b2.recycle();
                                    if (bundle4 != null) {
                                        return bhq.a(bundle4);
                                    }
                                    throw new IOException("Service call returned null");
                                }
                            });
                            str2 = ((TokenData) b).b;
                        } catch (bhm e3) {
                        }
                    } catch (IOException e4) {
                        throw new RuntimeException("Failed getting auth token due to a transient error", e4);
                    }
                } catch (bpt e5) {
                }
            }
            if (str2 != null) {
                linkedHashMap.put(str, str2);
            }
        }
    }

    final void d() {
        try {
            this.c.getWritableDatabase().execSQL("VACUUM");
        } catch (SQLException e2) {
            ((csx) ((csx) a.c().g(e2)).h("com/google/android/gms/phenotype/core/sync/HeterodyneSyncer", "vacuum", 2424, "HeterodyneSyncer.java")).n("SQLException when vacuuming:");
        }
    }

    protected final void f(String str) {
        try {
            try {
                Context context = this.d.a;
                hr.i("Calling this from your main thread can lead to deadlock");
                bhq.g(context);
                Bundle bundle = new Bundle();
                String str2 = context.getApplicationInfo().packageName;
                bundle.putString("clientPackageName", str2);
                if (!bundle.containsKey(bhq.b)) {
                    bundle.putString(bhq.b, str2);
                }
                cei.f(context);
                if (dlh.c() && bhq.f(context)) {
                    Object c = hm.c(context);
                    final bia biaVar = new bia();
                    biaVar.b = str;
                    bmb a2 = bmc.a();
                    a2.b = new bjb[]{bhl.b};
                    a2.a = new blx() { // from class: bhw
                        @Override // defpackage.blx
                        public final void a(Object obj, Object obj2) {
                            bia biaVar2 = bia.this;
                            bhu bhuVar = (bhu) ((bht) obj).w();
                            blo bloVar = new blo((brk) obj2, 0);
                            Parcel a3 = bhuVar.a();
                            asr.c(a3, bloVar);
                            asr.b(a3, biaVar2);
                            bhuVar.c(2, a3);
                        }
                    };
                    a2.c = 1513;
                    try {
                        bhq.c(((bkc) c).d(a2.a()), "clear token");
                        return;
                    } catch (bjz e2) {
                        bhq.d(e2, "clear token");
                    }
                }
                bhq.b(context, bhq.c, new bho(str, bundle));
            } catch (bhm e3) {
            }
        } catch (IOException e4) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:318:0x0621, code lost:
    
        if (r1 != null) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x0623, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x062d, code lost:
    
        r1 = defpackage.dcl.t(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0633, code lost:
    
        if (r0.c == false) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0635, code lost:
    
        r0.k();
        r0.c = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x063b, code lost:
    
        r2 = (defpackage.dbj) r0.b;
        r2.a |= 2;
        r2.d = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x062a, code lost:
    
        if (r1 != null) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0677, code lost:
    
        if (r1 != null) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0679, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x068a, code lost:
    
        r1 = defpackage.dcl.t(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0690, code lost:
    
        if (r4.c == false) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0692, code lost:
    
        r4.k();
        r4.c = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x0698, code lost:
    
        r2 = (defpackage.dbf) r4.b;
        r2.a |= 32;
        r2.e = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x06a6, code lost:
    
        if (r0.c == false) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x06a8, code lost:
    
        r0.k();
        r0.c = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:356:0x06ae, code lost:
    
        r1 = (defpackage.dbj) r0.b;
        r2 = (defpackage.dbf) r4.h();
        r2.getClass();
        r1.b = r2;
        r1.a |= 1;
        r9.setTransactionSuccessful();
        r1 = (defpackage.dbj) r0.h();
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x06cd, code lost:
    
        r9.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x06e7, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x06d1, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x06d2, code lost:
    
        r0 = r0.getMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x06dd, code lost:
    
        if (r0.contains(r32) != false) goto L303;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x06e5, code lost:
    
        if (r0.contains(r31) == false) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:?, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x06e8, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0687, code lost:
    
        if (r1 == null) goto L291;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0374 A[Catch: all -> 0x051c, TryCatch #26 {all -> 0x051c, blocks: (B:134:0x032d, B:136:0x0332, B:139:0x0368, B:141:0x0374, B:143:0x038b, B:144:0x038d, B:146:0x039e, B:147:0x03a0, B:158:0x03e2, B:159:0x03e5, B:176:0x0470, B:177:0x0473, B:179:0x0477, B:180:0x047d, B:182:0x0489, B:183:0x048f, B:184:0x04ac, B:186:0x04b2, B:188:0x04b6, B:189:0x04bc, B:191:0x04c9, B:202:0x049e, B:213:0x04a8, B:253:0x0354, B:263:0x0504, B:264:0x051b, B:161:0x0417, B:162:0x041b, B:164:0x0421, B:166:0x0430, B:167:0x0436, B:169:0x044e, B:171:0x0454, B:174:0x046a, B:149:0x03b9, B:151:0x03bf, B:153:0x03c6, B:155:0x03ce, B:156:0x03d4), top: B:133:0x032d, inners: #24, #29 }] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x04b2 A[Catch: all -> 0x051c, TryCatch #26 {all -> 0x051c, blocks: (B:134:0x032d, B:136:0x0332, B:139:0x0368, B:141:0x0374, B:143:0x038b, B:144:0x038d, B:146:0x039e, B:147:0x03a0, B:158:0x03e2, B:159:0x03e5, B:176:0x0470, B:177:0x0473, B:179:0x0477, B:180:0x047d, B:182:0x0489, B:183:0x048f, B:184:0x04ac, B:186:0x04b2, B:188:0x04b6, B:189:0x04bc, B:191:0x04c9, B:202:0x049e, B:213:0x04a8, B:253:0x0354, B:263:0x0504, B:264:0x051b, B:161:0x0417, B:162:0x041b, B:164:0x0421, B:166:0x0430, B:167:0x0436, B:169:0x044e, B:171:0x0454, B:174:0x046a, B:149:0x03b9, B:151:0x03bf, B:153:0x03c6, B:155:0x03ce, B:156:0x03d4), top: B:133:0x032d, inners: #24, #29 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x04a9  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x070a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:? A[Catch: all -> 0x0710, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #21 {all -> 0x0710, blocks: (B:225:0x070f, B:378:0x06f6), top: B:48:0x0113 }] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x058c A[Catch: all -> 0x057c, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x057c, blocks: (B:389:0x0578, B:296:0x058c, B:299:0x059e, B:302:0x05b3, B:304:0x05b7, B:305:0x05bd, B:307:0x05d3, B:308:0x05d9, B:313:0x05f9, B:319:0x0623, B:320:0x062d, B:322:0x0635, B:323:0x063b, B:334:0x0651, B:338:0x05f3, B:349:0x0679, B:352:0x0692, B:355:0x06a8, B:315:0x0616, B:317:0x061c, B:324:0x0628), top: B:388:0x0578, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x059e A[Catch: all -> 0x057c, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x057c, blocks: (B:389:0x0578, B:296:0x058c, B:299:0x059e, B:302:0x05b3, B:304:0x05b7, B:305:0x05bd, B:307:0x05d3, B:308:0x05d9, B:313:0x05f9, B:319:0x0623, B:320:0x062d, B:322:0x0635, B:323:0x063b, B:334:0x0651, B:338:0x05f3, B:349:0x0679, B:352:0x0692, B:355:0x06a8, B:315:0x0616, B:317:0x061c, B:324:0x0628), top: B:388:0x0578, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x05b3 A[Catch: all -> 0x057c, TRY_ENTER, TryCatch #6 {all -> 0x057c, blocks: (B:389:0x0578, B:296:0x058c, B:299:0x059e, B:302:0x05b3, B:304:0x05b7, B:305:0x05bd, B:307:0x05d3, B:308:0x05d9, B:313:0x05f9, B:319:0x0623, B:320:0x062d, B:322:0x0635, B:323:0x063b, B:334:0x0651, B:338:0x05f3, B:349:0x0679, B:352:0x0692, B:355:0x06a8, B:315:0x0616, B:317:0x061c, B:324:0x0628), top: B:388:0x0578, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x05ee  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0110 A[Catch: all -> 0x0105, TRY_ENTER, TRY_LEAVE, TryCatch #14 {all -> 0x0105, blocks: (B:400:0x00f6, B:31:0x0110), top: B:399:0x00f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0670  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0578 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0146 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final dbj i(List list, boolean z, LinkedHashMap linkedHashMap, boolean z2) {
        Throwable th;
        String str;
        boolean z3;
        Cursor query;
        Cursor cursor;
        Throwable th2;
        String str2;
        String str3;
        Pair create;
        ddr ddrVar;
        Cursor query2;
        Throwable th3;
        byte[] bArr;
        byte[] bArr2;
        String str4;
        byte[] bArr3;
        long j;
        String str5;
        byte[] bArr4;
        String str6;
        cqc cqcVar;
        String str7;
        long j2;
        String str8;
        long j3;
        byte[] blob;
        Cursor m;
        int i;
        boolean z4;
        String str9 = "already-closed";
        String str10 = "re-open";
        ddf n = dbj.h.n();
        ddf n2 = dbf.g.n();
        String str11 = "";
        int i2 = 2;
        int i3 = 1;
        int i4 = 0;
        if (!z2) {
            long j4 = true != "".equals(fv.J(list)) ? 1L : 0L;
            if (n2.c) {
                n2.k();
                n2.c = false;
            }
            dbf dbfVar = (dbf) n2.b;
            dbfVar.a |= 2;
            dbfVar.b = j4;
        }
        if (n.c) {
            n.k();
            n.c = false;
        }
        dbj dbjVar = (dbj) n.b;
        dbjVar.e = 1;
        int i5 = dbjVar.a | 4;
        dbjVar.a = i5;
        int i6 = i5 | 8;
        dbjVar.a = i6;
        dbjVar.f = "com.google.android.apps.auto.aareceiver#com.google.android.embedded.projection";
        dbjVar.a = i6 | 16;
        dbjVar.g = 3300;
        ddf n3 = dgs.d.n();
        if (n3.c) {
            n3.k();
            n3.c = false;
        }
        dgs dgsVar = (dgs) n3.b;
        dgsVar.b = 4;
        dgsVar.a |= 1;
        dgr a2 = ((cey) this.h).a();
        if (n3.c) {
            n3.k();
            n3.c = false;
        }
        dgs dgsVar2 = (dgs) n3.b;
        a2.getClass();
        dgsVar2.c = a2;
        dgsVar2.a |= 8;
        dgs dgsVar3 = (dgs) n3.h();
        if (n2.c) {
            n2.k();
            n2.c = false;
        }
        dbf dbfVar2 = (dbf) n2.b;
        dgsVar3.getClass();
        dbfVar2.c = dgsVar3;
        int i7 = dbfVar2.a | 8;
        dbfVar2.a = i7;
        dbfVar2.a = i7 | 64;
        dbfVar2.f = z;
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(Arrays.asList("packageName", "version", "params", "dynamicParams", "baselineCl"));
            try {
                try {
                    try {
                        try {
                            try {
                                if (bps.a() >= 25) {
                                    try {
                                        if (dmi.a.a().m()) {
                                            z3 = true;
                                            if (z3) {
                                                arrayList.add("heterodyneInfo");
                                            }
                                            String[] strArr = (String[]) arrayList.toArray(new String[0]);
                                            String str12 = "heterodyneInfo";
                                            int i8 = 3;
                                            query = writableDatabase.query("Packages", strArr, null, null, null, null, null);
                                            cqc cqcVar2 = new cqc();
                                            String str13 = "";
                                            while (query.moveToNext()) {
                                                try {
                                                    String string = query.getString(i4);
                                                    if (string.startsWith("__internal.")) {
                                                        str9 = str9;
                                                        i2 = 2;
                                                        i3 = 1;
                                                        i4 = 0;
                                                        i8 = 3;
                                                    } else {
                                                        String str14 = str13;
                                                        long j5 = query.getLong(i3);
                                                        byte[] blob2 = query.getBlob(i2);
                                                        byte[] blob3 = query.getBlob(i8);
                                                        byte[] bArr5 = blob3 != null ? blob3 : blob2;
                                                        Long valueOf = Long.valueOf(query.getLong(4));
                                                        if (z3) {
                                                            str4 = str12;
                                                            try {
                                                                bArr3 = query.getBlob(query.getColumnIndex(str4));
                                                            } catch (Throwable th4) {
                                                                th2 = th4;
                                                                cursor = query;
                                                                if (cursor == null) {
                                                                }
                                                            }
                                                        } else {
                                                            str4 = str12;
                                                            bArr3 = null;
                                                        }
                                                        Iterator it = list.iterator();
                                                        String str15 = str14;
                                                        while (it.hasNext()) {
                                                            String str16 = (String) it.next();
                                                            ddf n4 = dbd.h.n();
                                                            ddf n5 = dbp.f.n();
                                                            String str17 = str4;
                                                            if (n5.c) {
                                                                n5.k();
                                                                n5.c = false;
                                                            }
                                                            dbp dbpVar = (dbp) n5.b;
                                                            string.getClass();
                                                            Cursor cursor2 = query;
                                                            try {
                                                                int i9 = dbpVar.a | 1;
                                                                dbpVar.a = i9;
                                                                dbpVar.b = string;
                                                                dbpVar.a = i9 | 2;
                                                                dbpVar.c = j5;
                                                                ddf n6 = dbi.c.n();
                                                                String str18 = str11;
                                                                if (!str11.equals(str16)) {
                                                                    Iterator it2 = linkedHashMap.entrySet().iterator();
                                                                    int i10 = -1;
                                                                    while (it2.hasNext()) {
                                                                        i10++;
                                                                        Iterator it3 = it2;
                                                                        if (((String) ((Map.Entry) it2.next()).getKey()).equals(str16)) {
                                                                            if (n6.c) {
                                                                                n6.k();
                                                                                n6.c = false;
                                                                            }
                                                                            dbi dbiVar = (dbi) n6.b;
                                                                            j = j5;
                                                                            dbiVar.a |= 1;
                                                                            dbiVar.b = i10;
                                                                        } else {
                                                                            it2 = it3;
                                                                            str9 = str9;
                                                                            j5 = j5;
                                                                            n6 = n6;
                                                                            str10 = str10;
                                                                        }
                                                                    }
                                                                    throw new AssertionError(String.format("Impossible State: Could not find key %s in map", str16));
                                                                }
                                                                try {
                                                                    if (n6.c) {
                                                                        n6.k();
                                                                        n6.c = false;
                                                                    }
                                                                    dbi dbiVar2 = (dbi) n6.b;
                                                                    dbiVar2.a |= 1;
                                                                    dbiVar2.b = -1;
                                                                    j = j5;
                                                                } catch (Throwable th5) {
                                                                    th2 = th5;
                                                                    cursor = cursor2;
                                                                    if (cursor == null) {
                                                                        throw th2;
                                                                    }
                                                                    try {
                                                                        cursor.close();
                                                                        throw th2;
                                                                    } catch (Throwable th6) {
                                                                        throw th2;
                                                                    }
                                                                }
                                                                if (n5.c) {
                                                                    n5.k();
                                                                    n5.c = false;
                                                                }
                                                                dbp dbpVar2 = (dbp) n5.b;
                                                                dbi dbiVar3 = (dbi) n6.h();
                                                                dbiVar3.getClass();
                                                                dbpVar2.d = dbiVar3;
                                                                dbpVar2.a |= 4;
                                                                long longValue = valueOf.longValue();
                                                                if (n5.c) {
                                                                    n5.k();
                                                                    n5.c = false;
                                                                }
                                                                dbp dbpVar3 = (dbp) n5.b;
                                                                dbpVar3.a |= 8;
                                                                dbpVar3.e = longValue;
                                                                if (bArr3 != null) {
                                                                    dcl t = dcl.t(bArr3);
                                                                    if (n4.c) {
                                                                        n4.k();
                                                                        n4.c = false;
                                                                    }
                                                                    dbd dbdVar = (dbd) n4.b;
                                                                    dbdVar.a |= 16;
                                                                    dbdVar.f = t;
                                                                }
                                                                dbp dbpVar4 = (dbp) n5.h();
                                                                if (n4.c) {
                                                                    n4.k();
                                                                    n4.c = false;
                                                                }
                                                                dbd dbdVar2 = (dbd) n4.b;
                                                                dbpVar4.getClass();
                                                                dbdVar2.b = dbpVar4;
                                                                dbdVar2.a |= 1;
                                                                if (bArr5 != null) {
                                                                    dcl t2 = dcl.t(bArr5);
                                                                    if (n4.c) {
                                                                        n4.k();
                                                                        n4.c = false;
                                                                    }
                                                                    dbd dbdVar3 = (dbd) n4.b;
                                                                    dbdVar3.a |= 2;
                                                                    dbdVar3.c = t2;
                                                                }
                                                                if (dmi.d()) {
                                                                    long j6 = j;
                                                                    str6 = string;
                                                                    cqcVar = cqcVar2;
                                                                    cursor = cursor2;
                                                                    try {
                                                                        m = qx.m(writableDatabase, string, j6, str16, true);
                                                                        try {
                                                                            ex.r(true);
                                                                            int l = qx.l(m);
                                                                            m.moveToPosition(-1);
                                                                            int i11 = (int) j6;
                                                                            str7 = str9;
                                                                            str5 = str10;
                                                                            j2 = j6;
                                                                            bArr4 = bArr3;
                                                                            try {
                                                                                Cursor a3 = bpi.a(writableDatabase, str6, i11, str16, true, "flagsHash");
                                                                                try {
                                                                                    if (a3.moveToFirst()) {
                                                                                        i = a3.getInt(0);
                                                                                        if (a3 != null) {
                                                                                            a3.close();
                                                                                        }
                                                                                    } else {
                                                                                        if (a3 != null) {
                                                                                            a3.close();
                                                                                        }
                                                                                        i = 0;
                                                                                    }
                                                                                    z4 = i == 0 ? true : l == i;
                                                                                } catch (Throwable th7) {
                                                                                    if (a3 == null) {
                                                                                        throw th7;
                                                                                    }
                                                                                    try {
                                                                                        a3.close();
                                                                                        throw th7;
                                                                                    } catch (Throwable th8) {
                                                                                        throw th7;
                                                                                    }
                                                                                }
                                                                            } catch (Throwable th9) {
                                                                                th = th9;
                                                                                Throwable th10 = th;
                                                                                try {
                                                                                    m.close();
                                                                                    throw th10;
                                                                                } catch (Throwable th11) {
                                                                                    throw th10;
                                                                                }
                                                                            }
                                                                        } catch (Throwable th12) {
                                                                            th = th12;
                                                                        }
                                                                    } catch (Throwable th13) {
                                                                        th = th13;
                                                                        th2 = th;
                                                                        if (cursor == null) {
                                                                        }
                                                                    }
                                                                    try {
                                                                        m.close();
                                                                        if (!z4) {
                                                                            bps.h(writableDatabase, str6, str16, j2);
                                                                            if (str15.isEmpty()) {
                                                                                str8 = str6;
                                                                                if (dlz.a.a().c()) {
                                                                                    String[] strArr2 = {"tokensTag"};
                                                                                    String[] strArr3 = new String[3];
                                                                                    dbp dbpVar5 = ((dbd) n4.b).b;
                                                                                    if (dbpVar5 == null) {
                                                                                        dbpVar5 = dbp.f;
                                                                                    }
                                                                                    strArr3[0] = dbpVar5.b;
                                                                                    strArr3[1] = str16;
                                                                                    dbp dbpVar6 = ((dbd) n4.b).b;
                                                                                    if (dbpVar6 == null) {
                                                                                        dbpVar6 = dbp.f;
                                                                                    }
                                                                                    j3 = j2;
                                                                                    strArr3[2] = Long.toString(dbpVar6.c);
                                                                                    Cursor query3 = writableDatabase.query("ExperimentTokens", strArr2, "packageName = ? AND user = ? AND version = ? AND isCommitted = 0", strArr3, null, null, null);
                                                                                    try {
                                                                                        if (query3.moveToFirst() && (blob = query3.getBlob(0)) != null) {
                                                                                            dcl t3 = dcl.t(blob);
                                                                                            if (n4.c) {
                                                                                                n4.k();
                                                                                                n4.c = false;
                                                                                            }
                                                                                            dbd dbdVar4 = (dbd) n4.b;
                                                                                            dbdVar4.a |= 4;
                                                                                            dbdVar4.e = t3;
                                                                                        }
                                                                                        if (query3 != null) {
                                                                                            query3.close();
                                                                                        }
                                                                                        Cursor query4 = writableDatabase.query("ApplicationTags", new String[]{"partitionId", "tag"}, "packageName = ? AND user = ? AND version = ?", new String[]{dbpVar4.b, str16, Long.toString(dbpVar4.c)}, null, null, null);
                                                                                        try {
                                                                                            cqc j7 = cqh.j();
                                                                                            while (query4.moveToNext()) {
                                                                                                ddf n7 = dbo.d.n();
                                                                                                long j8 = query4.getLong(0);
                                                                                                if (n7.c) {
                                                                                                    n7.k();
                                                                                                    n7.c = false;
                                                                                                }
                                                                                                dbo dboVar = (dbo) n7.b;
                                                                                                dboVar.a |= 1;
                                                                                                dboVar.b = j8;
                                                                                                dcl t4 = dcl.t(query4.getBlob(1));
                                                                                                if (n7.c) {
                                                                                                    n7.k();
                                                                                                    n7.c = false;
                                                                                                }
                                                                                                dbo dboVar2 = (dbo) n7.b;
                                                                                                dboVar2.a |= 2;
                                                                                                dboVar2.c = t4;
                                                                                                j7.g((dbo) n7.h());
                                                                                            }
                                                                                            cqh f2 = j7.f();
                                                                                            if (query4 != null) {
                                                                                                query4.close();
                                                                                            }
                                                                                            if (n4.c) {
                                                                                                n4.k();
                                                                                                n4.c = false;
                                                                                            }
                                                                                            dbd dbdVar5 = (dbd) n4.b;
                                                                                            ddr ddrVar2 = dbdVar5.d;
                                                                                            if (!ddrVar2.c()) {
                                                                                                dbdVar5.d = ddk.z(ddrVar2);
                                                                                            }
                                                                                            dbu.d(f2, dbdVar5.d);
                                                                                        } finally {
                                                                                        }
                                                                                    } finally {
                                                                                        if (query3 == null) {
                                                                                            throw th;
                                                                                        }
                                                                                        try {
                                                                                            query3.close();
                                                                                            throw th;
                                                                                        } catch (Throwable th14) {
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    j3 = j2;
                                                                                }
                                                                                if (dmi.e()) {
                                                                                    if (n4.c) {
                                                                                        n4.k();
                                                                                        n4.c = false;
                                                                                    }
                                                                                    dbd dbdVar6 = (dbd) n4.b;
                                                                                    dbdVar6.a |= 32;
                                                                                    dbdVar6.g = true;
                                                                                }
                                                                                cqcVar.g((dbd) n4.h());
                                                                                str15 = str8;
                                                                                cqcVar2 = cqcVar;
                                                                                string = str6;
                                                                                str4 = str17;
                                                                                str11 = str18;
                                                                                query = cursor;
                                                                                str9 = str7;
                                                                                str10 = str5;
                                                                                bArr3 = bArr4;
                                                                                j5 = j3;
                                                                            }
                                                                        }
                                                                    } catch (Throwable th15) {
                                                                        th2 = th15;
                                                                        if (cursor == null) {
                                                                        }
                                                                    }
                                                                } else {
                                                                    str5 = str10;
                                                                    bArr4 = bArr3;
                                                                    str6 = string;
                                                                    cqcVar = cqcVar2;
                                                                    long j9 = j;
                                                                    str7 = str9;
                                                                    cursor = cursor2;
                                                                    j2 = j9;
                                                                }
                                                                str8 = str15;
                                                                if (dlz.a.a().c()) {
                                                                }
                                                                if (dmi.e()) {
                                                                }
                                                                cqcVar.g((dbd) n4.h());
                                                                str15 = str8;
                                                                cqcVar2 = cqcVar;
                                                                string = str6;
                                                                str4 = str17;
                                                                str11 = str18;
                                                                query = cursor;
                                                                str9 = str7;
                                                                str10 = str5;
                                                                bArr3 = bArr4;
                                                                j5 = j3;
                                                            } catch (Throwable th16) {
                                                                th = th16;
                                                                cursor = cursor2;
                                                            }
                                                        }
                                                        str13 = str15;
                                                        str12 = str4;
                                                        str9 = str9;
                                                        i2 = 2;
                                                        i3 = 1;
                                                        i4 = 0;
                                                        i8 = 3;
                                                    }
                                                } catch (Throwable th17) {
                                                    th = th17;
                                                    cursor = query;
                                                }
                                            }
                                            str2 = str9;
                                            str3 = str10;
                                            cursor = query;
                                            create = Pair.create(cqcVar2.f(), str13);
                                            if (cursor != null) {
                                                try {
                                                    cursor.close();
                                                } catch (Throwable th18) {
                                                    th = th18;
                                                    str = str2;
                                                    str10 = str3;
                                                    try {
                                                        writableDatabase.endTransaction();
                                                        throw th;
                                                    } catch (IllegalStateException e2) {
                                                        String message = e2.getMessage();
                                                        if (!message.contains(str10)) {
                                                            throw e2;
                                                        }
                                                        if (message.contains(str)) {
                                                            throw th;
                                                        }
                                                        throw e2;
                                                    }
                                                }
                                            }
                                            Iterable iterable = (Iterable) create.first;
                                            if (n.c) {
                                                n.k();
                                                n.c = false;
                                            }
                                            dbj dbjVar2 = (dbj) n.b;
                                            ddrVar = dbjVar2.c;
                                            if (!ddrVar.c()) {
                                                dbjVar2.c = ddk.z(ddrVar);
                                            }
                                            dbu.d(iterable, dbjVar2.c);
                                            if (!((String) create.second).isEmpty()) {
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                dbj dbjVar3 = (dbj) n.b;
                                                dbjVar3.e = 20;
                                                dbjVar3.a |= 4;
                                                String str19 = (String) create.second;
                                                if (n.c) {
                                                    n.k();
                                                    n.c = false;
                                                }
                                                dbj dbjVar4 = (dbj) n.b;
                                                str19.getClass();
                                                dbjVar4.a |= 8;
                                                dbjVar4.f = str19;
                                            }
                                            if (!dmi.f()) {
                                                Cursor query5 = writableDatabase.query("RequestTags", new String[]{"bytesTag"}, "user = ?", new String[]{z2 ? "ALL_USERS" : (String) fv.J(list)}, null, null, null);
                                                try {
                                                    if (query5.moveToFirst()) {
                                                        bArr2 = query5.getBlob(0);
                                                    } else {
                                                        bArr2 = f;
                                                    }
                                                } finally {
                                                    if (query5 == null) {
                                                        throw th;
                                                    }
                                                    try {
                                                        query5.close();
                                                        throw th;
                                                    } catch (Throwable th19) {
                                                    }
                                                }
                                            }
                                            query2 = writableDatabase.query("DogfoodsToken", new String[]{"token"}, null, null, null, null, null);
                                            if (query2.moveToFirst()) {
                                                try {
                                                    bArr = query2.getBlob(0);
                                                    if (bArr != null) {
                                                    }
                                                } catch (Throwable th20) {
                                                    th3 = th20;
                                                    if (query2 == null) {
                                                        throw th3;
                                                    }
                                                    try {
                                                        query2.close();
                                                        throw th3;
                                                    } catch (Throwable th21) {
                                                        throw th3;
                                                    }
                                                }
                                            }
                                            bArr = f;
                                        }
                                    } catch (Throwable th22) {
                                        th = th22;
                                        str = "already-closed";
                                        writableDatabase.endTransaction();
                                        throw th;
                                    }
                                }
                                if (query2.moveToFirst()) {
                                }
                                bArr = f;
                            } catch (Throwable th23) {
                                th3 = th23;
                            }
                            Iterable iterable2 = (Iterable) create.first;
                            if (n.c) {
                            }
                            dbj dbjVar22 = (dbj) n.b;
                            ddrVar = dbjVar22.c;
                            if (!ddrVar.c()) {
                            }
                            dbu.d(iterable2, dbjVar22.c);
                            if (!((String) create.second).isEmpty()) {
                            }
                            if (!dmi.f()) {
                            }
                            query2 = writableDatabase.query("DogfoodsToken", new String[]{"token"}, null, null, null, null, null);
                        } catch (Throwable th24) {
                            th = th24;
                            n2 = str2;
                            str10 = str3;
                            th = th;
                            str = n2;
                            writableDatabase.endTransaction();
                            throw th;
                        }
                        create = Pair.create(cqcVar2.f(), str13);
                        if (cursor != null) {
                        }
                    } catch (Throwable th25) {
                        th = th25;
                        th2 = th;
                        if (cursor == null) {
                        }
                    }
                    cqc cqcVar22 = new cqc();
                    String str132 = "";
                    while (query.moveToNext()) {
                    }
                    str2 = str9;
                    str3 = str10;
                    cursor = query;
                } catch (Throwable th26) {
                    th = th26;
                    cursor = query;
                }
                String[] strArr4 = (String[]) arrayList.toArray(new String[0]);
                String str122 = "heterodyneInfo";
                int i82 = 3;
                query = writableDatabase.query("Packages", strArr4, null, null, null, null, null);
            } catch (Throwable th27) {
                th = th27;
            }
            z3 = false;
            if (z3) {
            }
        } catch (Throwable th28) {
            th = th28;
            n2 = "already-closed";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0620  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x080e  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0817 A[Catch: all -> 0x0a02, TryCatch #38 {all -> 0x0a02, blocks: (B:360:0x0805, B:430:0x07f3, B:149:0x0817, B:151:0x0821, B:152:0x0831, B:154:0x0837, B:156:0x0841, B:158:0x0843, B:161:0x0847, B:162:0x084d, B:164:0x0853, B:166:0x085d, B:167:0x085f, B:169:0x0865, B:170:0x0867, B:173:0x0873, B:176:0x0879, B:182:0x087d, B:183:0x0881, B:185:0x0887, B:187:0x0893, B:188:0x0895, B:195:0x08a1, B:201:0x08b0, B:207:0x08bc, B:210:0x08eb, B:211:0x08f6, B:213:0x08fc, B:215:0x0906, B:216:0x0908, B:218:0x090e, B:219:0x0910, B:222:0x091c, B:227:0x0922, B:228:0x0926, B:230:0x092c, B:232:0x0936), top: B:145:0x062c }] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x095b  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0963 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0af0 A[Catch: all -> 0x0b0e, TryCatch #48 {all -> 0x0b0e, blocks: (B:273:0x0ae5, B:275:0x0af0, B:276:0x0af6, B:277:0x0b08, B:258:0x09bd, B:260:0x09c8, B:261:0x09ce, B:262:0x09e0, B:670:0x0b0c), top: B:12:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0946 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:303:0x062e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0800 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:361:? A[Catch: all -> 0x0a02, SYNTHETIC, TRY_ENTER, TryCatch #38 {all -> 0x0a02, blocks: (B:360:0x0805, B:430:0x07f3, B:149:0x0817, B:151:0x0821, B:152:0x0831, B:154:0x0837, B:156:0x0841, B:158:0x0843, B:161:0x0847, B:162:0x084d, B:164:0x0853, B:166:0x085d, B:167:0x085f, B:169:0x0865, B:170:0x0867, B:173:0x0873, B:176:0x0879, B:182:0x087d, B:183:0x0881, B:185:0x0887, B:187:0x0893, B:188:0x0895, B:195:0x08a1, B:201:0x08b0, B:207:0x08bc, B:210:0x08eb, B:211:0x08f6, B:213:0x08fc, B:215:0x0906, B:216:0x0908, B:218:0x090e, B:219:0x0910, B:222:0x091c, B:227:0x0922, B:228:0x0926, B:230:0x092c, B:232:0x0936), top: B:145:0x062c }] */
    /* JADX WARN: Removed duplicated region for block: B:442:0x0a43 A[Catch: IOException -> 0x0ac2, all -> 0x0ae3, TryCatch #22 {all -> 0x0ae3, blocks: (B:252:0x0999, B:254:0x099d, B:255:0x09a3, B:256:0x09ba, B:268:0x0ad9, B:269:0x0ae2, B:286:0x09e7, B:440:0x0a3b, B:442:0x0a43, B:443:0x0a4b, B:444:0x0a4e, B:643:0x0aa5, B:645:0x0aaf, B:646:0x0ab5, B:647:0x0ac1), top: B:13:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0626  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x050a A[Catch: all -> 0x0a33, TRY_LEAVE, TryCatch #7 {all -> 0x0a33, blocks: (B:104:0x03fc, B:114:0x0443, B:136:0x0500, B:451:0x050a, B:456:0x0521, B:519:0x051b), top: B:103:0x03fc }] */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0a1b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:474:? A[Catch: all -> 0x0a31, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x0a31, blocks: (B:473:0x0a20, B:542:0x0a30), top: B:113:0x0443 }] */
    /* JADX WARN: Removed duplicated region for block: B:608:0x0a90 A[Catch: all -> 0x0aa3, TryCatch #1 {all -> 0x0aa3, blocks: (B:601:0x0a6d, B:602:0x0a70, B:606:0x0a8c, B:608:0x0a90, B:609:0x0a96, B:610:0x0aa2), top: B:15:0x0060 }] */
    /* JADX WARN: Removed duplicated region for block: B:645:0x0aaf A[Catch: IOException -> 0x0ac2, all -> 0x0ae3, TryCatch #22 {all -> 0x0ae3, blocks: (B:252:0x0999, B:254:0x099d, B:255:0x09a3, B:256:0x09ba, B:268:0x0ad9, B:269:0x0ae2, B:286:0x09e7, B:440:0x0a3b, B:442:0x0a43, B:443:0x0a4b, B:444:0x0a4e, B:643:0x0aa5, B:645:0x0aaf, B:646:0x0ab5, B:647:0x0ac1), top: B:13:0x0048 }] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r2v0, types: [ddf] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v51, types: [bqe] */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v54, types: [bqe] */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r3v0, types: [bqe] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(Set set, List list, boolean z, ddf ddfVar, bqe bqeVar, LinkedHashMap linkedHashMap, boolean z2) {
        long j;
        ddf ddfVar2;
        bqe bqeVar2;
        Throwable th;
        Throwable th2;
        ddf ddfVar3;
        IOException iOException;
        ddf ddfVar4;
        IOException iOException2;
        Throwable th3;
        dbk dbkVar;
        boolean z3;
        bqe bqeVar3;
        Throwable th4;
        Throwable th5;
        long j2;
        Long l;
        Throwable th6;
        Long l2;
        boolean z4;
        boolean z5;
        Throwable th7;
        dbj dbjVar;
        Long l3;
        LinkedHashMap linkedHashMap2;
        Object obj;
        Long l4;
        Long l5;
        boolean z6;
        boolean z7;
        ?? r2 = ddfVar;
        ?? r3 = bqeVar;
        LinkedHashMap linkedHashMap3 = linkedHashMap;
        boolean z8 = z2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = z8 ? 4 : "".equals(z8 ? null : (String) fv.J(list)) ? 2 : 3;
        if (r2.c) {
            ddfVar.k();
            r2.c = false;
        }
        dgw dgwVar = (dgw) r2.b;
        dgw dgwVar2 = dgw.h;
        dgwVar.b = i - 1;
        ?? r15 = 1;
        dgwVar.a |= 1;
        Object obj2 = e;
        synchronized (obj2) {
            try {
                try {
                    try {
                        dbj i2 = i(list, z, linkedHashMap3, z8);
                        String join = TextUtils.join("+", linkedHashMap.values());
                        long g = re.g(this.c.getWritableDatabase());
                        try {
                            try {
                                try {
                                    ((csx) a.a(n()).h("com/google/android/gms/phenotype/core/sync/HeterodyneSyncer", "sendRequest", 1242, "HeterodyneSyncer.java")).p("Heterodyne Request: %s", i2);
                                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                                    try {
                                        bqh bqhVar = this.g;
                                        String str = bqhVar.a.a;
                                        int i3 = hi.i(i2.e);
                                        if (i3 == 0) {
                                            i3 = 1;
                                        }
                                        int i4 = i3 - 1;
                                        j = elapsedRealtime;
                                        try {
                                            StringBuilder sb = new StringBuilder(str.length() + 14);
                                            sb.append(str);
                                            sb.append("?r=");
                                            sb.append(i4);
                                            String sb2 = sb.toString();
                                            if (dmi.a.a().i()) {
                                                try {
                                                    int i5 = i2.g;
                                                    StringBuilder sb3 = new StringBuilder(sb2.length() + 14);
                                                    sb3.append(sb2);
                                                    sb3.append("&c=");
                                                    sb3.append(i5);
                                                    sb2 = sb3.toString();
                                                } catch (IOException e2) {
                                                    iOException2 = e2;
                                                    ddfVar4 = r2;
                                                    if (ddfVar4.c) {
                                                    }
                                                    dgw dgwVar3 = (dgw) ddfVar4.b;
                                                    dgwVar3.c = 2;
                                                    dgwVar3.a = 2 | dgwVar3.a;
                                                    throw iOException2;
                                                } catch (Throwable th8) {
                                                    th2 = th8;
                                                    ddfVar3 = r2;
                                                    int elapsedRealtime3 = (int) (SystemClock.elapsedRealtime() - elapsedRealtime2);
                                                    if (ddfVar3.c) {
                                                    }
                                                    dgw dgwVar4 = (dgw) ddfVar3.b;
                                                    dgwVar4.a |= 8;
                                                    dgwVar4.e = elapsedRealtime3;
                                                    throw th2;
                                                }
                                            }
                                            URL url = new URL(sb2);
                                            if (!dlz.a.a().b() && !"https".equals(url.getProtocol())) {
                                                String str2 = bqhVar.a.a;
                                                throw new IllegalArgumentException(str2.length() != 0 ? "Cannot contact server without HTTPS: ".concat(str2) : new String("Cannot contact server without HTTPS: "));
                                            }
                                            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                                            try {
                                                httpURLConnection.setConnectTimeout(Math.max((int) dmi.a.a().a(), 30000));
                                                httpURLConnection.setReadTimeout(Math.max((int) dmi.a.a().b(), 30000));
                                                httpURLConnection.setDoOutput(true);
                                                httpURLConnection.setInstanceFollowRedirects(false);
                                                if (join != null) {
                                                    try {
                                                        if (!join.isEmpty()) {
                                                            httpURLConnection.setRequestProperty("Authorization", join.length() != 0 ? "Bearer ".concat(join) : new String("Bearer "));
                                                        }
                                                    } catch (Throwable th9) {
                                                        th3 = th9;
                                                        ddfVar4 = r2;
                                                        try {
                                                            httpURLConnection.disconnect();
                                                            throw th3;
                                                        } catch (IOException e3) {
                                                            e = e3;
                                                            iOException2 = e;
                                                            if (ddfVar4.c) {
                                                                ddfVar.k();
                                                                ddfVar4.c = false;
                                                            }
                                                            dgw dgwVar32 = (dgw) ddfVar4.b;
                                                            dgwVar32.c = 2;
                                                            dgwVar32.a = 2 | dgwVar32.a;
                                                            throw iOException2;
                                                        }
                                                    }
                                                }
                                                dmi.a.a().p();
                                                dmi.a.a().q();
                                                dmi.a.a().r();
                                                httpURLConnection.setRequestProperty("Content-Type", "application/x-protobuf");
                                                httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
                                                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(httpURLConnection.getOutputStream()));
                                                try {
                                                    i2.g(gZIPOutputStream);
                                                    gZIPOutputStream.close();
                                                    int responseCode = httpURLConnection.getResponseCode();
                                                    if (responseCode >= 200 && responseCode < 300) {
                                                        dbkVar = (dbk) ddk.r(dbk.f, cxg.a(httpURLConnection.getInputStream()), dcz.b());
                                                        httpURLConnection.getHeaderFieldInt("Retry-After", 0);
                                                        z3 = true;
                                                    } else if (responseCode == 401) {
                                                        responseCode = 401;
                                                        dbkVar = null;
                                                        z3 = false;
                                                    } else {
                                                        dbkVar = null;
                                                        z3 = true;
                                                    }
                                                    httpURLConnection.disconnect();
                                                    if (z3) {
                                                        if (dbkVar != null && dbkVar.e.size() > 0) {
                                                            Iterator it = dbkVar.e.iterator();
                                                            while (it.hasNext()) {
                                                                f((String) m(linkedHashMap3, ((Integer) it.next()).intValue()).getValue());
                                                            }
                                                        }
                                                    } else if (z8) {
                                                        Iterator it2 = linkedHashMap.values().iterator();
                                                        while (it2.hasNext()) {
                                                            f((String) it2.next());
                                                        }
                                                        r3.g = list.size() - 1;
                                                    } else {
                                                        f((String) linkedHashMap3.get(fv.J(list)));
                                                        r3.g = 1;
                                                    }
                                                    if (!z3) {
                                                        if (r2.c) {
                                                            ddfVar.k();
                                                            r2.c = false;
                                                        }
                                                        dgw dgwVar5 = (dgw) r2.b;
                                                        dgwVar5.c = 3;
                                                        dgwVar5.a |= 2;
                                                    } else if (responseCode == 0) {
                                                        if (r2.c) {
                                                            ddfVar.k();
                                                            r2.c = false;
                                                        }
                                                        dgw dgwVar6 = (dgw) r2.b;
                                                        dgwVar6.c = 4;
                                                        dgwVar6.a |= 2;
                                                    } else {
                                                        if (responseCode >= 200 && responseCode < 300) {
                                                            if (dbkVar == null) {
                                                                if (r2.c) {
                                                                    ddfVar.k();
                                                                    r2.c = false;
                                                                }
                                                                dgw dgwVar7 = (dgw) r2.b;
                                                                dgwVar7.c = 5;
                                                                dgwVar7.a |= 2;
                                                            } else if (dbkVar.e.size() > 0) {
                                                                if (r2.c) {
                                                                    ddfVar.k();
                                                                    r2.c = false;
                                                                }
                                                                dgw dgwVar8 = (dgw) r2.b;
                                                                dgwVar8.c = 9;
                                                                dgwVar8.a |= 2;
                                                            }
                                                        }
                                                        if (r2.c) {
                                                            ddfVar.k();
                                                            r2.c = false;
                                                        }
                                                        dgw dgwVar9 = (dgw) r2.b;
                                                        dgwVar9.c = 6;
                                                        dgwVar9.a |= 2;
                                                    }
                                                    if (dmi.a.a().j() && responseCode != 200) {
                                                        if (r2.c) {
                                                            ddfVar.k();
                                                            r2.c = false;
                                                        }
                                                        dgw dgwVar10 = (dgw) r2.b;
                                                        dgwVar10.a |= 4;
                                                        dgwVar10.d = responseCode;
                                                    }
                                                    if (dbkVar == null) {
                                                        Object[] objArr = new Object[2];
                                                        objArr[0] = Integer.valueOf(((dgw) r2.b).d);
                                                        int t = dpx.t(((dgw) r2.b).c);
                                                        if (t == 0) {
                                                            t = 1;
                                                        }
                                                        objArr[1] = Integer.toString(t - 1);
                                                        throw new bpt(29504, String.format("Null server response, http status code %d: %s", objArr));
                                                    }
                                                    ((csx) a.a(n()).h("com/google/android/gms/phenotype/core/sync/HeterodyneSyncer", "sendRequest", 1312, "HeterodyneSyncer.java")).p("Heterodyne Response: %s", dbkVar);
                                                    try {
                                                        int elapsedRealtime4 = (int) (SystemClock.elapsedRealtime() - elapsedRealtime2);
                                                        if (r2.c) {
                                                            try {
                                                                ddfVar.k();
                                                                r2.c = false;
                                                            } catch (IOException e4) {
                                                                iOException = e4;
                                                                throw new bpt(29504, "Network error", iOException);
                                                            } catch (Throwable th10) {
                                                                th = th10;
                                                                ddfVar2 = r2;
                                                                bqeVar2 = r3;
                                                                int elapsedRealtime5 = (int) (SystemClock.elapsedRealtime() - j);
                                                                if (ddfVar2.c) {
                                                                }
                                                                dgw dgwVar11 = (dgw) ddfVar2.b;
                                                                dgwVar11.a |= 16;
                                                                dgwVar11.f = elapsedRealtime5;
                                                                bqeVar2.e = list.size();
                                                                throw th;
                                                            }
                                                        }
                                                        dgw dgwVar12 = (dgw) r2.b;
                                                        dgwVar12.a |= 8;
                                                        dgwVar12.e = elapsedRealtime4;
                                                        if (!dbkVar.c.isEmpty() && i2 != null) {
                                                            try {
                                                                dbf dbfVar = i2.b;
                                                                if (dbfVar == null) {
                                                                    dbfVar = dbf.g;
                                                                }
                                                                String str3 = dbfVar.d;
                                                            } catch (bpt e5) {
                                                                if (dmi.a.a().n()) {
                                                                    if (r2.c) {
                                                                        ddfVar.k();
                                                                        r2.c = false;
                                                                    }
                                                                    dgw dgwVar13 = (dgw) r2.b;
                                                                    dgwVar13.c = 11;
                                                                    dgwVar13.a |= 2;
                                                                    throw e5;
                                                                }
                                                                ((csx) ((csx) a.c().g(e5)).h("com/google/android/gms/phenotype/core/sync/HeterodyneSyncer", "processResponse", 1496, "HeterodyneSyncer.java")).n("Skip setting Pseudonymous ID error.");
                                                            }
                                                        }
                                                        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
                                                        writableDatabase.beginTransaction();
                                                        try {
                                                            long g2 = re.g(writableDatabase);
                                                            try {
                                                                if (g2 != g) {
                                                                    if (r2.c) {
                                                                        ddfVar.k();
                                                                        r2.c = false;
                                                                    }
                                                                    dgw dgwVar14 = (dgw) r2.b;
                                                                    dgwVar14.c = 7;
                                                                    dgwVar14.a |= 2;
                                                                    throw new bpt(29504, String.format("Bad change count. Expecting %d, got %d", Long.valueOf(g), Long.valueOf(g2)));
                                                                }
                                                                try {
                                                                    long j3 = dbkVar.d;
                                                                    ContentValues contentValues = new ContentValues();
                                                                    contentValues.put("key", (Integer) 1);
                                                                    contentValues.put("servertimestamp", Long.valueOf(j3));
                                                                    writableDatabase.insertWithOnConflict("LastFetch", null, contentValues, 5);
                                                                    Cursor query = writableDatabase.query("LastFetch", new String[]{"servertimestamp"}, "key = 0", null, null, null, null);
                                                                    try {
                                                                        if (query.moveToFirst()) {
                                                                            try {
                                                                                j2 = query.getLong(0);
                                                                            } catch (Throwable th11) {
                                                                                th5 = th11;
                                                                                if (query == null) {
                                                                                    throw th5;
                                                                                }
                                                                                try {
                                                                                    query.close();
                                                                                    throw th5;
                                                                                } catch (Throwable th12) {
                                                                                    throw th5;
                                                                                }
                                                                            }
                                                                        } else {
                                                                            j2 = 0;
                                                                        }
                                                                        if (query != null) {
                                                                            query.close();
                                                                        }
                                                                        try {
                                                                            try {
                                                                                try {
                                                                                    if (j2 > j3) {
                                                                                        Cursor query2 = writableDatabase.query("LastFetch", new String[]{"servertimestamp"}, "key = 2", null, null, null, null);
                                                                                        try {
                                                                                            long j4 = query2.moveToFirst() ? query2.getLong(0) : 0L;
                                                                                            if (query2 != null) {
                                                                                                query2.close();
                                                                                            }
                                                                                            if (j4 != j2) {
                                                                                                ContentValues contentValues2 = new ContentValues();
                                                                                                contentValues2.put("key", (Integer) 2);
                                                                                                Long valueOf = Long.valueOf(j2);
                                                                                                contentValues2.put("servertimestamp", valueOf);
                                                                                                writableDatabase.insertWithOnConflict("LastFetch", null, contentValues2, 5);
                                                                                                l = valueOf;
                                                                                                if (!dmi.f()) {
                                                                                                    z4 = false;
                                                                                                    l2 = null;
                                                                                                } else if (dbkVar.b.d() == 0) {
                                                                                                    z4 = false;
                                                                                                    l2 = null;
                                                                                                } else {
                                                                                                    String str4 = z8 ? "ALL_USERS" : (String) fv.J(list);
                                                                                                    ContentValues contentValues3 = new ContentValues();
                                                                                                    contentValues3.put("user", str4);
                                                                                                    contentValues3.put("bytesTag", dbkVar.b.C());
                                                                                                    HashMap hashMap = new HashMap();
                                                                                                    Cursor query3 = writableDatabase.query("RequestTags", new String[]{"user", "bytesTag"}, null, null, null, null, null);
                                                                                                    ddf ddfVar5 = r2;
                                                                                                    while (query3.moveToNext()) {
                                                                                                        try {
                                                                                                            try {
                                                                                                                hashMap.put(query3.getString(0), query3.getBlob(1));
                                                                                                                ddfVar5 = ddfVar;
                                                                                                            } catch (Throwable th13) {
                                                                                                                th6 = th13;
                                                                                                                if (query3 != null) {
                                                                                                                    throw th6;
                                                                                                                }
                                                                                                                try {
                                                                                                                    query3.close();
                                                                                                                    throw th6;
                                                                                                                } catch (Throwable th14) {
                                                                                                                    throw th6;
                                                                                                                }
                                                                                                            }
                                                                                                        } catch (Throwable th15) {
                                                                                                            th = th15;
                                                                                                        }
                                                                                                    }
                                                                                                    try {
                                                                                                        try {
                                                                                                            if (!hashMap.containsKey(str4)) {
                                                                                                                writableDatabase.insert("RequestTags", null, contentValues3);
                                                                                                            } else if (Arrays.equals((byte[]) hashMap.get(str4), dbkVar.b.C())) {
                                                                                                                if (query3 != null) {
                                                                                                                    query3.close();
                                                                                                                }
                                                                                                                z4 = false;
                                                                                                                l2 = null;
                                                                                                            } else {
                                                                                                                writableDatabase.update("RequestTags", contentValues3, "user = ?", new String[]{str4});
                                                                                                            }
                                                                                                            if ("ALL_USERS".equals(str4)) {
                                                                                                                Iterator it3 = list.iterator();
                                                                                                                while (it3.hasNext()) {
                                                                                                                    String str5 = (String) it3.next();
                                                                                                                    ContentValues contentValues4 = new ContentValues();
                                                                                                                    contentValues4.put("user", str5);
                                                                                                                    contentValues4.put("bytesTag", bpq.a);
                                                                                                                    if (!hashMap.containsKey(str5) || !Arrays.equals((byte[]) hashMap.get(str5), bpq.a)) {
                                                                                                                        writableDatabase.insertWithOnConflict("RequestTags", null, contentValues4, 5);
                                                                                                                    }
                                                                                                                }
                                                                                                                l2 = null;
                                                                                                            } else {
                                                                                                                l2 = null;
                                                                                                                writableDatabase.delete("RequestTags", "user = ?", new String[]{"ALL_USERS"});
                                                                                                            }
                                                                                                            if (query3 != null) {
                                                                                                                query3.close();
                                                                                                            }
                                                                                                            z4 = true;
                                                                                                        } catch (Throwable th16) {
                                                                                                            th4 = th16;
                                                                                                            bqeVar3 = r3;
                                                                                                            if (dbkVar.e.size() > 0) {
                                                                                                            }
                                                                                                            writableDatabase.endTransaction();
                                                                                                            throw th4;
                                                                                                        }
                                                                                                    } catch (Throwable th17) {
                                                                                                        th = th17;
                                                                                                        th6 = th;
                                                                                                        if (query3 != null) {
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                z5 = dbkVar.a.size() > 0 ? z4 : true;
                                                                                                HashSet hashSet = new HashSet();
                                                                                                if (z5) {
                                                                                                    linkedHashMap2 = linkedHashMap3;
                                                                                                    dbjVar = i2;
                                                                                                    l3 = l;
                                                                                                    obj = obj2;
                                                                                                    l4 = l2;
                                                                                                } else {
                                                                                                    try {
                                                                                                        SQLiteStatement compileStatement = writableDatabase.compileStatement("INSERT OR REPLACE INTO Flags(packageName, version, flagType, partitionId, user, name, committed, intVal, boolVal, floatVal, stringVal, extensionVal) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                                                                                                        try {
                                                                                                            Long valueOf2 = Long.valueOf(re.h(writableDatabase, "__sync"));
                                                                                                            ArrayList<dbe> arrayList = new ArrayList();
                                                                                                            Iterator it4 = dbkVar.a.iterator();
                                                                                                            while (it4.hasNext()) {
                                                                                                                try {
                                                                                                                    dbe dbeVar = (dbe) it4.next();
                                                                                                                    dbp dbpVar = dbeVar.b;
                                                                                                                    if (dbpVar == null) {
                                                                                                                        dbpVar = dbp.f;
                                                                                                                    }
                                                                                                                    String str6 = dbpVar.b;
                                                                                                                    Long l6 = valueOf2;
                                                                                                                    dbp dbpVar2 = dbeVar.b;
                                                                                                                    if (dbpVar2 == null) {
                                                                                                                        dbpVar2 = dbp.f;
                                                                                                                    }
                                                                                                                    dbj dbjVar2 = i2;
                                                                                                                    long j5 = dbpVar2.c;
                                                                                                                    Iterator it5 = it4;
                                                                                                                    dbp dbpVar3 = dbeVar.b;
                                                                                                                    if (dbpVar3 == null) {
                                                                                                                        dbpVar3 = dbp.f;
                                                                                                                    }
                                                                                                                    String l7 = l(linkedHashMap3, dbpVar3);
                                                                                                                    if (dmi.e() && z8) {
                                                                                                                        dbg dbgVar = dbeVar.h;
                                                                                                                        if (dbgVar == null) {
                                                                                                                            dbgVar = dbg.b;
                                                                                                                        }
                                                                                                                        int h = hi.h(dbgVar.a);
                                                                                                                        if (h == 0) {
                                                                                                                            l5 = l;
                                                                                                                        } else {
                                                                                                                            l5 = l;
                                                                                                                            if (h == 3) {
                                                                                                                                if (l7.equals("")) {
                                                                                                                                    Iterator it6 = list.iterator();
                                                                                                                                    z7 = false;
                                                                                                                                    z6 = false;
                                                                                                                                    while (it6.hasNext()) {
                                                                                                                                        Iterator it7 = it6;
                                                                                                                                        String str7 = (String) it6.next();
                                                                                                                                        z7 |= s(str7, writableDatabase, compileStatement, dbeVar);
                                                                                                                                        z6 |= t(writableDatabase, str6, j5, str7, dbeVar, dbkVar.d, arrayList);
                                                                                                                                        it6 = it7;
                                                                                                                                    }
                                                                                                                                } else {
                                                                                                                                    z7 = false;
                                                                                                                                    z6 = false;
                                                                                                                                }
                                                                                                                                if (!z6 && !z7) {
                                                                                                                                    linkedHashMap3 = linkedHashMap;
                                                                                                                                    z8 = z2;
                                                                                                                                    valueOf2 = l6;
                                                                                                                                    i2 = dbjVar2;
                                                                                                                                    it4 = it5;
                                                                                                                                    l = l5;
                                                                                                                                }
                                                                                                                                hashSet.add(str6);
                                                                                                                                linkedHashMap3 = linkedHashMap;
                                                                                                                                z8 = z2;
                                                                                                                                valueOf2 = l6;
                                                                                                                                i2 = dbjVar2;
                                                                                                                                it4 = it5;
                                                                                                                                l = l5;
                                                                                                                            }
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        l5 = l;
                                                                                                                    }
                                                                                                                    boolean s = s(l7, writableDatabase, compileStatement, dbeVar);
                                                                                                                    boolean t2 = t(writableDatabase, str6, j5, l7, dbeVar, dbkVar.d, arrayList);
                                                                                                                    z7 = s;
                                                                                                                    z6 = t2;
                                                                                                                    if (!z6) {
                                                                                                                        linkedHashMap3 = linkedHashMap;
                                                                                                                        z8 = z2;
                                                                                                                        valueOf2 = l6;
                                                                                                                        i2 = dbjVar2;
                                                                                                                        it4 = it5;
                                                                                                                        l = l5;
                                                                                                                    }
                                                                                                                    hashSet.add(str6);
                                                                                                                    linkedHashMap3 = linkedHashMap;
                                                                                                                    z8 = z2;
                                                                                                                    valueOf2 = l6;
                                                                                                                    i2 = dbjVar2;
                                                                                                                    it4 = it5;
                                                                                                                    l = l5;
                                                                                                                } catch (Throwable th18) {
                                                                                                                    th7 = th18;
                                                                                                                    if (compileStatement != null) {
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                            Long l8 = valueOf2;
                                                                                                            dbjVar = i2;
                                                                                                            l3 = l;
                                                                                                            Iterator it8 = hashSet.iterator();
                                                                                                            while (it8.hasNext()) {
                                                                                                                re.h(writableDatabase, (String) it8.next());
                                                                                                            }
                                                                                                            for (dbe dbeVar2 : arrayList) {
                                                                                                                dbp dbpVar4 = dbeVar2.b;
                                                                                                                if (dbpVar4 == null) {
                                                                                                                    dbpVar4 = dbp.f;
                                                                                                                }
                                                                                                                String l9 = l(linkedHashMap, dbpVar4);
                                                                                                                Iterator it9 = dbeVar2.f.iterator();
                                                                                                                while (it9.hasNext()) {
                                                                                                                    dbh dbhVar = (dbh) it9.next();
                                                                                                                    String[] strArr = {"isCommitted"};
                                                                                                                    String[] strArr2 = new String[3];
                                                                                                                    dbp dbpVar5 = dbhVar.a;
                                                                                                                    if (dbpVar5 == null) {
                                                                                                                        dbpVar5 = dbp.f;
                                                                                                                    }
                                                                                                                    strArr2[0] = dbpVar5.b;
                                                                                                                    dbp dbpVar6 = dbhVar.a;
                                                                                                                    if (dbpVar6 == null) {
                                                                                                                        dbpVar6 = dbp.f;
                                                                                                                    }
                                                                                                                    Iterator it10 = it9;
                                                                                                                    Object obj3 = obj2;
                                                                                                                    try {
                                                                                                                        strArr2[1] = Long.toString(dbpVar6.c);
                                                                                                                        strArr2[2] = l9;
                                                                                                                        Cursor query4 = writableDatabase.query("ExperimentTokens", strArr, "packageName = ? AND version = ? AND user = ? AND isCommitted = 1", strArr2, null, null, null);
                                                                                                                        try {
                                                                                                                            if (query4.moveToNext()) {
                                                                                                                                if (query4 != null) {
                                                                                                                                    query4.close();
                                                                                                                                }
                                                                                                                                dbp dbpVar7 = dbeVar2.b;
                                                                                                                                if (dbpVar7 == null) {
                                                                                                                                    dbpVar7 = dbp.f;
                                                                                                                                }
                                                                                                                                String str8 = dbpVar7.b;
                                                                                                                                dbp dbpVar8 = dbeVar2.b;
                                                                                                                                if (dbpVar8 == null) {
                                                                                                                                    dbpVar8 = dbp.f;
                                                                                                                                }
                                                                                                                                r(writableDatabase, str8, dbpVar8.c, l9, dbhVar, true);
                                                                                                                            } else if (query4 != null) {
                                                                                                                                query4.close();
                                                                                                                                it9 = it10;
                                                                                                                                obj2 = obj3;
                                                                                                                            }
                                                                                                                            it9 = it10;
                                                                                                                            obj2 = obj3;
                                                                                                                        } catch (Throwable th19) {
                                                                                                                        }
                                                                                                                    } catch (Throwable th20) {
                                                                                                                        th = th20;
                                                                                                                        th7 = th;
                                                                                                                        if (compileStatement != null) {
                                                                                                                            throw th7;
                                                                                                                        }
                                                                                                                        try {
                                                                                                                            compileStatement.close();
                                                                                                                            throw th7;
                                                                                                                        } catch (Throwable th21) {
                                                                                                                            throw th7;
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                            linkedHashMap2 = linkedHashMap;
                                                                                                            obj = obj2;
                                                                                                            if (compileStatement != null) {
                                                                                                                compileStatement.close();
                                                                                                            }
                                                                                                            l4 = l8;
                                                                                                        } catch (Throwable th22) {
                                                                                                            th = th22;
                                                                                                        }
                                                                                                    } catch (Throwable th23) {
                                                                                                        th = th23;
                                                                                                        r2 = bqeVar;
                                                                                                        th4 = th;
                                                                                                        bqeVar3 = r2;
                                                                                                        if (dbkVar.e.size() > 0) {
                                                                                                            bqeVar3.g = dbkVar.e.size();
                                                                                                        }
                                                                                                        writableDatabase.endTransaction();
                                                                                                        throw th4;
                                                                                                    }
                                                                                                }
                                                                                                if (dbjVar != null) {
                                                                                                    dbj dbjVar3 = dbjVar;
                                                                                                    if (dbjVar3.c.size() > 0) {
                                                                                                        HashSet<dbp> hashSet2 = new HashSet();
                                                                                                        HashSet hashSet3 = new HashSet();
                                                                                                        Iterator it11 = dbkVar.a.iterator();
                                                                                                        while (it11.hasNext()) {
                                                                                                            dbp dbpVar9 = ((dbe) it11.next()).b;
                                                                                                            if (dbpVar9 == null) {
                                                                                                                dbpVar9 = dbp.f;
                                                                                                            }
                                                                                                            hashSet3.add(dbpVar9);
                                                                                                        }
                                                                                                        Iterator it12 = dbjVar3.c.iterator();
                                                                                                        while (it12.hasNext()) {
                                                                                                            dbp dbpVar10 = ((dbd) it12.next()).b;
                                                                                                            if (dbpVar10 == null) {
                                                                                                                dbpVar10 = dbp.f;
                                                                                                            }
                                                                                                            ddp ddpVar = dbkVar.e;
                                                                                                            dbi dbiVar = dbpVar10.d;
                                                                                                            if (dbiVar == null) {
                                                                                                                dbiVar = dbi.c;
                                                                                                            }
                                                                                                            if (!ddpVar.contains(Integer.valueOf(dbiVar.b)) && !hashSet3.contains(dbpVar10)) {
                                                                                                                hashSet2.add(dbpVar10);
                                                                                                            }
                                                                                                        }
                                                                                                        for (dbp dbpVar11 : hashSet2) {
                                                                                                            ddp ddpVar2 = dbkVar.e;
                                                                                                            dbi dbiVar2 = dbpVar11.d;
                                                                                                            if (dbiVar2 == null) {
                                                                                                                dbiVar2 = dbi.c;
                                                                                                            }
                                                                                                            if (!ddpVar2.contains(Integer.valueOf(dbiVar2.b))) {
                                                                                                                String l10 = l(linkedHashMap2, dbpVar11);
                                                                                                                p(writableDatabase, dbpVar11, l10, dbkVar.d);
                                                                                                                if (!dmi.d() && dmi.a.a().e()) {
                                                                                                                    ContentValues contentValues5 = new ContentValues();
                                                                                                                    contentValues5.putNull("flagsHash");
                                                                                                                    writableDatabase.update("ExperimentTokens", contentValues5, "packageName = ? AND version = ? AND user = ? AND isCommitted = 0", new String[]{dbpVar11.b, String.valueOf(dbpVar11.c), l10});
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        HashSet hashSet4 = new HashSet();
                                                                                                        Iterator it13 = dbjVar3.c.iterator();
                                                                                                        while (it13.hasNext()) {
                                                                                                            dbp dbpVar12 = ((dbd) it13.next()).b;
                                                                                                            if (dbpVar12 == null) {
                                                                                                                dbpVar12 = dbp.f;
                                                                                                            }
                                                                                                            ddp ddpVar3 = dbkVar.e;
                                                                                                            dbi dbiVar3 = dbpVar12.d;
                                                                                                            if (dbiVar3 == null) {
                                                                                                                dbiVar3 = dbi.c;
                                                                                                            }
                                                                                                            if (!ddpVar3.contains(Integer.valueOf(dbiVar3.b))) {
                                                                                                                hashSet4.add(dbpVar12.b);
                                                                                                            }
                                                                                                        }
                                                                                                        Iterator it14 = hashSet4.iterator();
                                                                                                        while (it14.hasNext()) {
                                                                                                            bpp.a(writableDatabase, (String) it14.next());
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                set.addAll(hashSet);
                                                                                                writableDatabase.setTransactionSuccessful();
                                                                                                if (dbkVar.e.size() <= 0) {
                                                                                                    try {
                                                                                                        r2 = bqeVar;
                                                                                                        try {
                                                                                                            r2.g = dbkVar.e.size();
                                                                                                            r2 = r2;
                                                                                                        } catch (IOException e6) {
                                                                                                            e = e6;
                                                                                                            iOException = e;
                                                                                                            throw new bpt(29504, "Network error", iOException);
                                                                                                        } catch (Throwable th24) {
                                                                                                            th = th24;
                                                                                                            r3 = ddfVar;
                                                                                                            th = th;
                                                                                                            bqeVar2 = r2;
                                                                                                            ddfVar2 = r3;
                                                                                                            int elapsedRealtime52 = (int) (SystemClock.elapsedRealtime() - j);
                                                                                                            if (ddfVar2.c) {
                                                                                                                ddfVar.k();
                                                                                                                ddfVar2.c = false;
                                                                                                            }
                                                                                                            dgw dgwVar112 = (dgw) ddfVar2.b;
                                                                                                            dgwVar112.a |= 16;
                                                                                                            dgwVar112.f = elapsedRealtime52;
                                                                                                            bqeVar2.e = list.size();
                                                                                                            throw th;
                                                                                                        }
                                                                                                    } catch (IOException e7) {
                                                                                                        e = e7;
                                                                                                        iOException = e;
                                                                                                        throw new bpt(29504, "Network error", iOException);
                                                                                                    } catch (Throwable th25) {
                                                                                                        th = th25;
                                                                                                        r2 = bqeVar;
                                                                                                        r3 = ddfVar;
                                                                                                        th = th;
                                                                                                        bqeVar2 = r2;
                                                                                                        ddfVar2 = r3;
                                                                                                        int elapsedRealtime522 = (int) (SystemClock.elapsedRealtime() - j);
                                                                                                        if (ddfVar2.c) {
                                                                                                        }
                                                                                                        dgw dgwVar1122 = (dgw) ddfVar2.b;
                                                                                                        dgwVar1122.a |= 16;
                                                                                                        dgwVar1122.f = elapsedRealtime522;
                                                                                                        bqeVar2.e = list.size();
                                                                                                        throw th;
                                                                                                    }
                                                                                                } else {
                                                                                                    r2 = bqeVar;
                                                                                                }
                                                                                                writableDatabase.endTransaction();
                                                                                                synchronized (bpc.a) {
                                                                                                    try {
                                                                                                    } finally {
                                                                                                        th = th;
                                                                                                        while (true) {
                                                                                                            Throwable th26 = th;
                                                                                                            try {
                                                                                                            } catch (Throwable th27) {
                                                                                                                th = th27;
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                if (l3 != null && dmf.a.a().a()) {
                                                                                                    l3.longValue();
                                                                                                }
                                                                                                if (l4 != null && l4.longValue() % dlz.a.a().a() == 0) {
                                                                                                    d();
                                                                                                }
                                                                                                if (!dbkVar.e.isEmpty()) {
                                                                                                    if (ddfVar.c) {
                                                                                                        ddfVar.k();
                                                                                                        ddfVar.c = false;
                                                                                                    }
                                                                                                    dgw dgwVar15 = (dgw) ddfVar.b;
                                                                                                    dgwVar15.c = 9;
                                                                                                    dgwVar15.a |= 2;
                                                                                                    throw new bpt(29504, "Partial authentication failure");
                                                                                                }
                                                                                                int elapsedRealtime6 = (int) (SystemClock.elapsedRealtime() - j);
                                                                                                if (ddfVar.c) {
                                                                                                    ddfVar.k();
                                                                                                    ddfVar.c = false;
                                                                                                }
                                                                                                dgw dgwVar16 = (dgw) ddfVar.b;
                                                                                                dgwVar16.a |= 16;
                                                                                                dgwVar16.f = elapsedRealtime6;
                                                                                                r2.e = list.size();
                                                                                                return;
                                                                                            }
                                                                                        } finally {
                                                                                            if (query2 == null) {
                                                                                                throw th;
                                                                                            }
                                                                                            try {
                                                                                                query2.close();
                                                                                                throw th;
                                                                                            } catch (Throwable th28) {
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    if (dbkVar.e.size() <= 0) {
                                                                                    }
                                                                                    writableDatabase.endTransaction();
                                                                                    synchronized (bpc.a) {
                                                                                    }
                                                                                } catch (IOException e8) {
                                                                                    e = e8;
                                                                                } catch (Throwable th29) {
                                                                                    th = th29;
                                                                                    r3 = ddfVar;
                                                                                    r2 = bqeVar;
                                                                                }
                                                                                if (z5) {
                                                                                }
                                                                                if (dbjVar != null) {
                                                                                }
                                                                                set.addAll(hashSet);
                                                                                writableDatabase.setTransactionSuccessful();
                                                                            } catch (Throwable th30) {
                                                                                th = th30;
                                                                            }
                                                                            if (dbkVar.a.size() > 0) {
                                                                            }
                                                                            HashSet hashSet5 = new HashSet();
                                                                        } catch (Throwable th31) {
                                                                            th = th31;
                                                                            r2 = r3;
                                                                        }
                                                                        l = null;
                                                                        if (!dmi.f()) {
                                                                        }
                                                                    } catch (Throwable th32) {
                                                                        th5 = th32;
                                                                    }
                                                                } catch (Throwable th33) {
                                                                    th = th33;
                                                                }
                                                            } catch (Throwable th34) {
                                                                th4 = th34;
                                                                bqeVar3 = r3;
                                                            }
                                                        } catch (Throwable th35) {
                                                            th = th35;
                                                            r2 = r3;
                                                        }
                                                    } catch (IOException e9) {
                                                        e = e9;
                                                        iOException = e;
                                                        throw new bpt(29504, "Network error", iOException);
                                                    } catch (Throwable th36) {
                                                        th = th36;
                                                        r3 = r2;
                                                        r2 = r3;
                                                        th = th;
                                                        bqeVar2 = r2;
                                                        ddfVar2 = r3;
                                                        int elapsedRealtime5222 = (int) (SystemClock.elapsedRealtime() - j);
                                                        if (ddfVar2.c) {
                                                        }
                                                        dgw dgwVar11222 = (dgw) ddfVar2.b;
                                                        dgwVar11222.a |= 16;
                                                        dgwVar11222.f = elapsedRealtime5222;
                                                        bqeVar2.e = list.size();
                                                        throw th;
                                                    }
                                                } catch (Throwable th37) {
                                                    ddfVar4 = r2;
                                                    try {
                                                        gZIPOutputStream.close();
                                                    } catch (Throwable th38) {
                                                    }
                                                    try {
                                                        throw th37;
                                                    } catch (Throwable th39) {
                                                        th = th39;
                                                        th3 = th;
                                                        httpURLConnection.disconnect();
                                                        throw th3;
                                                    }
                                                }
                                            } catch (Throwable th40) {
                                                th = th40;
                                                ddfVar4 = r2;
                                            }
                                        } catch (IOException e10) {
                                            e = e10;
                                            ddfVar4 = r2;
                                            iOException2 = e;
                                            if (ddfVar4.c) {
                                            }
                                            dgw dgwVar322 = (dgw) ddfVar4.b;
                                            dgwVar322.c = 2;
                                            dgwVar322.a = 2 | dgwVar322.a;
                                            throw iOException2;
                                        } catch (Throwable th41) {
                                            th = th41;
                                            r3 = r2;
                                            th2 = th;
                                            ddfVar3 = r3;
                                            int elapsedRealtime32 = (int) (SystemClock.elapsedRealtime() - elapsedRealtime2);
                                            if (ddfVar3.c) {
                                                ddfVar.k();
                                                ddfVar3.c = false;
                                            }
                                            dgw dgwVar42 = (dgw) ddfVar3.b;
                                            dgwVar42.a |= 8;
                                            dgwVar42.e = elapsedRealtime32;
                                            throw th2;
                                        }
                                    } catch (IOException e11) {
                                        e = e11;
                                    } catch (Throwable th42) {
                                        th = th42;
                                    }
                                } catch (Throwable th43) {
                                    th = th43;
                                }
                            } catch (IOException e12) {
                                e = e12;
                            }
                        } catch (IOException e13) {
                            e = e13;
                        } catch (Throwable th44) {
                            th = th44;
                            j = elapsedRealtime;
                        }
                    } catch (Throwable th45) {
                        th = th45;
                    }
                } catch (Throwable th46) {
                    th = th46;
                    r15 = obj2;
                    Throwable th47 = th;
                    throw th47;
                }
            } catch (Throwable th48) {
                th = th48;
            }
        }
    }
}
