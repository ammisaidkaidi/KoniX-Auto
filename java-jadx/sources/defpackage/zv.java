package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class zv implements Runnable {
    final /* synthetic */ zy a;

    public zv(zy zyVar) {
        this.a = zyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        synchronized (this.a.b) {
            obj = this.a.g;
            this.a.g = zy.a;
        }
        this.a.g(obj);
    }
}
