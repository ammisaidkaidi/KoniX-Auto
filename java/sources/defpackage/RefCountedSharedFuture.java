package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RefCountedSharedFuture {
    public final SharedFutureInitRunnable a;
    public final SettableFuture d;
    public final AtomicLong b = new AtomicLong(b(Integer.MIN_VALUE, Integer.MIN_VALUE));
    public final AtomicReference c = new AtomicReference(null);
    private final AtomicReference e = new AtomicReference(null);
    private final Executor f = ViewCompatApi19Statics.m(czj.a);

    public RefCountedSharedFuture(FutureSupplier czbVar, Executor executor) {
        SettableFuture e = SettableFuture.e();
        this.d = e;
        SharedFutureInitRunnable cmtVar = new SharedFutureInitRunnable(czbVar, executor);
        this.a = cmtVar;
        e.aW(cmtVar, czj.a);
    }

    public static int a(long j) {
        return (int) (ProtoMessageTwoIntsAndFlagValue >>> 32);
    }

    public static long b(int i, int i2) {
        return (i2 & 4294967295L) | (NavInstructionTypeEnum << 32);
    }

    public final ListenableFuture c() {
        long j;
        final int a;
        if (this.d.isDone()) {
            return this.d;
        }
        do {
            j = this.b.get();
            a = a(ProtoMessageTwoIntsAndFlagValue);
        } while (!this.b.compareAndSet(j, b(a, ((int) j) + 1)));
        final SettableFuture e = SettableFuture.e();
        ListenableFuture dagVar = (ListenableFuture) this.e.getAndSet(ProtoFlagValueMessage);
        e.d(dagVar == null ? ProjectionIntentHelper.m(FutureFunctionWrappers.a(new FutureSupplier() { // from class: cmq
            @Override // defpackage.FutureSupplier
            public final ListenableFuture a() {
                return RefCountedSharedFuture.this.d(SingleStringProtoMessage);
            }
        }), czj.a) : CombinedFutureTask.e(dagVar, Throwable.class, FutureFunctionWrappers.b(new AsyncFunctionInterface() { // from class: cmr
            @Override // defpackage.AsyncFunctionInterface
            public final ListenableFuture a(Object obj) {
                return RefCountedSharedFuture.this.d(SingleStringProtoMessage);
            }
        }), this.f));
        final RefCountedListenableFuture cmuVar = new RefCountedListenableFuture(this, a);
        e.aW(new Runnable() { // from class: cms
            @Override // java.lang.Runnable
            public final void run() {
                RefCountedSharedFuture cmwVar = RefCountedSharedFuture.this;
                SettableFuture dasVar = e;
                RefCountedListenableFuture cmuVar2 = cmuVar;
                try {
                    cmwVar.d.k(ProjectionIntentHelper.o(dasVar));
                    cmuVar2.d(cmwVar.d);
                } catch (Throwable th) {
                    cmuVar2.d(dasVar);
                }
            }
        }, czj.a);
        return cmuVar;
    }

    public final ListenableFuture d(int i) {
        NonCancellationPropagatingFuture cmvVar;
        if (a(this.b.get()) > i) {
            return ProjectionIntentHelper.h();
        }
        NonCancellationPropagatingFuture cmvVar2 = new NonCancellationPropagatingFuture(NavInstructionTypeEnum);
        do {
            cmvVar = (NonCancellationPropagatingFuture) this.c.get();
            if (cmvVar != null && cmvVar.a > i) {
                return ProjectionIntentHelper.h();
            }
        } while (!this.c.compareAndSet(cmvVar, cmvVar2));
        if (a(this.b.get()) > i) {
            cmvVar2.cancel(true);
            this.c.compareAndSet(cmvVar2, null);
            return cmvVar2;
        }
        SharedFutureInitRunnable cmtVar = this.a;
        FutureSupplier czbVar = cmtVar.a;
        Executor executor = cmtVar.b;
        if (czbVar == null || executor == null) {
            cmvVar2.d(this.d);
        } else {
            cmvVar2.d(ProjectionIntentHelper.m(FutureFunctionWrappers.a(czbVar), executor));
        }
        return cmvVar2;
    }
}
