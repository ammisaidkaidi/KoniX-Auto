package defpackage;

import android.content.Context;
import java.io.File;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LazySqliteOpenHelper implements SqliteOpenHelperInterface {
    public final Object a = new Object();
    public FrameworkSqliteOpenHelper b;
    public boolean c;
    private final Context d;
    private final String e;
    private final SqliteOpenHelperCallback f;
    private final boolean g;

    public LazySqliteOpenHelper(Context context, String str, SqliteOpenHelperCallback aezVar, boolean z) {
        this.d = context;
        this.e = str;
        this.f = aezVar;
        this.g = z;
    }

    @Override // defpackage.SqliteOpenHelperInterface
    public final FrameworkSqliteDatabase a() {
        return b().c();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        b().close();
    }

    private final FrameworkSqliteOpenHelper b() {
        FrameworkSqliteOpenHelper afjVar;
        synchronized (this.a) {
            if (this.b == null) {
                FrameworkSqliteDatabase[] afhVarArr = new FrameworkSqliteDatabase[1];
                String str = this.e;
                if (str == null || !this.g) {
                    this.b = new FrameworkSqliteOpenHelper(this.d, str, afhVarArr, this.f);
                } else {
                    this.b = new FrameworkSqliteOpenHelper(this.d, new File(this.d.getNoBackupFilesDir(), this.e).getAbsolutePath(), afhVarArr, this.f);
                }
                this.b.setWriteAheadLoggingEnabled(this.c);
            }
            afjVar = this.b;
        }
        return afjVar;
    }
}
