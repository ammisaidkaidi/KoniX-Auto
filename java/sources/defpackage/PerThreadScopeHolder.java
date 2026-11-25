package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PerThreadScopeHolder extends ThreadLocal {
    @Override // java.lang.ThreadLocal
    protected final /* bridge */ /* synthetic */ Object initialValue() {
        GoogleSignatureVerifier.h();
        CloseScopeState cnqVar = new CloseScopeState();
        Thread currentThread = Thread.currentThread();
        synchronized (cnr.a) {
            ClosingScopeRegistry.a.put(currentThread, cnqVar);
        }
        return cnqVar;
    }
}
