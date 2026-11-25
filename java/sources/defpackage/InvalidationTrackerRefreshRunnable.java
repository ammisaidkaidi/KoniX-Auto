package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.locks.Lock;

/* compiled from: PG */
/* loaded from: classes.dex */
final class InvalidationTrackerRefreshRunnable implements Runnable {
    final /* synthetic */ InvalidationTracker a;

    public InvalidationTrackerRefreshRunnable(InvalidationTracker aebVar) {
        this.a = aebVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00eb A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        HashSet hashSet;
        InvalidationTracker aebVar;
        FrameworkSqliteDatabase afhVar;
        Throwable th;
        Lock c = this.a.c.c();
        c.lock();
        try {
            try {
                aebVar = this.a;
                RoomDatabaseBase aeeVar = aebVar.c;
                PrimesConfigHolder xtVar = aeeVar.i;
                afhVar = aeeVar.h;
            } finally {
                c.unlock();
            }
        } catch (SQLiteException | IllegalStateException e) {
            e = e;
            hashSet = null;
        }
        if (afhVar != null && afhVar.j()) {
            if (!aebVar.e) {
                aebVar.c.b.a();
            }
            if (!aebVar.e) {
                Log.e("ROOM", "database is not initialized even though it is open");
            } else if (this.a.d.compareAndSet(true, false) && !this.a.c.i()) {
                FrameworkSqliteDatabase a = this.a.c.b.a();
                a.e();
                try {
                    hashSet = new HashSet();
                    Cursor k = this.a.c.k(new SimpleSqliteQuery("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"));
                    while (k.moveToNext()) {
                        try {
                            hashSet.add(Integer.valueOf(k.getInt(0)));
                        } catch (Throwable th2) {
                            k.close();
                            throw th2;
                        }
                    }
                    k.close();
                    if (!hashSet.isEmpty()) {
                        this.a.i.a();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    hashSet = null;
                }
                try {
                    a.h();
                    try {
                        a.f();
                    } catch (SQLiteException e2) {
                        e = e2;
                        Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                        if (hashSet == null) {
                            return;
                        } else {
                            return;
                        }
                    } catch (IllegalStateException e3) {
                        e = e3;
                        Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                        if (hashSet == null) {
                        }
                    }
                    if (hashSet == null || hashSet.isEmpty()) {
                        return;
                    }
                    synchronized (this.a.g) {
                        Iterator it = this.a.g.iterator();
                        if (it.hasNext()) {
                            throw null;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    try {
                        a.f();
                        throw th;
                    } catch (SQLiteException e4) {
                        e = e4;
                        Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                        if (hashSet == null) {
                        }
                    } catch (IllegalStateException e5) {
                        e = e5;
                        Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e);
                        if (hashSet == null) {
                        }
                    }
                }
            }
        }
    }
}
