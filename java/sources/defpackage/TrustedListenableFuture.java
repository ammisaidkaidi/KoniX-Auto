package defpackage;

import java.util.concurrent.Future;

/* compiled from: PG */
/* loaded from: classes.dex */
public class TrustedListenableFuture extends AbstractFutureWithListeners {
    public final ListenableFuture a;

    protected TrustedListenableFuture(ListenableFuture dagVar) {
        this.a = dagVar;
    }

    @Override // defpackage.AbstractFutureWithListeners
    protected final ListenableFuture a() {
        return this.a;
    }

    @Override // defpackage.AbstractFutureWithListeners, defpackage.ForwardingObject
    protected final /* synthetic */ Object b() {
        return this.a;
    }

    @Override // defpackage.AbstractFutureWithListeners
    protected final /* synthetic */ Future c() {
        return this.a;
    }
}
