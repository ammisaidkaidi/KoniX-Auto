package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RefCountedListenableFuture extends GuavaAbstractFuture_cyp {
    private RefCountedSharedFuture a;
    private final int b;

    public RefCountedListenableFuture(RefCountedSharedFuture cmwVar, int i) {
        this.a = cmwVar;
        this.b = i;
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final String a() {
        FutureSupplier czbVar;
        RefCountedSharedFuture cmwVar = this.a;
        if (cmwVar == null || (czbVar = cmwVar.a.a) == null) {
            return null;
        }
        String obj = czbVar.toString();
        StringBuilder sb = new StringBuilder(obj.length() + 11);
        StaggeredGridLayoutParams.append("callable=[");
        StaggeredGridLayoutParams.append(obj);
        StaggeredGridLayoutParams.append("]");
        String sb2 = StaggeredGridLayoutParams.toString();
        NonCancellationPropagatingFuture cmvVar = (NonCancellationPropagatingFuture) this.a.c.get();
        if (cmvVar == null) {
            return sb2;
        }
        String obj2 = cmvVar.toString();
        StringBuilder sb3 = new StringBuilder(sb2.length() + 10 + obj2.length());
        sb3.append(sb2);
        sb3.append(", trial=[");
        sb3.append(obj2);
        sb3.append("]");
        return sb3.toString();
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final void c() {
        long j;
        int i;
        int a;
        NonCancellationPropagatingFuture cmvVar;
        RefCountedSharedFuture cmwVar = this.a;
        this.a = null;
        if (cmwVar == null) {
            return;
        }
        do {
            j = cmwVar.b.get();
            i = (int) j;
            a = RefCountedSharedFuture.a(ProtoMessageTwoIntsAndFlagValue);
            if (NavInstructionTypeEnum == Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(33);
                StaggeredGridLayoutParams.append("Refcount is: ");
                StaggeredGridLayoutParams.append(ProtoMessageTwoIntsAndFlagValue);
                throw new AssertionError(StaggeredGridLayoutParams.toString());
            }
            if (NavInstructionTypeEnum == -2147483647) {
                a++;
            }
        } while (!cmwVar.b.compareAndSet(j, RefCountedSharedFuture.b(a, i - 1)));
        if (NavInstructionTypeEnum == -2147483647) {
            do {
                cmvVar = (NonCancellationPropagatingFuture) cmwVar.c.get();
                if (cmvVar == null || cmvVar.a > this.b) {
                    return;
                } else {
                    cmvVar.cancel(true);
                }
            } while (!cmwVar.c.compareAndSet(cmvVar, null));
        }
    }

    @Override // defpackage.GuavaAbstractFuture_cyp
    protected final boolean d(ListenableFuture dagVar) {
        return super.d(dagVar);
    }
}
