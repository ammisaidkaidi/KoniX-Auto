package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class NonCancellationPropagatingFuture extends GuavaAbstractFuture_cyp {
    public final int a;

    public NonCancellationPropagatingFuture(int i) {
        this.a = i;
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final boolean d(ListenableFuture dagVar) {
        return super.d(dagVar);
    }
}
