package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cmd implements cmh {
    final /* synthetic */ Thread a;

    public cmd(Thread thread) {
        this.a = thread;
    }

    @Override // defpackage.cmh
    public final void a() {
        this.a.interrupt();
        this.a.join();
    }
}
