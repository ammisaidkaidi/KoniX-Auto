package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureWaiterNode {
    static final FutureWaiterNode a = new FutureWaiterNode(null);
    volatile Thread b;
    volatile FutureWaiterNode c;

    public FutureWaiterNode() {
        GuavaAbstractFuture_ame.b.b(this, Thread.currentThread());
    }

    public FutureWaiterNode(byte[] bArr) {
    }

    final void a(FutureWaiterNode amdVar) {
        GuavaAbstractFuture_ame.b.a(this, amdVar);
    }
}
