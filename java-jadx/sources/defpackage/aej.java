package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class aej {
    private final AtomicBoolean a = new AtomicBoolean(false);
    private final aee b;
    private volatile afn c;

    public aej(aee aeeVar) {
        this.b = aeeVar;
    }

    private final afn a() {
        return this.b.j(c());
    }

    protected abstract String c();

    public final afn d() {
        this.b.d();
        if (!this.a.compareAndSet(false, true)) {
            return a();
        }
        if (this.c == null) {
            this.c = a();
        }
        return this.c;
    }

    public final void e(afn afnVar) {
        if (afnVar == this.c) {
            this.a.set(false);
        }
    }
}
