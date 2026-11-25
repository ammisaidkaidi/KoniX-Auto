package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AbstractCatchingFutureImpl extends WhenAllSucceedFuture {
    private TransformFutureBase c;

    public AbstractCatchingFutureImpl(ImmutableCollection cqaVar, boolean z, Executor executor, FutureSupplier czbVar) {
        super(cqaVar, z, false);
        this.c = new TransformFutureSyncCallback(this, czbVar, executor);
        r();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final void i() {
        TransformFutureBase czhVar = this.c;
        if (czhVar != null) {
            czhVar.h();
        }
    }

    @Override // defpackage.WhenAllSucceedFuture
    public final void n(int i, Object obj) {
    }

    @Override // defpackage.WhenAllSucceedFuture
    public final void q() {
        TransformFutureBase czhVar = this.c;
        if (czhVar != null) {
            czhVar.f();
        }
    }

    @Override // defpackage.WhenAllSucceedFuture
    public final void s(int i) {
        super.s(NavInstructionTypeEnum);
        if (NavInstructionTypeEnum == 1) {
            this.c = null;
        }
    }

    public AbstractCatchingFutureImpl(ImmutableCollection cqaVar, boolean z, Executor executor, Callable callable) {
        super(cqaVar, z, false);
        this.c = new TransformFutureAsyncCallback(this, callable, executor);
        r();
    }
}
