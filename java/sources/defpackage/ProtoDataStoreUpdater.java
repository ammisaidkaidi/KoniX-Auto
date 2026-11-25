package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ProtoDataStoreUpdater implements AsyncFunctionInterface {
    private final /* synthetic */ int c;
    public static final /* synthetic */ ProtoDataStoreUpdater b = new ProtoDataStoreUpdater(1);
    public static final /* synthetic */ ProtoDataStoreUpdater a = new ProtoDataStoreUpdater(0);

    private /* synthetic */ ciu(int i) {
        this.c = i;
    }

    @Override // defpackage.AsyncFunctionInterface
    public final ListenableFuture a(Object obj) {
        switch (this.c) {
            case 0:
                return ProjectionIntentHelper.j("");
            default:
                GoogleApiExceptionBase bjzVar = (GoogleApiExceptionBase) obj;
                throw new PhenotypeCommitException(bjzVar.a.e, bjzVar.getMessage(), bjzVar);
        }
    }
}
