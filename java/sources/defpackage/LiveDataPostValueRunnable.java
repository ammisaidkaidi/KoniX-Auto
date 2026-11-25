package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LiveDataPostValueRunnable implements Runnable {
    final /* synthetic */ LiveData a;

    public LiveDataPostValueRunnable(LiveData zyVar) {
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
