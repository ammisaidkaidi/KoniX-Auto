package defpackage;

import android.database.Cursor;
import android.os.Looper;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class RoomDatabaseBase {
    public Executor a;
    public SqliteOpenHelperInterface b;
    public final InvalidationTracker c;
    public boolean d;

    @Deprecated
    public List e;
    protected final Map f;
    public final Map g;

    @Deprecated
    public volatile FrameworkSqliteDatabase h;
    public PrimesConfigHolder i;
    private final ReentrantReadWriteLock j = new ReentrantReadWriteLock();
    private final ThreadLocal k = new ThreadLocal();

    public RoomDatabaseBase() {
        DesugarCollections.synchronizedMap(new HashMap());
        this.c = a();
        this.g = new HashMap();
        this.f = new HashMap();
    }

    public static final Object l(Class cls, SqliteOpenHelperInterface afdVar) {
        if (GalTransportThread.isInstance(afdVar)) {
            return afdVar;
        }
        return null;
    }

    protected abstract InvalidationTracker a();

    protected abstract SqliteOpenHelperInterface b(RoomDatabaseBuilder adxVar);

    final Lock c() {
        return this.j.readLock();
    }

    public final void d() {
        if (!this.d && Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void e() {
        if (!i() && this.k.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public final void f() {
        d();
        d();
        FrameworkSqliteDatabase a = this.b.a();
        this.c.a(SingleStringProtoMessage);
        if (a.a.isWriteAheadLoggingEnabled()) {
            a.e();
        } else {
            a.d();
        }
    }

    @Deprecated
    public final void g() {
        this.b.a().f();
        if (i()) {
            return;
        }
        InvalidationTracker aebVar = this.c;
        if (aebVar.d.compareAndSet(false, true)) {
            PrimesConfigHolder xtVar = aebVar.j;
            aebVar.c.a.execute(aebVar.h);
        }
    }

    @Deprecated
    public final void h() {
        this.b.a().h();
    }

    public final boolean i() {
        return this.b.a().i();
    }

    public final FrameworkSqliteStatement j(String str) {
        d();
        e();
        return this.b.a().k(str);
    }

    public final Cursor k(SqliteQueryInterface affVar) {
        d();
        e();
        return this.b.a().a(affVar);
    }
}
