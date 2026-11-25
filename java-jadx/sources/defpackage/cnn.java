package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cnn extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Object initialValue() {
        bjq.h();
        cnq cnqVar = new cnq();
        Thread currentThread = Thread.currentThread();
        synchronized (cnr.a) {
            cnr.a.put(currentThread, cnqVar);
        }
        return cnqVar;
    }
}
