package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FontCallbackDispatchRunnable implements Runnable {
    final /* synthetic */ SimpleCallbackInterfaceGc a;
    final /* synthetic */ Object b;

    public FontCallbackDispatchRunnable(SimpleCallbackInterfaceGc gcVar, Object obj) {
        this.a = gcVar;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.a(this.b);
    }
}
