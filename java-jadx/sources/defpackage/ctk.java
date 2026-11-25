package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ctk implements Runnable {
    final /* synthetic */ ctj a;
    final /* synthetic */ ctl b;

    public ctk(ctl ctlVar, ctj ctjVar) {
        this.b = ctlVar;
        this.a = ctjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a.remove(this.a);
    }
}
