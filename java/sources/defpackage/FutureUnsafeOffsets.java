package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FutureUnsafeOffsets {
    static final FutureUnsafeOffsets a = new FutureUnsafeOffsets(null);
    volatile FutureUnsafeOffsets next;
    volatile Thread thread;

    public FutureUnsafeOffsets() {
        GuavaAbstractFuture_cyp.e.b(this, Thread.currentThread());
    }

    public FutureUnsafeOffsets(byte[] bArr) {
    }

    final void a(FutureUnsafeOffsets cyoVar) {
        GuavaAbstractFuture_cyp.e.a(this, cyoVar);
    }
}
