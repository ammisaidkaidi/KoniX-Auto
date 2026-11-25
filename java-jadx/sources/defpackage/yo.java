package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class yo implements Runnable {
    final /* synthetic */ gc a;
    final /* synthetic */ Object b;

    public yo(gc gcVar, Object obj) {
        this.a = gcVar;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.a(this.b);
    }
}
