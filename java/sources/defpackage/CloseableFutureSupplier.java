package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CloseableFutureSupplier implements FutureSupplier {
    final /* synthetic */ TrackedCloseable a;
    final /* synthetic */ FutureSupplier b;

    public CloseableFutureSupplier(TrackedCloseable cnjVar, FutureSupplier czbVar) {
        this.a = cnjVar;
        this.b = czbVar;
    }

    @Override // defpackage.FutureSupplier
    public final ListenableFuture a() {
        TrackedCloseable c = ClosingScopeRegistry.c(this.a);
        try {
            return this.b.a();
        } finally {
            ClosingScopeRegistry.c(PhenotypeFlagMessage);
        }
    }

    public final String toString() {
        String obj = this.b.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 14);
        StaggeredGridLayoutParams.append("propagating=[");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }
}
