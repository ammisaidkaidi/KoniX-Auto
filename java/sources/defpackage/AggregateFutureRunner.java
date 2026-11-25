package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AggregateFutureRunner extends CombinedFutureBase implements Runnable {
    private ListenableFuture a;

    public AggregateFutureRunner(ListenableFuture dagVar) {
        this.a = dagVar;
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final String a() {
        ListenableFuture dagVar = this.a;
        if (dagVar == null) {
            return null;
        }
        String obj = dagVar.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 11);
        StaggeredGridLayoutParams.append("delegate=[");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final void c() {
        this.a = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture dagVar = this.a;
        if (dagVar != null) {
            d(dagVar);
        }
    }
}
