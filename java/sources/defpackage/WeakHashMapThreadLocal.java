package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WeakHashMapThreadLocal extends ThreadLocal {
    final /* synthetic */ ThreadStateTracker a;

    public WeakHashMapThreadLocal(ThreadStateTracker butVar) {
        this.a = butVar;
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Object initialValue() {
        ThreadStateSampleBuffer buvVar = new ThreadStateSampleBuffer();
        Thread currentThread = Thread.currentThread();
        synchronized (this.a.a) {
            this.a.a.put(currentThread, buvVar);
        }
        return buvVar;
    }
}
