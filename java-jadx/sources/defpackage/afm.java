package defpackage;

import android.database.sqlite.SQLiteProgram;

/* compiled from: PG */
/* loaded from: classes.dex */
public class afm implements afe {
    public final SQLiteProgram a;

    public afm(SQLiteProgram sQLiteProgram) {
        this.a = sQLiteProgram;
    }

    @Override // defpackage.afe
    public final void c(int i, byte[] bArr) {
        this.a.bindBlob(i, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
    }

    @Override // defpackage.afe
    public final void d(int i, long j) {
        this.a.bindLong(i, j);
    }

    @Override // defpackage.afe
    public final void e(int i) {
        this.a.bindNull(i);
    }

    @Override // defpackage.afe
    public final void f(int i, String str) {
        this.a.bindString(i, str);
    }
}
