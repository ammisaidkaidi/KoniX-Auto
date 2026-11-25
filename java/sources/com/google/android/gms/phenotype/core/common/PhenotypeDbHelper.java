package com.google.android.gms.phenotype.core.common;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import java.io.Closeable;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeDbHelper extends SQLiteOpenHelper implements Closeable {
    static final Object b;
    protected static volatile PhenotypeDbHelper c;
    protected static volatile PhenotypeDbHelper d;
    private static final Method h;
    private static final Method i;
    int e;
    ScheduledFuture f;
    private final ScheduledExecutorService j;
    private static final FloggerLoggerFactory g = FloggerLoggerFactory.g("com/google/android/gms/phenotype/core/common/PhenotypeDbHelper");
    static final StopwatchTicker a = ex.i(bpe.b);

    static {
        Method method;
        Method method2 = null;
        try {
            method = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", new Class[0]);
            method.setAccessible(true);
        } catch (Throwable th) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) g.b().g(ActivityResultDispatchRunnable)).h("com/google/android/gms/phenotype/core/common/PhenotypeDbHelper", "getGetThreadSessionMethod", 98, "PhenotypeDbHelper.java")).n("Unable to reflect getThreadSession");
            method = null;
        }
        h = method;
        if (method != null) {
            try {
                method2 = method.getReturnType().getDeclaredMethod("beginTransaction", Integer.TYPE, SQLiteTransactionListener.class, Integer.TYPE, CancellationSignal.class);
            } catch (Throwable th2) {
                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) g.b().g(th2)).h("com/google/android/gms/phenotype/core/common/PhenotypeDbHelper", "getBeginTransactionMethod", 118, "PhenotypeDbHelper.java")).n("Unable to reflect beginTransaction");
            }
        }
        i = method2;
        b = new Object();
        Charset.forName("UTF-8");
    }

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public PhenotypeDbHelper(Context context) {
        super(context, "phenotype.db", (SQLiteDatabase.CursorFactory) null, a());
        AdapterDataObserver qsVar = bog.a;
        ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
        this.e = 0;
        this.j = unconfigurableScheduledExecutorService;
    }

    public static int a() {
        return ((Integer) a.a()).intValue();
    }

    public static Pair b(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        if (!PhenotypeUriBuilder.c(str)) {
            return ApplicationStatesDao.a(sQLiteDatabase, str);
        }
        Integer a2 = MultiCommitApplicationStatesDao.a(sQLiteDatabase, str, str2);
        if (a2 != null) {
            return Pair.create(str2, a2);
        }
        return null;
    }

    public static PhenotypeDbHelper c(Context context) {
        PhenotypeDbHelper bpsVar;
        if (DirectBootUtils.b(context)) {
            context = context.createDeviceProtectedStorageContext();
        }
        boolean isDeviceProtectedStorage = context.isDeviceProtectedStorage();
        synchronized (ProtoLiteMessageBase) {
            if (isDeviceProtectedStorage) {
                if (PhenotypeFlagMessage == null) {
                    c = new PhenotypeDbHelper(context);
                }
                c.e++;
                if (c.f != null && c.f.cancel(true)) {
                    c.f = null;
                }
                bpsVar = c;
            } else {
                if (ProtoMsgIntStringInt == null) {
                    d = new PhenotypeDbHelper(context);
                }
                d.e++;
                if (d.f != null && d.f.cancel(true)) {
                    d.f = null;
                }
                bpsVar = d;
            }
        }
        return bpsVar;
    }

    public static String d(String str, String str2, String... strArr) {
        StringBuilder sb = new StringBuilder("CREATE INDEX IF NOT EXISTS ");
        StaggeredGridLayoutParams.append(str2);
        StaggeredGridLayoutParams.append(" ON ");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(" (");
        k(sb, strArr);
        StaggeredGridLayoutParams.append(")");
        return StaggeredGridLayoutParams.toString();
    }

    public static String e(String str, String... strArr) {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(" (");
        k(sb, strArr);
        StaggeredGridLayoutParams.append(")");
        return StaggeredGridLayoutParams.toString();
    }

    public static String f(String... strArr) {
        StringBuilder sb = new StringBuilder(", PRIMARY KEY(");
        k(sb, strArr);
        StaggeredGridLayoutParams.append(")");
        return StaggeredGridLayoutParams.toString();
    }

    public static void h(SQLiteDatabase sQLiteDatabase, String str, String str2, long j) {
        ApplicationTagsDao.a(sQLiteDatabase, str, str2, j);
        ExperimentTokensDao.c(sQLiteDatabase, str, str2, j);
        ContentValues contentValues = new ContentValues();
        contentValues.put("bytesTag", bpq.a);
        sQLiteDatabase.update("RequestTags", contentValues, "user = ?", new String[]{str2});
        sQLiteDatabase.update("RequestTags", contentValues, "user = ?", new String[]{"ALL_USERS"});
    }

    private static void j(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        try {
            Cursor rawQuery = sQLiteDatabase.rawQuery(String.format("SELECT %s FROM %s", str2, str), null);
            if (rawQuery != null) {
                rawQuery.close();
            }
            if (rawQuery != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(str2, (String) null);
                sQLiteDatabase.update(str, contentValues, null, null);
                return;
            }
        } catch (SQLiteException e) {
        }
        sQLiteDatabase.execSQL(String.format("ALTER TABLE %s ADD COLUMN %s%s;", str, str2, str3));
    }

    private static void k(StringBuilder sb, String... strArr) {
        int length = strArr.length;
        boolean z = true;
        int i2 = 0;
        while (i2 < length) {
            String str = strArr[i2];
            if (!z) {
                StaggeredGridLayoutParams.append(", ");
            }
            StaggeredGridLayoutParams.append(str);
            i2++;
            z = false;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable, java.io.Closeable
    public final synchronized void close() {
        synchronized (ProtoLiteMessageBase) {
            int i2 = this.e - 1;
            this.e = i2;
            if (i2 == 0) {
                this.f = this.j.schedule(new Runnable() { // from class: bpd
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhenotypeDbHelper.this.i();
                    }
                }, PhenotypeApiServiceFlagsFacade.a.a().a(), TimeUnit.SECONDS);
            }
        }
    }

    final /* synthetic */ void i() {
        synchronized (ProtoLiteMessageBase) {
            if (this.e == 0) {
                if (this == d) {
                    super.close();
                    d = null;
                }
                if (this == c) {
                    super.close();
                    c = null;
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        super.onConfigure(sQLiteDatabase);
        sQLiteDatabase.enableWriteAheadLogging();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        PackagesDao.b(sQLiteDatabase);
        ApplicationStatesDao.b(sQLiteDatabase);
        MultiCommitApplicationStatesDao.b(sQLiteDatabase);
        LogSourcesDao.b(sQLiteDatabase);
        WeakExperimentIdsDao.a(sQLiteDatabase);
        ExperimentTokensDao.d(sQLiteDatabase);
        PhenotypePartitionsDao.a(sQLiteDatabase);
        sQLiteDatabase.execSQL(e("RequestTags", "user TEXT NOT NULL PRIMARY KEY", "bytesTag BLOB NOT NULL"));
        ApplicationTagsDao.b(sQLiteDatabase);
        CrossLoggedExperimentTokensDao.a(sQLiteDatabase);
        sQLiteDatabase.execSQL(e("ChangeCounts", "packageName TEXT NOT NULL PRIMARY KEY", "count INTEGER NOT NULL"));
        sQLiteDatabase.execSQL(e("DogfoodsToken", "key INTEGER NOT NULL PRIMARY KEY", "token BLOB"));
        sQLiteDatabase.execSQL(e("LastFetch", "key INTEGER NOT NULL PRIMARY KEY", "servertimestamp INTEGER NOT NULL"));
        PhenotypeFlagsDao.a(sQLiteDatabase);
        GenericDimensionsDao.a(sQLiteDatabase);
        LastSyncAfterRequestDao.a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i3 != 24 || i2 < 25) {
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT name FROM sqlite_master WHERE type ='table'", null);
            while (rawQuery.moveToNext()) {
                try {
                    if (!"android_metadata".equals(rawQuery.getString(0))) {
                        String valueOf = String.valueOf(rawQuery.getString(0));
                        sQLiteDatabase.execSQL(valueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(valueOf) : new String("DROP TABLE IF EXISTS "));
                    }
                } catch (Throwable th) {
                    if (rawQuery != null) {
                        try {
                            rawQuery.close();
                        } catch (Throwable th2) {
                        }
                    }
                    throw th;
                }
            }
            if (rawQuery != null) {
                rawQuery.close();
            }
            onCreate(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        String str;
        String str2;
        String str3;
        String str4;
        if (i2 >= 3 || i3 < 3) {
            str = "androidPackageName";
            str2 = "Packages";
        } else {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS Packages");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ApplicationStates");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS LogSources");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS WeakExperimentIds");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ExperimentTokens");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS Flags");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS RequestTags");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ApplicationTags");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS CrossLoggedExperimentTokens");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ChangeCounts");
            sQLiteDatabase.execSQL(e("Packages", "packageName TEXT NOT NULL PRIMARY KEY", "version INTEGER NOT NULL", "params BLOB", "weak INTEGER NOT NULL", "androidPackageName TEXT NOT NULL"));
            sQLiteDatabase.execSQL(d("Packages", "androidPackageName", "androidPackageName"));
            sQLiteDatabase.execSQL(e("ApplicationStates", "packageName TEXT NOT NULL PRIMARY KEY", "user TEXT NOT NULL", "version INTEGER NOT NULL", "patchable INTEGER"));
            String[] strArr = new String[2];
            strArr[0] = "logSourceName TEXT NOT NULL";
            String f = f("logSourceName", "packageName");
            strArr[1] = f.length() != 0 ? "packageName TEXT NOT NULL".concat(NavManeuverTypeEnum) : new String("packageName TEXT NOT NULL");
            sQLiteDatabase.execSQL(e("LogSources", strArr));
            sQLiteDatabase.execSQL(d("LogSources", "packageName", "packageName"));
            sQLiteDatabase.execSQL(e("WeakExperimentIds", "packageName TEXT NOT NULL", "experimentId INTEGER NOT NULL"));
            sQLiteDatabase.execSQL(d("WeakExperimentIds", "packageName", "packageName"));
            String[] strArr2 = new String[6];
            strArr2[0] = "packageName TEXT NOT NULL";
            strArr2[1] = "version INTEGER NOT NULL";
            strArr2[2] = "user TEXT NOT NULL";
            strArr2[3] = "isCommitted INTEGER NOT NULL";
            strArr2[4] = "experimentToken BLOB NOT NULL";
            String f2 = f("packageName", "version", "user", "isCommitted");
            str = "androidPackageName";
            strArr2[5] = f2.length() != 0 ? "serverToken TEXT NOT NULL".concat(f2) : new String("serverToken TEXT NOT NULL");
            sQLiteDatabase.execSQL(e("ExperimentTokens", strArr2));
            sQLiteDatabase.execSQL(d("ExperimentTokens", "committed", "packageName", "version", "user", "isCommitted"));
            String[] strArr3 = new String[12];
            strArr3[0] = "packageName TEXT NOT NULL";
            strArr3[1] = "version INTEGER NOT NULL";
            strArr3[2] = "flagType INTEGER NOT NULL";
            strArr3[3] = "partitionId INTEGER NOT NULL";
            strArr3[4] = "user TEXT NOT NULL";
            strArr3[5] = "name TEXT NOT NULL";
            strArr3[6] = "intVal INTEGER";
            strArr3[7] = "boolVal INTEGER";
            strArr3[8] = "floatVal REAL";
            strArr3[9] = "stringVal TEXT";
            strArr3[10] = "extensionVal BLOB";
            String f3 = f("packageName", "version", "flagType", "partitionId", "user", "name", "committed");
            strArr3[11] = f3.length() != 0 ? "committed INTEGER NOT NULL".concat(f3) : new String("committed INTEGER NOT NULL");
            sQLiteDatabase.execSQL(e("Flags", strArr3));
            sQLiteDatabase.execSQL(d("Flags", "committed", "packageName", "version", "user", "committed"));
            sQLiteDatabase.execSQL(e("RequestTags", "user TEXT NOT NULL PRIMARY KEY", "bytesTag BLOB NOT NULL"));
            String[] strArr4 = new String[5];
            strArr4[0] = "packageName TEXT NOT NULL";
            strArr4[1] = "version INTEGER NOT NULL";
            strArr4[2] = "partitionId INTEGER NOT NULL";
            strArr4[3] = "user TEXT NOT NULL";
            str2 = "Packages";
            String f4 = f("packageName", "version", "partitionId", "user");
            strArr4[4] = f4.length() != 0 ? "tag BLOB NOT NULL".concat(f4) : new String("tag BLOB NOT NULL");
            sQLiteDatabase.execSQL(e("ApplicationTags", strArr4));
            sQLiteDatabase.execSQL(e("CrossLoggedExperimentTokens", "fromPackageName TEXT NOT NULL", "fromVersion INTEGER NOT NULL", "fromUser TEXT NOT NULL", "toPackageName TEXT NOT NULL", "toVersion INTEGER NOT NULL", "isCommitted INTEGER NOT NULL", "token BLOB NOT NULL", "provenance INTEGER NOT NULL"));
            sQLiteDatabase.execSQL(d("CrossLoggedExperimentTokens", "apply", "fromPackageName", "fromVersion", "fromUser", "toPackageName", "toVersion", "isCommitted"));
            sQLiteDatabase.execSQL(d("CrossLoggedExperimentTokens", "remove", "toPackageName"));
            sQLiteDatabase.execSQL(e("ChangeCounts", "key INTEGER NOT NULL PRIMARY KEY", "count INTEGER NOT NULL"));
        }
        if (i2 < 4 && i3 >= 4) {
            sQLiteDatabase.execSQL(e("DogfoodsToken", "key INTEGER NOT NULL PRIMARY KEY", "token BLOB"));
        }
        if (i2 < 5 && i3 >= 5) {
            sQLiteDatabase.execSQL("ALTER TABLE ExperimentTokens ADD COLUMN configHash TEXT NOT NULL DEFAULT ''");
        }
        if (i2 < 6 && i3 >= 6) {
            sQLiteDatabase.execSQL(e("LastFetch", "key INTEGER NOT NULL PRIMARY KEY", "servertimestamp INTEGER NOT NULL"));
        }
        if (i2 < 7 && i3 >= 7) {
            String[] strArr5 = new String[2];
            strArr5[0] = "logSourceName TEXT NOT NULL";
            String f5 = f("logSourceName", "packageName");
            strArr5[1] = f5.length() != 0 ? "packageName TEXT NOT NULL".concat(f5) : new String("packageName TEXT NOT NULL");
            sQLiteDatabase.execSQL(e("LogSources_copy", strArr5));
            sQLiteDatabase.execSQL("INSERT INTO LogSources_copy (logSourceName, packageName) SELECT logSourceName, packageName FROM LogSources");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS LogSources");
            sQLiteDatabase.execSQL("ALTER TABLE LogSources_copy RENAME TO LogSources");
        }
        if (i2 < 8 && i3 >= 8) {
            sQLiteDatabase.execSQL("ALTER TABLE Packages ADD COLUMN isSynced DEFAULT 0");
        }
        if (i2 < 9 && i3 >= 9) {
            sQLiteDatabase.execSQL("ALTER TABLE Packages ADD COLUMN subscribedGcm INTEGER NOT NULL DEFAULT 0");
            sQLiteDatabase.execSQL(e("UnsubscribeGcmPackages", "packageName TEXT NOT NULL PRIMARY KEY"));
        }
        if (i2 < 10 && i3 >= 10) {
            String[] strArr6 = new String[10];
            strArr6[0] = "packageName TEXT NOT NULL";
            strArr6[1] = "user TEXT NOT NULL";
            strArr6[2] = "name TEXT NOT NULL";
            strArr6[3] = "flagType INTEGER NOT NULL";
            strArr6[4] = "intVal INTEGER";
            strArr6[5] = "boolVal INTEGER";
            strArr6[6] = "floatVal REAL";
            strArr6[7] = "stringVal TEXT";
            strArr6[8] = "extensionVal BLOB";
            String f6 = f("packageName", "user", "name", "committed");
            strArr6[9] = f6.length() != 0 ? "committed".concat(f6) : new String("committed");
            sQLiteDatabase.execSQL(e("FlagOverrides", strArr6));
        }
        if (i2 < 11 && i3 >= 11) {
            sQLiteDatabase.execSQL("ALTER TABLE ApplicationStates RENAME TO OldApplicationStates");
            sQLiteDatabase.execSQL(e("ApplicationStates", "packageName TEXT NOT NULL PRIMARY KEY", "user TEXT NOT NULL", "version INTEGER NOT NULL", "patchable INTEGER"));
            sQLiteDatabase.execSQL("INSERT INTO ApplicationStates(packageName,user,version,patchable) SELECT packageName,user,version,patchable FROM OldApplicationStates;");
            sQLiteDatabase.execSQL("DROP TABLE OldApplicationStates;");
        }
        if (i2 < 12 && i3 >= 12) {
            sQLiteDatabase.execSQL("UPDATE Packages SET weak = 1 WHERE packageName = 'com.google.android.gms.phenotype.core'");
        }
        if (i2 < 13 && i3 >= 13) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ChangeCounts");
            sQLiteDatabase.execSQL(e("ChangeCounts", "packageName TEXT NOT NULL PRIMARY KEY", "count INTEGER NOT NULL"));
        }
        if (i2 < 14 && i3 >= 14) {
            sQLiteDatabase.execSQL("ALTER TABLE ExperimentTokens ADD COLUMN servingVersion INTEGER NOT NULL DEFAULT 0");
        }
        if (i2 < 15 && i3 >= 15) {
            sQLiteDatabase.execSQL("ALTER TABLE Packages ADD COLUMN dynamicParams BLOB DEFAULT NULL");
        }
        if (i2 >= 16 || i3 < 16) {
            str3 = str;
            str4 = str2;
        } else {
            sQLiteDatabase.execSQL(e("GcmState", "packageName TEXT NOT NULL PRIMARY KEY", "isSubscribed INTEGER NOT NULL", "subscribeAfterTime INTEGER NOT NULL DEFAULT 0"));
            sQLiteDatabase.execSQL("INSERT OR REPLACE INTO GcmState(packageName, isSubscribed) SELECT packageName, 1 FROM Packages WHERE subscribedGcm = 1");
            sQLiteDatabase.execSQL("INSERT OR REPLACE INTO GcmState(packageName, isSubscribed) SELECT packageName, 1 FROM UnsubscribeGcmPackages");
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS UnsubscribeGcmPackages");
            sQLiteDatabase.execSQL("ALTER TABLE Packages RENAME TO OldPackages");
            str4 = str2;
            sQLiteDatabase.execSQL(e(str4, "packageName TEXT NOT NULL PRIMARY KEY", "version INTEGER NOT NULL", "params BLOB", "dynamicParams BLOB", "weak INTEGER NOT NULL", "androidPackageName TEXT NOT NULL", "isSynced INTEGER"));
            str3 = str;
            sQLiteDatabase.execSQL(d(str4, str3, str));
            sQLiteDatabase.execSQL("INSERT INTO Packages(packageName,version,params,dynamicParams,weak,androidPackageName,isSynced) SELECT packageName,version,params,dynamicParams,weak,androidPackageName,isSynced FROM OldPackages;");
            sQLiteDatabase.execSQL("DROP TABLE OldPackages;");
        }
        if (i2 < 17 && i3 >= 17) {
            sQLiteDatabase.execSQL("ALTER TABLE Packages ADD COLUMN serializedDeclarativeRegInfo BLOB DEFAULT NULL");
        }
        if (i2 < 18 && i3 >= 18) {
            sQLiteDatabase.execSQL(e("GenericDimensions", "packageName TEXT NOT NULL", "isolationkey TEXT NOT NULL DEFAULT ''", "namespace INTEGER NOT NULL", "instance INTEGER NOT NULL"));
            sQLiteDatabase.execSQL(d("GenericDimensions", "configPackageIsolationKey", "packageName", "isolationkey"));
            sQLiteDatabase.execSQL(d("LogSources", "packageName", "packageName"));
            sQLiteDatabase.execSQL(d(str4, str3, str3));
        }
        if (i2 < 19 && i3 >= 19) {
            sQLiteDatabase.execSQL("DROP TABLE GcmState;");
        }
        if (i2 < 20 && i3 >= 20) {
            sQLiteDatabase.execSQL("ALTER TABLE ExperimentTokens ADD COLUMN tokensTag BLOB DEFAULT NULL");
        }
        if (i2 < 21 && i3 >= 21) {
            String[] strArr7 = new String[3];
            strArr7[0] = "packageName TEXT NOT NULL";
            strArr7[1] = "user TEXT NOT NULL";
            String f7 = f("packageName", "user");
            strArr7[2] = f7.length() != 0 ? "version INTEGER NOT NULL".concat(f7) : new String("version INTEGER NOT NULL");
            sQLiteDatabase.execSQL(e("MultiCommitApplicationStates", strArr7));
        }
        if (i2 < 22 && i3 >= 22) {
            sQLiteDatabase.execSQL(e("LastSyncAfterRequest", "packageName TEXT NOT NULL PRIMARY KEY", "servingVersion INTEGER NOT NULL DEFAULT 0"));
            j(sQLiteDatabase, "ExperimentTokens", "flagsHash", " INTEGER DEFAULT NULL");
        }
        if (i2 < 23 && i3 >= 23) {
            j(sQLiteDatabase, str4, "configTier", " INTEGER DEFAULT NULL");
        }
        if (i2 < 24 && i3 >= 24) {
            j(sQLiteDatabase, str4, "baselineCl", " INTEGER DEFAULT NULL");
        }
        if (i2 >= 25 || i3 < 25) {
            return;
        }
        j(sQLiteDatabase, str4, "heterodyneInfo", " BLOB DEFAULT NULL");
    }

    public static void g(SQLiteDatabase sQLiteDatabase) {
        Method method;
        Method method2 = h;
        if (method2 == null || (method = i) == null) {
            sQLiteDatabase.beginTransaction();
            return;
        }
        try {
            method.invoke(method2.invoke(sQLiteDatabase, new Object[0]), 0, null, 0, null);
        } catch (Exception e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) g.b().g(ProtoFlagValueMessage)).h("com/google/android/gms/phenotype/core/common/PhenotypeDbHelper", "beginDeferredTransaction", 1830, "PhenotypeDbHelper.java")).n("Unable to use reflective deferred transaction");
            sQLiteDatabase.beginTransaction();
        }
    }
}
