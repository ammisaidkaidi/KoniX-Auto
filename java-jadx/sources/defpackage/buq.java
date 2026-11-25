package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class buq extends ThreadLocal {
    final /* synthetic */ but a;

    public buq(but butVar) {
        this.a = butVar;
    }

    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Object initialValue() {
        buv buvVar = new buv();
        Thread currentThread = Thread.currentThread();
        synchronized (this.a.a) {
            this.a.a.put(currentThread, buvVar);
        }
        return buvVar;
    }
}
