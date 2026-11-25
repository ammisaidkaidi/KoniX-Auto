package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PG */
/* loaded from: classes.dex */
public final class FrameworkSqliteOpenHelper extends SQLiteOpenHelper {
    final FrameworkSqliteDatabase[] a;
    final SqliteOpenHelperCallback b;
    private boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (TimerMetricServiceFactory_can break code semantics) */
    public FrameworkSqliteOpenHelper(Context context, String str, FrameworkSqliteDatabase[] afhVarArr, SqliteOpenHelperCallback aezVar) {
        super(context, str, null, 12, new SqliteCorruptionErrorHandler(afhVarArr));
        int i = aezVar.a;
        this.b = aezVar;
        this.a = afhVarArr;
    }

    static FrameworkSqliteDatabase b(FrameworkSqliteDatabase[] afhVarArr, SQLiteDatabase sQLiteDatabase) {
        FrameworkSqliteDatabase afhVar = afhVarArr[0];
        if (afhVar != null && afhVar.a == sQLiteDatabase) {
            return afhVar;
        }
        FrameworkSqliteDatabase afhVar2 = new FrameworkSqliteDatabase(sQLiteDatabase);
        afhVarArr[0] = afhVar2;
        return afhVar2;
    }

    final FrameworkSqliteDatabase a(SQLiteDatabase sQLiteDatabase) {
        return b(this.a, sQLiteDatabase);
    }

    final synchronized FrameworkSqliteDatabase c() {
        this.c = false;
        SQLiteDatabase writableDatabase = super.getWritableDatabase();
        if (!this.c) {
            return a(writableDatabase);
        }
        close();
        return c();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
    public final synchronized void close() {
        super.close();
        this.a[0] = null;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        SqliteOpenHelperCallback aezVar = this.b;
        FrameworkSqliteDatabase a = a(sQLiteDatabase);
        Cursor b = a.b("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = b.moveToFirst() ? b.getInt(0) == 0 : false;
            b.close();
            aezVar.c.b(SingleStringProtoMessage);
            if (!z) {
                SchemaValidationResult a2 = aezVar.c.a(SingleStringProtoMessage);
                if (!a2.a) {
                    throw new IllegalStateException("Pre-packaged database has an invalid schema: ".concat(String.valueOf(a2.b)));
                }
            }
            SqliteOpenHelperCallback.c(SingleStringProtoMessage);
            WorkDatabaseImpl ahwVar = (WorkDatabaseImpl) aezVar.c;
            List list = ahwVar.a.e;
            if (list != null) {
                int size = list.size();
                for (int i = 0; NavInstructionTypeEnum < size; i++) {
                }
            }
        } catch (Throwable th) {
            b.close();
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.c = true;
        this.b.b(a(sQLiteDatabase), i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x005f  */
    @Override // android.database.sqlite.SQLiteOpenHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        boolean z;
        InvalidationTracker aebVar;
        if (this.c) {
            return;
        }
        SqliteOpenHelperCallback aezVar = this.b;
        FrameworkSqliteDatabase a = a(sQLiteDatabase);
        Cursor b = a.b("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            if (b.moveToFirst()) {
                if (b.getInt(0) != 0) {
                    z = true;
                    b.close();
                    if (IcuMessageFormat) {
                        SchemaValidationResult a2 = aezVar.c.a(SingleStringProtoMessage);
                        if (!a2.a) {
                            throw new IllegalStateException("Pre-packaged database has an invalid schema: ".concat(String.valueOf(a2.b)));
                        }
                        SqliteOpenHelperCallback.c(SingleStringProtoMessage);
                    } else {
                        Cursor a3 = a.a(new SimpleSqliteQuery("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
                        try {
                            String string = a3.moveToFirst() ? a3.getString(0) : null;
                            a3.close();
                            if (!aezVar.d.equals(string) && !aezVar.e.equals(string)) {
                                throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
                            }
                        } catch (Throwable th) {
                            a3.close();
                            throw th;
                        }
                    }
                    WorkDatabaseImpl ahwVar = (WorkDatabaseImpl) aezVar.c;
                    ahwVar.a.h = a;
                    a.g("PRAGMA foreign_keys = ON");
                    aebVar = ahwVar.a.c;
                    synchronized (aebVar) {
                        if (aebVar.e) {
                            Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                        } else {
                            a.g("PRAGMA temp_store = MEMORY;");
                            a.g("PRAGMA recursive_triggers='ON';");
                            a.g("CREATE TEMP TABLE room_table_modification_log(table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                            aebVar.a(SingleStringProtoMessage);
                            aebVar.i = a.k("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1 ");
                            aebVar.e = true;
                        }
                    }
                    List list = ahwVar.a.e;
                    if (list != null) {
                        int size = list.size();
                        for (int i = 0; NavInstructionTypeEnum < size; i++) {
                            ((ProtoTextFormatPrinterUtil) ahwVar.a.e.get(NavInstructionTypeEnum)).e(SingleStringProtoMessage);
                        }
                    }
                    aezVar.b = null;
                    return;
                }
            }
            z = false;
            b.close();
            if (IcuMessageFormat) {
            }
            WorkDatabaseImpl ahwVar2 = (WorkDatabaseImpl) aezVar.c;
            ahwVar2.a.h = a;
            a.g("PRAGMA foreign_keys = ON");
            aebVar = ahwVar2.a.c;
            synchronized (aebVar) {
            }
        } catch (Throwable th2) {
            b.close();
            throw th2;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.c = true;
        this.b.b(a(sQLiteDatabase), i, i2);
    }
}
