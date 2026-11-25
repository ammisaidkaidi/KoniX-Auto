package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CloseableAsyncFunction implements AsyncFunctionInterface {
    final /* synthetic */ TrackedCloseable a;
    final /* synthetic */ AsyncFunctionInterface b;

    public CloseableAsyncFunction(TrackedCloseable cnjVar, AsyncFunctionInterface czcVar) {
        this.a = cnjVar;
        this.b = czcVar;
    }

    @Override // defpackage.AsyncFunctionInterface
    public final ListenableFuture a(Object obj) {
        TrackedCloseable c = ClosingScopeRegistry.c(this.a);
        try {
            return this.b.a(obj);
        } finally {
            ClosingScopeRegistry.c(PhenotypeFlagMessage);
        }
    }

    public final String toString() {
        String valueOf = String.valueOf(this.b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
        StaggeredGridLayoutParams.append("propagating=[");
        StaggeredGridLayoutParams.append(valueOf);
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }
}
