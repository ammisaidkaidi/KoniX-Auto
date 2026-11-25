package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SettableFuture extends CombinedFutureBase {
    private SettableFuture() {
    }

    public static SettableFuture e() {
        return new SettableFuture();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    public final boolean d(ListenableFuture dagVar) {
        return super.d(dagVar);
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    public final boolean k(Object obj) {
        return super.k(obj);
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    public final boolean l(Throwable th) {
        return super.l(ActivityResultDispatchRunnable);
    }
}
