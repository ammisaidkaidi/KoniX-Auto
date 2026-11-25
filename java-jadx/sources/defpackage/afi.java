package defpackage;

import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import android.util.Pair;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class afi implements DatabaseErrorHandler {
    final /* synthetic */ afh[] a;

    public afi(afh[] afhVarArr) {
        this.a = afhVarArr;
    }

    @Override // android.database.DatabaseErrorHandler
    public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
        String c;
        afh b = afj.b(this.a, sQLiteDatabase);
        Log.e("SupportSQLite", "Corruption reported by sqlite on database: ".concat(String.valueOf(b.c())));
        if (b.j()) {
            List<Pair<String, String>> list = null;
            try {
                try {
                    list = b.a.getAttachedDbs();
                } catch (SQLiteException e) {
                }
                try {
                    b.close();
                } catch (IOException e2) {
                }
                if (list != null) {
                    Iterator<Pair<String, String>> it = list.iterator();
                    while (it.hasNext()) {
                        aez.a((String) it.next().second);
                    }
                    return;
                }
                c = b.c();
            } catch (Throwable th) {
                if (list != null) {
                    Iterator<Pair<String, String>> it2 = list.iterator();
                    while (it2.hasNext()) {
                        aez.a((String) it2.next().second);
                    }
                } else {
                    aez.a(b.c());
                }
                throw th;
            }
        } else {
            c = b.c();
        }
        aez.a(c);
    }
}
