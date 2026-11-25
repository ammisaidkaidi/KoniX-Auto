package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SynchronizedObjectPool extends SimpleObjectPool {
    private final Object a;

    public SynchronizedObjectPool() {
        super(10);
        this.a = new Object();
    }

    @Override // defpackage.SimpleObjectPool
    public final Object a() {
        Object a;
        synchronized (this.a) {
            a = super.a();
        }
        return a;
    }

    @Override // defpackage.SimpleObjectPool
    public final boolean b(Object obj) {
        boolean b;
        synchronized (this.a) {
            b = super.b(obj);
        }
        return b;
    }
}
