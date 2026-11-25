package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class RoomSharedSqliteStatement {
    private final AtomicBoolean a = new AtomicBoolean(false);
    private final RoomDatabaseBase b;
    private volatile FrameworkSqliteStatement c;

    public RoomSharedSqliteStatement(RoomDatabaseBase aeeVar) {
        this.b = aeeVar;
    }

    private final FrameworkSqliteStatement a() {
        return this.b.j(c());
    }

    protected abstract String c();

    public final FrameworkSqliteStatement d() {
        this.b.d();
        if (!this.a.compareAndSet(false, true)) {
            return a();
        }
        if (this.c == null) {
            this.c = a();
        }
        return this.c;
    }

    public final void e(FrameworkSqliteStatement afnVar) {
        if (afnVar == this.c) {
            this.a.set(false);
        }
    }
}
