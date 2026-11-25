package defpackage;

import android.database.sqlite.SQLiteStatement;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class afn extends afm implements afe {
    public final SQLiteStatement b;

    public afn(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.b = sQLiteStatement;
    }

    public final void a() {
        this.b.executeUpdateDelete();
    }
}
