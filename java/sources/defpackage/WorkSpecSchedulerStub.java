package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkSpecSchedulerStub implements WorkOperationStateConstants {
    private final MutableLiveData c = new MutableLiveData();
    private final GuavaAbstractFuture_ame d = GuavaAbstractFuture_ame.h();

    public WorkSpecSchedulerStub() {
        a(agv.b);
    }

    public final void a(GuavaMapEntryChecksUtil ezVar) {
        this.c.h(ezVar);
        if (ezVar instanceof WorkOperationSuccessState) {
            this.d.e((WorkOperationSuccessState) ezVar);
        } else if (ezVar instanceof WorkOperationFailureState) {
            this.d.f(((WorkOperationFailureState) ezVar).a);
        }
    }
}
